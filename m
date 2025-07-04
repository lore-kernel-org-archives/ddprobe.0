Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A1454723
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751657394; cv=none; b=rmjVPpcKpKvdC4HGs08cPy9lhodNElaj4KMK5JWrJ88UzJXC1nrAzcXIF6fY/zqAH4SxtAIme6M8gVTuklcuHdAOgLvxuXzWtWvtvLISpqjVGEwuvNLHAM5gKaneXfU6Tn0d0Vz0O6u0dIJuOw/m2ono8YF1ynfE7exxIANLnuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751657394; c=relaxed/simple;
	bh=44HrUlRonahGEStFv9/CXiXp3X13hINr2dD1cO56a38=;
	h=To:Subject:From:Message-Id:Date; b=oJHeJ4UneD5dtpLgWxxDBmMZCjd27ATlduGgstlwIZFYQMxNVFHZDTK5YWqgmjJXdmPHtIxLZyImmKLGLdlCgbpC1ykHlkc2QSBUz3XpY0ie52k3JKFwi7e1TLzPP6BFvdmQiQcKZxlrX/KLc1Kyq5CKwr+ymVVR+hKfsMbKDNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT9MawGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT9MawGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3729C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751657393;
	bh=44HrUlRonahGEStFv9/CXiXp3X13hINr2dD1cO56a38=;
	h=To:Subject:From:Date:From;
	b=sT9MawGOXzoAoBGQTlZNbmGAF6GwCexTPIiYyMHgYBjuuGhRjLJPdZbk4Ngx0gJqi
	 lRbz0XmK7+J2HXZtgsDkLN2LEmnpb4AmJ8kJszjEE2t/PWzL+6WXlLvl4VnsWlsPgg
	 xRKmFpbCWoe0YhHvgLW/ut2phs9rGANYm7+GXWBOeXZnXjZTJ+TIM7HE7bjW8fUuaJ
	 AhTTvELt+5ran1QeBkM4MD0A+4bO/cynWeppEVfGjguJ4HXz7S644T6D+thRHIGNpn
	 3hN0BoF59CytXuq6hRsskHnUfCFG8ZMFg3I5MHLrGPnQAnpdvlOtG6ysjzg43B+k2a
	 x3rey2ykeMQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BEC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165739357.11590.1435572951054425493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9534e2f7ddf298cfb3cc4981187cc94e31a3f4faab12e52a775b93cadf75b4dd
Date: Fri, 04 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751657393
