Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4701E14C59C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736084754; cv=none; b=hR032jMXGCf7tk3VU8qweF2cle6fQ9qN18hVvh98/WCc2S3XVL2t36ytOxc9qPd/PpNCbQOh4dwfShgfbApNDUJ7wu6jUwvM4AfXqspUdDIt5rRD6ksyo87yYsiad1wNfjt45PWkMgNVtVyH4E+PqMGUDqoS1Pz+sP9wVD9x5vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736084754; c=relaxed/simple;
	bh=wAOqltD5kf2crPiMk36kudBmFbHmUR11JAJ1axAvZ98=;
	h=To:Subject:From:Message-Id:Date; b=dZ5++QhrBAej/oAXHDHxoc6j9p6ESRxbKAjdX5WNSq7u8H/GTujrS6lnZp5rpvqBXxeaH35bN7UlZ5x6NlHYi6BPE0Hnf0j5DRTs8sT9zIJXF+bgQTri7aCYRqA17hBFutPVJgwm/8QGn7Fq4KtiyRbRw5IJUeYZippHRo2jXQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQDVxqD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQDVxqD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40AAC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736084753;
	bh=wAOqltD5kf2crPiMk36kudBmFbHmUR11JAJ1axAvZ98=;
	h=To:Subject:From:Date:From;
	b=qQDVxqD/sVpi4STgr3QtrnjnTMabO1Ay3JfwaaxHX39NHmNnURFBHJkl+aWZEVO1m
	 m0qmj8K6j3RFL2iHCAQVGJ6oZM454T9HtqHq2v/IiSR9lwUw1szaBxfRwg44PX+cTJ
	 45sxAG60S0PUMJDI76ffj94wGxqiBCQ05lBHjaxFZHiiePfgwVBlZpjVIm4x/lGdrq
	 S5liWHalKu1a4TKxvqM/nc3atcQSGh+N5vXPR61GS8jNMgyt0LSc2oEMYeRZ6Dbku8
	 JxJKzEFXGujJPUDIwJoIG98K9s3vFH4z/U0Rgl3/slnQTY1rV+O6kSp2OrOBDknVJl
	 4+b8nnNqPxk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F201E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608475361.18025.3113481187384309851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9909a15a374e3eb9e1013141d8bfbe848ee38d4194ec244768ec840e4ffed68d
Date: Sun, 05 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736084753
