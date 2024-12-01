Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3999EA31
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733015154; cv=none; b=RI+yCi3nckAEcuSVIVTb/482+xq9cu+5dLKxKnHXGzHB7nhAmwF46ArLPE2DgsmdrL7VXKxTvKLofFpxer84WrZehhOx1PdLkKibZtMq4FOZ2F1i0HiJTCWQP1SMC9pyhq00L51FY+V75IWmouCMtOZAb9HpJsY/jmAG192oRvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733015154; c=relaxed/simple;
	bh=Sy9YCK9Z19RngUUjN9ewvjDgRiiHJDIsNStzh+ov4ag=;
	h=To:Subject:From:Message-Id:Date; b=dcE9ugFfINFuaZ6SxprBBXTzTOMJAKCQITKU9Hh0x8SlDdgrilClKjq5vQpv62i2w2QC3R94sF6s+P3CmWh/luqZelchu1iT3UCEK+VCkeCYni6TUrnQTMbC3uzZo07gKwsSIxLmCSczo4GG3KAqcZHuiCPjIxeiKUMzeI6UuOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJePefQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJePefQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC09C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733015153;
	bh=Sy9YCK9Z19RngUUjN9ewvjDgRiiHJDIsNStzh+ov4ag=;
	h=To:Subject:From:Date:From;
	b=pJePefQGq0iy1DuhJbmDkrbQpOCHPsxDcxtGPovzx2Hbsc9106HntD+oXCDRE47Xp
	 5y7zFV5wkyJQMfEm/7vettan+9IG/vTK5PLInNQTdYfZmyXKQkVH3tTz7N4ncZnVnU
	 /8Ydhn09H2MG557HSeViKZmJ1rD33f54n5YE8wdVpLwW1iHdSZKsqu/QRp77akZOVN
	 grBdSocL2kcM3ZH08Odsf3xWfuYTT7gs1oWJiTwUMJuiBHBoAy6l+ri+ZI69Czc2Kr
	 xNKjeILZSthsa6k0P6/ka3gvjtVRaNDAdPmwGLMKblgwedbIUCPab/8sBe4ti3cwIj
	 45JonwajXLLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93387D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301515359.24568.4718068140758061918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf732f7b1fcff0e61f37d07e5f1dd2573ee356d04cff79171d41ffe56fc0712
Date: Sun, 01 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733015153
