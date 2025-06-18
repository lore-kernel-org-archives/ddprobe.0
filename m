Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272102904
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750212594; cv=none; b=bD0zA41iI7ejuhgEfnc7DhqXLjlVhz8SJa6Fd+wSW87kFDounutNqutiEL63q14xm09VDhnE8FhZeBLKsmoliH4Jc5u+Np+KUOqpIzd6C1rHVUppfZV67dPavZHYVQYGfVjkImT0C6EuVPonyoG2fmQWydWI4vO8TDTNK2LKjgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750212594; c=relaxed/simple;
	bh=Layrr3lfKexsjE2TApdeop7cVn75EKqMeTP0QXEGl1g=;
	h=To:Subject:From:Message-Id:Date; b=mhfxsflWbWcFpcxg/hDlg9ws/ZOSpL7C1z3BGT/XpcY3bNl81F234QG/qBB3lemdH0/WZkGBWN0QLExHy4pzQ6BVTOemZAVW98wDionGhdwte6jsq2SiQ971B+qKiEYwc2t9lxFHxK0nTVknMOZGMJC2ae2214ZQzb/vU1XcXlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbuagMd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbuagMd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A9DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750212593;
	bh=Layrr3lfKexsjE2TApdeop7cVn75EKqMeTP0QXEGl1g=;
	h=To:Subject:From:Date:From;
	b=dbuagMd+o4h68/qv7l5QG1wbh6CBd2lJTE7dPJ6n3k4XqlYUOaYMdhydOkehsizDP
	 EOXmbk6A62pmcKKu0SqARGmUScEG/K1GVayUJoCjViulUY8Ehj1tfrW9UHu3ybtxv5
	 pV/BnDro055z1XVNA/+sImoHAS5zWRWPyyQjKJNeBpACrkcYpiiPKsJd33Bi9bQ1RQ
	 z0cdv40Qj+IWagzyRd1XeuhGdKtphaJrd/c8SoF4S40SEoxJHVvoFN61UWTwLdPzcV
	 2PtlcDlhFKvZ02dhzQS/ll4jrtRpHxg4UGQTb11oVOLcbn44+qSPJjJYfUoSvqgFst
	 1K59O/fNKKU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE6C71136
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021259357.32554.3124741063070973923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8736e9fa993f029676b9d6658ba9732f87aa8ddd70984f7e1760a71c3e735db5
Date: Wed, 18 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750212593
