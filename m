Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B0D175A74
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792282834; cv=none; b=aOPO9RBPQIg/GFCjv6QrdjzHbWrY9Mj9PqjvEWG4T5GFidTPw9eu9eOJmdgJdSaRnKIo1JJBm+qGvb8vfLkwmFNam1bRtLXhghiONE/AfbFimCHdxAZCk7OnF0zlqy72fWF91pc47mUU7Ly7Re8RkWI8uMn7clD6RBEUVoXNOeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792282834; c=relaxed/simple;
	bh=x0+cuNs70qUuZ9uK9gRppMtlV9fhCB2Pzbst8ew+0rs=;
	h=To:Subject:From:Message-Id:Date; b=fFq//fQIc9oS1a5Rji3QBXemLpNuf7JWDVJeKSMyS7WG4ZiHGj7yid2Z1r/o1FBG8lV89SbI6FBQsXOcI8IK0gD3IGtp437xn9FJoevvXDQnp5MUHNw8LSq7HeRKeRx2EiHYS3KG+FEdMxA7z78a26SVLlHIKkI+Zd9dDX7i9iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWabHD1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWabHD1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CCEC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792282833;
	bh=x0+cuNs70qUuZ9uK9gRppMtlV9fhCB2Pzbst8ew+0rs=;
	h=To:Subject:From:Date:From;
	b=mWabHD1tqGNO9jBGTkpUeoleWvDIMsDEYl9z8ILLdWW6fOQxZeQelJZFhFraiNUkr
	 x+hCjGIcK9MRb41aSm8wc6mmPF8E1IdweXUx5RegqxE8Ec1zZyFS0j8sYGyRYVbUnL
	 k44FPm9+AoOMIikKGqf4LFDjUBOTXlV811YUjvxFwaKb0YqcOqtTnd9+dgz2/Cfk26
	 qLl9i9lzbgbiB+2PVY6jwchbHfeGfuqGwFTFJPGb3YUTI9Q7sN4FySVLBf3ZocU4vN
	 +Cn+5g+4QDfjuDF4+CiZBvTjK7MDENl3oZ+T5MPxTYQGZqdEMoDwHDweRqYRgG4wPb
	 GWxCFX5a/tM+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EECCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228283369.19744.6153056452451509029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b7d965736de6788f7b02e82a4e17b72a1e3356fcd95d1ca1bb9d9ebdeb4c17
Date: Sun, 18 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792282833
