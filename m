Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE4A13AD05
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728822954; cv=none; b=WztwHUVM9UmlixXqZ8xigKz59IUMgAIO/P1nkXpQ+szwZmAAmR7HIykwqe0+0jGIqh9H7oAJBBDIkHx2EyIPnduK77twydLUT/nPeeZLCM52tVVXyEzWvY6rqGEqHLRTg9ltr3yBCh04i+ESjT+/dJ5T/C1HeRkpNUYkMpmiho0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728822954; c=relaxed/simple;
	bh=XqPc3P/b6EMFGv5TjLMGANzzioxY4ESOzk9VKNQIqRo=;
	h=To:Subject:From:Message-Id:Date; b=JitGE6d84pMGvHp2LKtwL/yCTfsrHnvT94y+YwNDIjLfn2LYNuoDqroj2KW7NZesCHsYvgjuQX4ICaDIEhdfDpLY3zxezu+FtQdWN2CRE8fRUWv0L/kOM7kiccY5O/GHzdTBap7QndvDLWOp4JF2ihhxNcqYOBJ2N6DXKSluNzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loqx80hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loqx80hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB648C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728822953;
	bh=XqPc3P/b6EMFGv5TjLMGANzzioxY4ESOzk9VKNQIqRo=;
	h=To:Subject:From:Date:From;
	b=loqx80hZDj8+11tQ74zQJn0HUR+3BAYFw6ZzQextAgo2dwixWyXVtQyJYdEc0fp0D
	 Bvhy1BS/w/C7qAIbiphUU4IFGGMueu1zP3qqvt190ZUWXlvy/0bHkkxRKXucoN/E/D
	 It/Ib71ZHIglD+XhoGudHFaIyQX1YtYcl3fLRTDwIMO6yBwfol2pzTDoLk/0+bpdtq
	 dz5Cb0BBTfEJwx+aIAzFPUFw8Hj7+GS4eKI+dCpz8wuL9yhdMwkqfmX9K+9oZ7SZ9b
	 jRGG/cogd4p0HyAjm4Xe08Cfx1b/ZIH9qgHBfOfmpyF8za00AfxZ/1uMG4kej0UVcr
	 ggppppkkT4jhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97395CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882295360.3023.12828056206080490564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d1f25d634e6b42acc61745601c448c82fba346598941b8f79decf4da133732
Date: Sun, 13 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728822953
