Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A702EEC8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749360594; cv=none; b=gadvDL4KhFRqL2zUg8+Y5TbQf9lZYu+OShukVxnds3xk/PahMk2PkuTixn+zsaYm2E3vtxgAcyTZfxvKNHLq9+71T4wTcYQ5i1LSWuKcC4psEICc7XffEMKIxS8YJ5LYQJMjv3QuIaMNMjXw/sTSvae8N4LwQKkpnvtwAB/qocI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749360594; c=relaxed/simple;
	bh=1EdpxpIgH1feHlSuD2RcLw8WJtLjWSiCtqO4BC3fNZQ=;
	h=To:Subject:From:Message-Id:Date; b=kr44A/YyibtcnXAqj4WlzB5GWenhzEfe/keRUx/FeKEY0zDibHi+0iMcGQxBIz+N81yGJJFbssaEkVGlMVOeiBJ6wgdu2QZJ+6RGfYO9RwUCkC2Bn9N94MOrMejkP931Beq/ycEO5hNcDBfvDSv/rG+WxK0v9rRaMl5CsY930YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOoWKDgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOoWKDgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6028C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749360593;
	bh=1EdpxpIgH1feHlSuD2RcLw8WJtLjWSiCtqO4BC3fNZQ=;
	h=To:Subject:From:Date:From;
	b=EOoWKDgIvATEMEFsEHO0kGI2xmLuoLAZwslHS6IWpU06fdJiAmij9+V7sZxPXAqmp
	 RDRFxLkO2wRurS6e0idgEjZ0afurWimrhe/KTnYqDj+aBnnRNanCpUOrtgBjkevLDb
	 mgHiOqygLjmSphiXEt1BaC/gQYCAIAPS0Ce/7+PZw+AegTBT4nSNcMtxH88t7+DGNT
	 TIvWoL90jR+hEdSKUY1A8yzZFXs7etnYtRahxqLR4w9/aVVlr2Kjh0WDkIsBXhpvpP
	 ujqkkq9IOElviuukDB6Ng8r+tnBPm1rm+E0MM1UCHDhc5szXkFGgjkoRPaDn2Zjk8p
	 HUgv4uMrJ1yCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489AC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936059357.8810.5798760514890515348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08ba753c3c27b870b4723642ea1798a9b38ea695513a86c28285744936f2d0b
Date: Sun, 08 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749360593
