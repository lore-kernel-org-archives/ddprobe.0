Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D98618CC13
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734275754; cv=none; b=nqj5wCgSYBZO6wm6b62tOzaWIrDogSvI+Aie9A7Hs12gaZLqfytPTyn3m8x5cXtQhSCSOes+9KmGCDjBCcYIeBvT04HwwogSvET+8pY465SvATA2It5st7w60uTWW7S12iaF59lKJzWEEoUiN7x9k5YfcoowzCIEW+zuPxJpQIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734275754; c=relaxed/simple;
	bh=LboQn9VkJtbt+yCJeloMUWBun3WFCiceL3Kz4vZNu2w=;
	h=To:Subject:From:Message-Id:Date; b=UmtRt/GETDnBDV6MTjiqksSGzd1QDdNrMfgUJ7j91Ag35Iunvb2JKm2JPHZ5eXHzugjJCCW4beDD4lvKxEqj4hIxtzVH7HtApjA+oz7fvMBPBjHsTpTPjC6Da7OSWDjj09ctD1ADGSf3QryfKi4pqbPFa0fIkFoggrCL7y9nK2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IybBd0CP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IybBd0CP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76AFC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734275753;
	bh=LboQn9VkJtbt+yCJeloMUWBun3WFCiceL3Kz4vZNu2w=;
	h=To:Subject:From:Date:From;
	b=IybBd0CPb3lXMJuGxpbKTjGHoHq9DvAX0EfZrELHbmLA7Die3qjbFcHsUHJHzQ2SC
	 RsyCoh4oQ10lFdvUA13V4KmxBY4r+UgEETQUo2BmPDPP+b0q0WWItId283zVV8CPL9
	 MED0VfQ9aQ87hVpl9cJI5j3TFjfZ0t6nYWFr/KuMt9o6p4gOgGi8T1LljxxaEgj1S0
	 wkBj/1G4RmwUppdCjEad7XdNjaO4BTqY30Ic2Wva+k+BC+WekChGHsWjRR19UNPEoi
	 k9mlyzygQlE31kW4RbsnFBu781BY7u/hY1ehkwAAIotpTwC8fRboaBz6+Hh4It+hV2
	 sd19ixrCQ0+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BACE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173427575359.2350.14998231128083368339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af207af6ac62c853c38dbbeb7b6fba195236821a673f50c02bd26e5f3b3f0892
Date: Sun, 15 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734275753
