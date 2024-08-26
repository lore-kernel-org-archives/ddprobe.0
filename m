Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE1A1714B2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724675754; cv=none; b=I85TwLvPh7iJrSkP9uwzY5GmguVrwtFltf+S1mAn9I2T3C+Hnlx5A19AUCvDgapCtVI826JZBvFOwJ8zrLTt3SsQLS0rROuRyW/i9bB0FnKoEw1VvpMUyTOx2XoQ408qGKmEjJKOxyXeaCuC+AVXkDsMIlRRSxxUxJTPaWrM5pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724675754; c=relaxed/simple;
	bh=CSISsF3UazMRyo5sBFQc7lAdWPWoZg7G36nWBuriYFY=;
	h=To:Subject:From:Message-Id:Date; b=p9Elfyoyq71ohkOffmlQRKb10BJQ6M2dq9ZjhzJe9pm/vB/+VPvoYPWUSRy3qm0jfPhAgGTUcd8eoYbaPFlGlsrceA/y/HJ/Kp8TPe2XScxSpPBhfY94+TmfcNMKXe82EAX8isbespMeXJGruYFhJkBCX2vCRrcR0NbBC5AZA/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZokHUqMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZokHUqMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B2C4DDF8
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724675753;
	bh=CSISsF3UazMRyo5sBFQc7lAdWPWoZg7G36nWBuriYFY=;
	h=To:Subject:From:Date:From;
	b=ZokHUqMYc6Zw7QHwlwXYbCp2n0k4asWMwVLJqFR/oqjJK7m5ESdDeKyc4nPy3nAbw
	 3myajLMSPDi665DMUEe0dTBGnNtLKQMYom60FkPpYl2aKb1b75WPbDzB2TwNO+lRjy
	 j4mD70C9bJN6gHjhR48nul5HTEnB1DTY7p6Lp78nc9bqB6THvcsqYwkMMfzLaLPjbF
	 5GpADkTxX3V+rS3yw/JKtGFSMow+P98vzol0I3A2paniedR93ESbJaa42iBj6EFnDx
	 YSQ1z5MLz06MlbPAZA950I2oEdy2THFfU8TvihqCLQSkb1mA5Vu1VI2vXabXv8nwP3
	 xMWMxPI4EPayQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93344C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467575359.349.7142331812240468483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0330faa549ea7a1c7f896fba70f4c88946900aa3dddce453fb6df5592c662345
Date: Mon, 26 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724675753
