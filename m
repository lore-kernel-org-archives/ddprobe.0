Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFB93EBF39
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769908434; cv=none; b=rb3SwBZYoosghfEW7DCC8kHicBOnT2n+YYMNSqdDf5HGclyJT5//MNt5VCcAB+aSnJBhHvzmi+9uErS+OBxHuidgQPdmsDyAJkcjlZ8O6jhTuQv1GN8pVfi2CSRVTGhHRo5iMdj2KlClHlSmJf4GT/dnRjKS88AVYvREsqcXdpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769908434; c=relaxed/simple;
	bh=YNrwDlbQEDYg91wSEejQeg++Gbcdqv53YCDgqDHFxXg=;
	h=To:Subject:From:Message-Id:Date; b=Z3wxtV9SxXnj9/5JcMTehhihc9jfpMPU7XvP2iabPgAxKT7R+on7DZcpuuikYwsNoT1GAS/nmLFAlPFJLEXHrYztfvnXu6mqHdOhA6SbUnuN2K+mJgLJsH10Qked97i+22dOsLFEPjulzh4zL9piokqRUGq0s39VjalEcf5wMHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUsylANz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUsylANz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF70C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769908433;
	bh=YNrwDlbQEDYg91wSEejQeg++Gbcdqv53YCDgqDHFxXg=;
	h=To:Subject:From:Date:From;
	b=pUsylANzGzEoMcrbt4kuU6Y/EC/vFi+Bcz4Hboq29rMLKAGUprpcbZsdEWuvLluBr
	 ZXvT3qifmkmwnDAqPexfyzZfNRxNlNaQuKDMytre3HaY09LrLKHhusA4e0yShSYCED
	 7jedf/BIatE9h9Leg4nXNaH92KJkzpyFatiBayOxhEmaTMNSG/UQXuYO/6nXJ/jsBL
	 x2yslJpx2xTxLmrodIueAgxpE4ino2npQgFWzni0w9h1hEDH+eyJjp2g0D2XV7sqaO
	 QFiMRIEJhHgVztZwz/Iucw5kg89tOwWrojKC42SclMC/3ljRFiwCmcgwlr4MkXky2a
	 oeWOkG9mfXluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEFCE7C6FA
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990843357.25526.670967819872728397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94979881c963f9d21e5e61c5cf3686f2f02bbd6bb3ba2381b697add7cf27f4be
Date: Sun, 01 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769908433
