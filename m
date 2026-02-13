Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216F623D7E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771001694; cv=none; b=Eh756y3u/9qzJ+qR4GhvWmlgcO9nipF6A9w33k3ePlQEsk/1qmoYpfGCyHmadvKeLVW0pvoA0k8Df/fkPasKyus+C2jHdp1efy0RTPT1zVzQtd90e7g8noxQxsYHKyHPuEPduwQpMlyjJQs+I9y37xaj7Oz+IH/E9dpCDIFC8lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771001694; c=relaxed/simple;
	bh=zpM7oXx2qRKOIm38+GOiPmIRXU2Lxp+va7sh5Y1GaQA=;
	h=To:Subject:From:Message-Id:Date; b=JyLkS8XyFyR2bA6/nejVlOWjheiNXJyeA3IdFzxUkfbW70JDKe4/Uf92VlR43PXyUjy4RevUIq4jMtwz4fH4IT6+tkDDjL9XyImlweq0dnDGEXWNaek0SLUaueh3WXkXZjmUTARgEJEjVEZRDdbxaLqs619tgwTvYtyyEW/gTjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHvAKnNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHvAKnNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAF5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771001693;
	bh=zpM7oXx2qRKOIm38+GOiPmIRXU2Lxp+va7sh5Y1GaQA=;
	h=To:Subject:From:Date:From;
	b=RHvAKnNqotr9LvpTobSXqOH3vURyo8sZYY84aGGWBsL0X0r/oBZRGWjQHUogoMR3W
	 Tiz5oviUfgnSMy8A46isSqpHYpIlxoAodO06duo1dnOOxpm8R7uQiAobsm4hjNYlX4
	 bf1z5Gkq956vlZo3T3jP/OYwJbGxQDZL616tpFO7TlbaSNSQX5wLK/aQIURqdYGUEO
	 Ff4JvEyHLJsX8gSZanuGger0PmzaZ24r9g/mRbftj8cXWJVH2gcIF2VpBXE3DnOlls
	 IKZF4YvZzRImKH0BpGrUBnbjzjM5z0ztwzBtK7LFQHDxExfkElz/AjK/AsgSSko8d0
	 lrAAS2Pex5JHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEB4EDF17E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100169362.25238.11879636330263597400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cb5b6c038b2e018595d5e1c5cf091f977bcc1bc2a0d2779099794b434b4cb3
Date: Fri, 13 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771001693
