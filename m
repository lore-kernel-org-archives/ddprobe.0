Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C1836E484
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792125034; cv=none; b=s323MvklVPbqS2GcX9xx+1FpLb8ZDqWGcDCmLSCAhODrgoZkmkesnCKgqF4MBGWZm7KNhMJamsIIrul7DiFaQ2wS3xVPFN6jxiWVEcrDMYcgifT+O9BsD4npa08s2jLMz5rCCBv7+WINCqRx1K4FddNK9teIDl4yNf8qt7HXnHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792125034; c=relaxed/simple;
	bh=S1Ye8YcgTa4uUgfYUfu/U33vdTa3tXv9xMTU3bnheQ0=;
	h=To:Subject:From:Message-Id:Date; b=Phlj8Ebijm4lEpwBlheRdRxCBpUIgjxINGbiKo1KH9I0nMFyQJ/owZ9q7JfsvGBsbDPJJCjRVLX2suEbRy3wCnI8fG1cRzqYHzhDNQ4s+aZSFYohpGzIIgehuXrjdWFB/w3bH5yU9RbjtCk0jSD0PsFdWlc5EzgxAWKdq2rtb4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFfOt2Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFfOt2Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC47C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792125033;
	bh=S1Ye8YcgTa4uUgfYUfu/U33vdTa3tXv9xMTU3bnheQ0=;
	h=To:Subject:From:Date:From;
	b=XFfOt2PxENZ08bCmFa3XxwWecC69jxEoA/xlNn+8udLLEgleb0HpPZdoS+QDVS0MT
	 QYc1vSO4GB991064kCPySZD6y3UuWqRlYQUqdQvtlkBAS1R8bAoNq1wd1ttImzNS7Q
	 q/hlPDpoeGJ+plWX0CWH7vARwx1XpNuVNvGTvI2GOeIGZeyj92DbM9jkT0eSIRmAfA
	 Qt3G/yuzbzPZdpAu2QzYefRLHR2QJ5iTNtwiU6gM7ekphOJu9kPTW7vFeiOjFy+DGt
	 K/r1rU2Txx/GLq8HTkvbw0niGLkcQCqr4+Exz3m2zMQxavPAV/ld+msoHAkGEdgKGR
	 2LINapXmQD5MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E0CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212503368.9818.773452270322758161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8666cb6cb3a0201207ab78642fc8e16ee1473a4af2ff2c835648cb8884eac6cb
Date: Fri, 16 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792125033
