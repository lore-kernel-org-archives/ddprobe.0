Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0A233556
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736837754; cv=none; b=KE6pti6XfgSz65SlmTEXtgtEgGdMQNFtlgTW0es+iarKGkhmYDBxU3qoVcctGrdJ00dS+ylgK5EIOd1zN+VCrE6Gqpt8c5WDssZJzZpyrRu/bNhFw8YAHJKLKcAI/x+huxXEHL0jVyp2UQQqQOehPxasPpbBtDI+Pu0vd/SocgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736837754; c=relaxed/simple;
	bh=t6AB2jBkdxH+jluk1FaN4tcKvw/oL6tGlixQH0iUA3w=;
	h=To:Subject:From:Message-Id:Date; b=JgH2VuP9mkxykvuaRLBpUT4dTqSUHc4G1koqS6XWig6VmiVLYf1E/z5uqlDGL4Nh8KWWzwodF6+JboUEZ9RR315GHKGX5tBi1yvFUMF8RZ3G+STOpjOE4GiB6j1Wd31UOFH2mOuPBaPT8R176O+dnjHMOZlMTPRO8tmpqs1wpZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mmag4UHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mmag4UHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5352C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736837753;
	bh=t6AB2jBkdxH+jluk1FaN4tcKvw/oL6tGlixQH0iUA3w=;
	h=To:Subject:From:Date:From;
	b=Mmag4UHsclf84gZY6DBFaHco/NLGCbfu2JygpSJkmS+otNJkDVgfX6+0u9OzAsVla
	 A3ZyffRwh++Y5gaS7zPbXC4sorC02+7oG+R00vl6LGsTkhwRQXKxPj4t2qFXY16oSm
	 nUuZObQ83ERcl9zPBdyljkJk/61yihuGzfybCz7PymQx29kWqhvUD+W2Eo2yWzZcWG
	 sOJ5yR1VkpfvHsFkXWwBlJSUSL5jA9hBLINjNqETBQpZW52h/52cCHR46qh5YlRTaO
	 CGJdYp6ebWsuQ9apr48MWVIxVEitEa34xYqiQpZdxPucG1VdW/v63Zg8lMxWPGl2g6
	 pE5DqUi73uUvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0073E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683775364.29032.6698915010028510673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c01a286d3c2cff0d6307dcc89c622f7e2cb302641117d70f5346e63d6a484c
Date: Tue, 14 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736837753
