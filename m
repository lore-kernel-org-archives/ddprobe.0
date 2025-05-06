Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C886264A94
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746535195; cv=none; b=DzRNrS9tzSzZozv02sc1UJ9HPzMRcOn0lTsYF7rH4hEG+FwM3EdtTzrGFfU5GODcbvOZ8H8vAMpWvEAgcTad68dPcRml0Ig8QguvbyovY8fNAwYzhkDcCHm9IoxxA2vEP1j1V9z1YXMpw/vqRLgaKbLWT3dfzSMMPzlFeuqwq0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746535195; c=relaxed/simple;
	bh=mypBMFfhkI9FmYS/rRkswk7+ds4EuOxE0wQL9QJ7c2k=;
	h=To:Subject:From:Message-Id:Date; b=OjlIfW45Mtxh0ioXNWe+acBMCBgT7+XdiU2iB9aLgROv4PjE/E6jOufryLye15bbsHgD7veMQPQjH932Zl/jG0ZJEZJ8fOS5cBwjKun54lmfh9CCWK5sr6s0H0DYEoIXwYCXRyqT7RNrN5IpiVHxh1bCoA3VzOpPUbZfOBzujnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG0TrtGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG0TrtGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11BEC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746535193;
	bh=mypBMFfhkI9FmYS/rRkswk7+ds4EuOxE0wQL9QJ7c2k=;
	h=To:Subject:From:Date:From;
	b=sG0TrtGeGBjf1vJv79UUO2OMM8g9ALzdw4TocSRV45vEX3NazMrQuu5CM4GPr9YLT
	 Y5L7FirqFRjzyStBOHeMlwiWETuhg+bJym/c3A9SIzcTDZnGJw9vd0Yt5OCRbH3w4i
	 fPnt+B9HW3v3dlDxRaXx7mC4A7Tl8GzfqittDUPlRRD4b2HwlKDyae+dNTQWPBhjo4
	 SSy2ZtclEl+9xm4FMvxWiMFFA838Lqd2z6Yj1FCXgpw0p4rFqQPe/y6BoYp4Ky5wbN
	 oVT4ONd5tEuwD9rxrf64F1mIJlPYBH/ryVjbS50dpDRSk6o53Kf7RteZRwzkJSu9XI
	 ygir9581k00TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E708C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653519357.6703.5718943893968498011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2aeb194ddb9ba8b8db4b2e7066af5d1e5a368601b161e7dab5d4ef670e3b5da
Date: Tue, 06 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746535193
