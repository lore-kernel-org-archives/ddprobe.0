Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D494388369
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791416434; cv=none; b=Uqaqsh4Pg7YAIJC2TtSfLOZTd31CEbX+1GcW/LB88J7ugoGwieCX6lcrMOV7fAN7Mev3stREpG2BUmhMjHZ7lhn7Uai8sUGrIEvYnOf9dfM0HgNxZPCWIOZ1XRMkGHKHui12cD43O9C0cegEMsZZAplEsne1CXC8HdjMSJdJnCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791416434; c=relaxed/simple;
	bh=LDqzgHs03VkLS55v92nZlm8HzHnchT5EnK5NnM/Tdbw=;
	h=To:Subject:From:Message-Id:Date; b=JYhB09RiAHE60qRNiYlT/jwL091bDq0ySqNBnc398/UINGtwaaYZXRDjTFJPxf9+0d2BcpQW9KQZzQ9/y+ewvIkRKIPH18k27ytV7TRUCB4s6qk029soAWI/c/QHAp59lGxTEZs3pbzincLi7LyJeHJQ2yJvr/V4S/obsSooIHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfxOzE4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfxOzE4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA7BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791416433;
	bh=LDqzgHs03VkLS55v92nZlm8HzHnchT5EnK5NnM/Tdbw=;
	h=To:Subject:From:Date:From;
	b=gfxOzE4NPHZyPnyqWSx/hOJMPiik7KmPAdrzroONS57tgn2nEO3dRiObjcejQsF3c
	 p6QLlOhm6m/37XKfT7ibCsbgowBGGnROy5VjotM5YtUIDHKOgaZWs14Ci1F92PD7jo
	 gfro6KExiyUVKeKevrQmotSfquHfYu/i0BvYkDKy/S3BOYvd7IDg1ROUFxHwR904am
	 R/dGLDFgn4VDWVIswEOtxJarOVrcl2ffZFqyLrDAhjAPqcVmwNxj4z8Pq734UXJFz6
	 01APPbVIb0ej7YqvhCqGZumUzC+GTtd5I9IXG40EmkQOHOEuiPFMp7jaRU6KgVYpi9
	 IfslKYkSOH2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF1CA6009
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141643368.27963.8181728635362218576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115135bef9e49dc787da62532ee65bf83f9ea1bec20c58d1035f242f43af8d80
Date: Wed, 07 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791416433
