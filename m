Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C1A23315F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742210394; cv=none; b=KWJ7/2/ZP5EYzhQPQ7vbJUBC/rHfopQP2rdSFnJbwW/7IxIW6HoaGg6h0SATQDw6Vq0T2b27gB4HkZr28FCPQUyao6w0EPUf4iko+03uLzAwBkxNeFd7t2pAwxw9r9erx5D2zlL6hiMIYS9sYE51dBiCSdBiM0JV4ftvvVMNv+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742210394; c=relaxed/simple;
	bh=zMaJH2R7LO2VLsPlQj8RAscRJUPgJUqQc07J4sjwSKg=;
	h=To:Subject:From:Message-Id:Date; b=Aim7lgbL9B2zJ/xI0rhRenzG+NIIV1TDfR8hPkyb2PI/shsOoC+403HaoFcO6jEtBLH9blal3woxvMDHEZ3SGnmO0FqY8sAY8pafzh47++qpNceeOIgg29smJoLfJzAU25SWCgGE2zd6w1iXTuHNMNEmhxR8NJotY1xeD+u2gVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYeo4QrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYeo4QrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9CFC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742210393;
	bh=zMaJH2R7LO2VLsPlQj8RAscRJUPgJUqQc07J4sjwSKg=;
	h=To:Subject:From:Date:From;
	b=pYeo4QrHTwWYHD0k8ssGxGrGnClnkGKsnUsC451jSnoqPt1qkHhVyi2GjK/nX58Of
	 oQekKJduVR//Cm/z71eE3oYACxtz/Ufcb6PZfKch45weWVzGNADMvH9vyVh8t2PrGg
	 /VAwT+wj8DBneeDSRhmltSVBCoi/dkcRvazLCJaA2B01fGLtivyZBuYEigUuRCTqu6
	 Rin3SbTabTRXifnDeLRvto9S/C5Yfznxw//NDm0OKqHJL93mzQ4/qI63kgdE1w4YGH
	 cRiqkr15HP1fVdIWyA8fFVOyes2li1zBdkFoQQR+9sXPpnKnAN/PeQsMNh4IPUou9a
	 jh/qpzfUfru6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F5DC28B28
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221039360.6792.1884622499208375614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917d5e516398229b86a23bb926d04d9306ad83f48ad66e451549291f6797cccd
Date: Mon, 17 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742210393
