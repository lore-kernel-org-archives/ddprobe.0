Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE4A26FDBF
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765662774; cv=none; b=OXLfamO4k8/wZCzArGl7MvToZjQRTTH1Tg9ekIs0L7env6DL7prWh6FWhgZhGzn56eNVLhe03X/Gp1YHlivmxoxJ+9UHc9qlo4ecVdvSO0EkxeGJUre4k77HIpxPHJpfKfkDImioeXx4lIT62LufFsOsKje5owlght6G93sxBo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765662774; c=relaxed/simple;
	bh=M0OWmrBdaaWwvaENfvcN5pHUX5zNSuogQHu5IQYI2L8=;
	h=To:Subject:From:Message-Id:Date; b=iE9Y5RAmDE2HEaoowWugfKGUVmZ3hK3Re9D1QS6GO5QPHFne+QJQKGXCkCegdBNqzl6p4cNk6aV9bHjO7DimuQARIWJdBfGqMNPxgPRHjfUEhzp46nTzw6s1GYWkvCn/9a4OS5drCoMuJD8jnHzsiaMhx/CSNM8TjSPezr9dFaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY0+N+gf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY0+N+gf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765662773;
	bh=M0OWmrBdaaWwvaENfvcN5pHUX5zNSuogQHu5IQYI2L8=;
	h=To:Subject:From:Date:From;
	b=nY0+N+gfXxRZ84wvElcD+LZA7F8nvHwFnEfyWlWSyeyh78k45eBm+GdE3qilO6VLj
	 KfPj/uD4D1fwTTspojYPSl73lLk0uXi91ExfdgM6j37tpzdQpZypTjuN1A5wXUR4NS
	 STigD9GjBmdrQNYQAZ808Pq7DEDpoiT2w4uh0JcTsDq7X0tOOy6xdQ3wNHP3dwZ/t7
	 JPXhEPcFzs9GPaYM1fyubm1DBy9tWoo0L3YrTt4RCDraYoPhMmO1A5jMO6hTYA9kOI
	 WS0f0s3RrunZ9WD77gVRlEqzaSC4TukykT17jJBosOHTGwD6uPDa/HTylqsKBiEq7Y
	 Hyxzbp35LQ8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9461DD5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566277358.24671.4336517529046959689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c635fe2cd60d6392abd1a527377a58a83f4b7be7ec77b5a649b1edb7aa5211
Date: Sat, 13 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765662773
