Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA281A7046
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745063393; cv=none; b=KkTmPV9CdBs2qCn21QcJOaHZozZUpMjYekLD93q7xXa/RdeZCmr4BQpOpkCujrT5Jcd55WPTFzHl6gpMqEJpFcBUBpEoPXno9TDNVPYylakWIhVJeaJt16QTCv8uolPtQx+z5hLkkTTJR7TB9+2c61kVIJZtMlAZ3ih9rOasb44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745063393; c=relaxed/simple;
	bh=SDNuxRQwRjGYE7isq0AmP/cey6tpHkbDHRDtXFlQAis=;
	h=To:Subject:From:Message-Id:Date; b=VBuPgrXkMmP2bRuYE2a0/3ievzkxO1OCDIbRU3OrDMsRQoiLiP4ytUfrXQiEeN4ro5TLE84kCUxuzA1gMdU8Ssc9LdZt9R5I6G2nVZkLUUPzHDb2gvs4/v96BoQKGiZI7S3vrr6525vIOCOvR6EisAAB9yjJTkmbSQ/EGuPp7WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2SUM+XF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2SUM+XF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE17FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745063393;
	bh=SDNuxRQwRjGYE7isq0AmP/cey6tpHkbDHRDtXFlQAis=;
	h=To:Subject:From:Date:From;
	b=e2SUM+XFKXSzUZ1VOkX6//qzwUg5e78ee2z6JpLukeQuUlcD2m5b0fLoB6m3pgtng
	 GBVZr6+yW9tK7z2GUBd8U4j6yC5PhyHbyflhn/V4MfhwhE5a7pm7/7E2IORMSb+2Lf
	 305URs7xhjb2X5dVib2jgK5JNW1D7J+JEFaaE+CsEQj/kMuEPrAWDPmx6V0KWS5Vty
	 vy/kRK2/YUmKODQssmYjSVsbGbpUaOMlYE1rnT6eDyXFUIqnACYbFFpS8KtCEQ/xgE
	 ihd2pX/+MkONPJlYfIRuYZSKshJp95q9z+JiG0ncSOLseoGshxHbiJ+0yIAGtcx09/
	 R1DJOYMWMFYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFFDC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506339360.30267.14114653578511574257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6474bf8a8c4babdbdb71e692111e9abdd915928c293d21004e795f92fafef35
Date: Sat, 19 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745063393
