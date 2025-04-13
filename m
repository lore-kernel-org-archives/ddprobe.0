Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3C7BA50
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744546794; cv=none; b=VwgXhfiIC2kfr5Us7Lxb4O7isGus649s3KZCXXE2Abesf+B2HTB7fBYaYOmTCPoESXPU/4gmHWckvWzQXfTmEXORejFvgS/uRlarQ9MMca4zloJDPKC7fuluFgrMEp9fVo3kAPrN/SaLSnABYTayn1APkWmaQMKHIpRRqNuABf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744546794; c=relaxed/simple;
	bh=C1ZH1Cg+MLIVTWUxooykZzKQVDViYsfhVRWL5nrVZvc=;
	h=To:Subject:From:Message-Id:Date; b=hWH7pJleSm5hC6ewjkM2TGDIj7LJL7Ydy1mKBfTfQjUa78/dhRUkdUsPVxNC3iTi+akZtCnDFWRVsX1T/+wxx3KdacZ9+5dJGJC5UpWYsM4fhmgGGWfDNmuV6ELtYFl7k6Mf5xKaO4R/vHJsKK520Z+qcHCOx9be2LSEU3maUpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8orV+dW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8orV+dW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0D3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744546793;
	bh=C1ZH1Cg+MLIVTWUxooykZzKQVDViYsfhVRWL5nrVZvc=;
	h=To:Subject:From:Date:From;
	b=q8orV+dWaCvtS5QPX5wLyX/HK+2Kgl/Sl0Hi3AKHSz9CutN/4JDp2p2pQGpkpiYHi
	 RmflBmKbtTKmlk6X+TAG0F+7vwidKuJ0dy9j7uZ7DQCv+2LFnWLmv2IIbwxC596JH1
	 2ckRf81CFlwm+blrZ8rsebdypHr26eA1mh28bqc2ygV/zSIMvP/xJwZpxORmiwi43p
	 5BRLged1yCr8315xD2rOdq47SsJ4CAy5PcJdIn08ResS5ZHfvIU4/7IC9w1ukOtC4t
	 UcQQTT+HvN1d+i+EfuLplduO7rt4nRbI1fnI1OTfx+jvI19IQ9VX4l/yHy1dByzPBm
	 Xm+B2V47Rq1sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F13EC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454679362.12617.14277219229319010177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc87ec13ece8c40b2b12097c7adb99ba82d525f2876b05636f5e59ffedc81f6
Date: Sun, 13 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744546793
