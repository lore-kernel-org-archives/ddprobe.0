Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293D73A5E72
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780836874; cv=none; b=VdRofWZPpcylnBNozLvYP1pVqe0rk0LUQLYq+YS1nSjpKH17wPJYrAvgswMuOLSL1/YwOtlHkwYsbOiwqz2rUfk2oeIKX9AnYOpBrzXSZcgpXzy/nhMmsDxGsdWWeWeLZ7xX0PBhDIh03kHoyA+C/WluMIHYWbA8AQ2OxTJ3rDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780836874; c=relaxed/simple;
	bh=KYcRnfJPPYiVWv9oFwGLH8+d/VgJhpjKkzoqVL1snYY=;
	h=To:Subject:From:Message-Id:Date; b=qr7DR26vgV1DRRsXuraK/yNo7gdnjgOe5C1bPvAxAfHoxTJvn9vsqEoPggKjBappEO1Z9T9phd65b7AEC/VDL1PH4SqwWqPb2orHY2sAkZDGLgCYA9M4CxscfeEqJmLlFlMs759egvIjz39rEOVBFD5zCnv0ckdL5WE9XnSVHhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjGDcgMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjGDcgMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AC9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780836873;
	bh=KYcRnfJPPYiVWv9oFwGLH8+d/VgJhpjKkzoqVL1snYY=;
	h=To:Subject:From:Date:From;
	b=sjGDcgMuQXM1sLt46YENNjV2akQkVJbm7jQUEWGwrpsxAnulKiuZX1H3vqJJR7369
	 AVcmqQEymR8mR/T12PudKNq8n7R/D6hL3XbBj0pY/6nS+J4W/Gink0v1M1YGDdFhoA
	 iCsC5F6+b8PurtkcP4oueWo3/ifAWc3iAYKeFVVL57DPP2gpNtHu4x5RT4vihXb5xI
	 PGG9jZ4Akmr+TzTuKIRZePtE02A17D34vcBAWDSjlCgb2pb87cCkGhQClJ3NILHBOc
	 da44ch+miGW6HZ7tESQCirXaR38blvF3u5SsIEtTgHqV1CMo/ujbDxLYP6Pv4huYY3
	 ZT5i4rfd7cczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8E2CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083687368.15957.10395990709334114085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ad6b05c8a26934eec98f70d2c8229eba1dac529ebfc76518712d026d080750
Date: Sun, 07 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780836873
