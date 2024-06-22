Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F59D1DDC5
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719073943; cv=none; b=NZ0alsKfzJqvzepNuvy9wCfKABuDSvmqLBzl9WoZ31DX0lWNuzh7TIcPcA8mjve6jXXnaz0V5sJKsoGIM9Hda7sGayANMjBw8WcbGc5scZ+wuq7wNGVvTd5YI5RIjSCgW7Zqaq8/dnizI7FoUxF7vsTgiXcUlFqH6moyX3NAVxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719073943; c=relaxed/simple;
	bh=C7O6Ag0NCifi4wVZB1ziKVGW73bEMojgMovUHVkZOmI=;
	h=To:Subject:From:Message-Id:Date; b=Xi20xiqbGws5kGSugxQGr9k7XskXvZvNQ7FeVRTlouwXZlhB21nZHrAF8qpEL6FL/n12O3cOpwa1/PMt1v/qMov5cb8UeBJY+NJYt1GUMbxr6N0UgklasZEtKCcoqic0Dvu3T6/FirVK24EgpcHehcqz2Rhi4acLwBEi3JWYa0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ayq/jICY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ayq/jICY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE44C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719073942;
	bh=C7O6Ag0NCifi4wVZB1ziKVGW73bEMojgMovUHVkZOmI=;
	h=To:Subject:From:Date:From;
	b=Ayq/jICYf/C0ZuOjLUe0aw0QOc4xBYNfl+C9LYplMScp8l66ZLJ9Zcfp2B5AhB8h3
	 +Qt8bTBSvj26aAtBcFK53qpcVK7kV2oyO6aViYJapTrv2OF1sBG/8mrxKHVTUPHcKJ
	 FWOxBzucyBj3QXr4JenNH8kkGcYpow+4HT2kRDVyXdoObxAHs4tNEH8tdAW+5JE4jS
	 c/hBG31QWwlMW1x2Btb9E4tR/0jNT1cnElELJBncAJmYEYGrAmQDmdjVJSDzyugpPb
	 Ei+6AAsC3Gsb9rWiHCQg9ovOGLeo+5RdD627vqt1YBD49L1frkN+IvFHWpoQvNbZ2Q
	 lg+GyT93zl4lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A5EC2BD05
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907394277.11684.6653740047899176702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff00239df58889f7a4b9780d0468c0459577ed10d6c6d3ab0c492fe4f35b566a
Date: Sat, 22 Jun 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719073942
