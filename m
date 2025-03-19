Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD331991CB
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742374794; cv=none; b=FOlZpiSsNKBnURT30zffP60sIfjefAQ+owY51I4lW01+bHIoCTZImAvbtwsL1QBVqpl6m4pbT3pfq5FjB2OrcSS+P0PTl46a3aILAX0U9QDUrNJrSJPLVTSyxDA6aamQG8tAY8RGNceo1P4SEQ+3TpC9JknjaqADX85qo8za/os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742374794; c=relaxed/simple;
	bh=el0+vUAPsvLHtF8KTI4XJIttnfcABMgfNScqt4+3kE4=;
	h=To:Subject:From:Message-Id:Date; b=Ag+bfFd5JMaDzzLfb2kpGCCETc9sdaUbRauIL7sJQsrfAyR8Ihn29hQ1g5O4MVhFCvlSbZI2XAP7MzylqJzXmf5i6iTeV4XM+tD57aFEoSiOyyrOS/M0zhVZiS3moewziHJDOpR3FYi0zx9+6X1+EJ8uJVny2a0t1syf6C8MV30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XglzSCyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XglzSCyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7027C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742374793;
	bh=el0+vUAPsvLHtF8KTI4XJIttnfcABMgfNScqt4+3kE4=;
	h=To:Subject:From:Date:From;
	b=XglzSCyj8chri2qYWI9K3gG4swIzXFL2e3avWmKgvwlJkJj/MYZO9qOnNVMoRe11I
	 PI/QD4oV4SFzEBIstILt/sy15BQviXiSsU1ow4gj0GkNFOxo2Yp+eooQUqrensaonR
	 4ydR4QhmxQdViSMP/D0DoJHTKvTBr+iWdhfVAvhlBxtgax61lTAXZEQ9ynf1XOZS9u
	 qYtJQaKCosRiSVPnVllzKxeAzsGNB4wSLlcRWQ7B8BmvLBz4JHmz0YhKYXcwTw5xFi
	 IRsU0FUZ8uFy1PZdFwGHwk+YWk4cZrvAdZIp7VJF+iAAgwq5CM9MeOSfODuK7q8jvg
	 DnZau0BopXfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41CFC35FFF
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237479365.13502.2273569248396005321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3495a60a6e9508a859c576ebd568bfe9703bccb9f8108f14ca12ed3b5f1a24ef
Date: Wed, 19 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742374793
