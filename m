Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC68146F4B5
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786712434; cv=none; b=ZRGVh5lypaiWhKRCgimZz5LuKcNuygpbbBYSUq7BeiDfv01k8e3NiPW3YtqGvf4+8J4lKE7GDcFWTHdlbbsy3gYXg9Bjc2V8gukiu9tw23KgyoBe24ld7zqhcl7yWK3jyyXUB7Fb0UJU375pvzrDh8xkmNLch65ikiN/DRRLG3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786712434; c=relaxed/simple;
	bh=4zU23qr01NlxTeBXjsQVquKl0aA08nIcKtNGO56e0ys=;
	h=To:Subject:From:Message-Id:Date; b=LpW0ZtUPMiUjGhWKFDRygzJxGLja4tlbbCo3Dv25JYd5Q3FOWcCr+Q3KsHAmxcmI8LlxcQyKuYXe08os/XWtTws2jAMj4Vgg26ut1wi6zc6O4XEG+XQ+BFGNpZ8sx9Tf5WO02RgLJMvaKozzgraIfxGER5zwrRu9MoetCPyZFnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRmd3L1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRmd3L1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE7BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786712433;
	bh=4zU23qr01NlxTeBXjsQVquKl0aA08nIcKtNGO56e0ys=;
	h=To:Subject:From:Date:From;
	b=kRmd3L1hkFXxWXt32DgwFxSN9oyZvhWGsGo37DFZE1rg0kE2Dt5bucw5XTCjPECmo
	 m2vuq39hficP9ayMGSFhgungydgU982fEtMU/H+HKLAHElkq8u/QPLvGTX/Tjzwnt2
	 mh44YOqfSzbhFjJ7kurOBlYJUsKUguU+DfxIfSDGGcFpnlMQ97PSfC6iVrnD7GYJRX
	 dMVzmNsw9Uwcm4GoqUf1JJh3egXR1lR4ev2eK5EmFWilkFTGkQhySBSvhLQzi4EsCG
	 Z/mKSOcIfK3oUOEwdpI32bCylPmFI0OYCo+0vFBofV/tTTm0ROJWUOwLdxM1SW07ve
	 DG6pwqE1cYzjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9187C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671243368.3746.6170028811622391793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3be6da886885936048e9eb9157aeb13b4c2f5e7448ccb3dbe9fef06d017e91
Date: Fri, 14 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786712433
