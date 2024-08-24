Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA4F1863E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724469354; cv=none; b=O0AzHaGhMf/mGldXdxgR+s2lBVMl0PdpQ4F7Y1j1+UH2+hSL9yDs/rWWQhSHi4OpWk2FS9aUJCHfF0aGlLM/ObhtMNr+WOQGLn1EScmrwf1JuLS6w2yxHZ2W7xi5HjU2/wI/T2TFkt1Df3EkrQ/HQDIOVk4LaLfvFcLgbpVK0lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724469354; c=relaxed/simple;
	bh=Fwf3Pd6MQ4iP1zf0ubBEuE6VUdO/sq9nbrDMtVD5OsA=;
	h=To:Subject:From:Message-Id:Date; b=sMHcsR+2YPB/pD5UkjctWyTusNIvNYSmqjQkptEUVS6okSyfe3KNpUAr5pK6UrXx2PyH73izLlWfpUUUxx39JZrmRlwKV2Mj/poj1uvc7H0ZfPsvOA3oGnTTlr8KlQXCX3tfIZxeG0zjdZGYIjE8pAAlGgB9pTjrPn62z15Ml1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njy+Glyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njy+Glyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE951C32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724469353;
	bh=Fwf3Pd6MQ4iP1zf0ubBEuE6VUdO/sq9nbrDMtVD5OsA=;
	h=To:Subject:From:Date:From;
	b=njy+GlydHbVhoNlyC6/cDs/J/z2Wu1lHUnlEGvzMnvTOhUeRB4FLdfLEnwRUkRy75
	 3t7NXcTmK8JnFhWyGgd4DIoWqfAR08At1igFU5g8YKB+HvB53Tv6PYpBl0r2z4o3NH
	 /kbQ5LAD6QyDOb8x5zmz2inepcwDLmC4QQuROn8TgI3r8cGef5GMHldQqLu//vZgsT
	 uNGYHN9LHRl78NoaxbHLc6obAsBVgArEb2ymmkA3VOLrEavzv8p1h6EdFxgMR5kw8G
	 vV88KsAJSPMuUky9IJ+LZirGcL2L2eREbyjQ/WDZ+1Dve//Knv+VGFV9g193zI/gz7
	 7udj1bi1Vswpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D58C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446935360.18069.16309876262496780588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640b1836614004fb7dcf615581e9f151bf3a5a335fe9d67dba0836513aa20faf
Date: Sat, 24 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724469353
