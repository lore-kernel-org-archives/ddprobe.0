Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1C047DD7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780692274; cv=none; b=euFST3+Qti3FBKnEWS7bLCUz7s3DO4O+hZZGIb3XWmV8h+oCj5PUnpM8Jc5s3JdpxcnzOhUsPVZRbrGl7nhcazL7zRuPgg2u1YwyZL9yME0rOEpl4dwNj1qH2JMcrgMeYaZUM/WB/uwt/UpU6t+zfoeVGnk7tfmFBThtRPfIyQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780692274; c=relaxed/simple;
	bh=6hI8oiXUUFqM1uXCpMtGVSoFXgR8SmA2QBM+HT394oI=;
	h=To:Subject:From:Message-Id:Date; b=s2dtd41gB2VXJbnYk0YoMz9Z8d3/CoaXif5Qygmm6SOnCTdlFiH4yunXQ0v8hatQJjjwIQeyJLbIxeQtglKoSFrKLhI+rV2L97T/dcSgn0qRsI84EsyyRtC2OibTIqKRMa915ncuq4anRDoxOl4phHoCGQd6IQ4XKR/Dr6pvlrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq+s3Fre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq+s3Fre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFA2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780692273;
	bh=6hI8oiXUUFqM1uXCpMtGVSoFXgR8SmA2QBM+HT394oI=;
	h=To:Subject:From:Date:From;
	b=Tq+s3Fre8Y3GpN7nuQ5lBSGjUgku5eQrl460EgZDrAxi5GkL7kntQ/jQXGfFDUq63
	 CJrB/iisaRN5tnHPGAL5jbuTa0YsvD1HQSkyd5ww27dZcOcw4FSFq66gNDAgT/o7Qq
	 SbhnC5wAF0TBSUNhweivd9JHVS2arVIBadhlHf/nX0Aig4FW9iBLY/Fyz9gFKXJ5vD
	 x2WnAQCX6p0GZEVSk1OJwjgQE0RXmsjt/ErDwrBxNgfSTAbole4okMj9Ux4o8f7phS
	 qXP1ffDz0DE0/zv+Omda/PhS5apdnk2no0TzZOux963oZEtpNsvs/LweF/n6El5JND
	 m9rbcLu3cXKpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B304BCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069227372.6717.9939272056859055381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9592134e8bfaf3b5c8daa5c8a4566dd05b5bc7ccc177cd325334b87c3f318f
Date: Fri, 05 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780692273
