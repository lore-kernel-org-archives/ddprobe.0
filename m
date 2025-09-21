Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2191EB195
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758495594; cv=none; b=FaPwNW2bwp/jjGTq5uhyrkp8B9Sm1CyE07Ve5PAo96bbKAP7ETBraVSmhM1z9R+ImyNQjcW2Skc2zKmirJ3P2zENBKiEynaqclpq5TMU4s0vhXC2dialjb6JCU17lRtf/oi4boU4iIlv47yNsh62LTJ9bWVbNPccp8gje/2wZr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758495594; c=relaxed/simple;
	bh=ZAwtukPj6NdRq5JZEVGiR/tYHiRKkp7beu9IapwEfAA=;
	h=To:Subject:From:Message-Id:Date; b=E2M5XETmmjknEDgg1/8qJiL7x1WWkd9Aid8OUPeU+SIf9SoXLlPH/PPTpQIFg6AVl7i6Qu672mUa4wpgbzugPu9uqrwzgqIur4C3qt8vblGZrc/EWrrhoKIDe5qP+FFeKcDNvP6bi/z8ctLU2p3GL4aa8idmMoyhrQj7ptZ6LCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfr1Cr3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfr1Cr3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7678C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758495593;
	bh=ZAwtukPj6NdRq5JZEVGiR/tYHiRKkp7beu9IapwEfAA=;
	h=To:Subject:From:Date:From;
	b=Pfr1Cr3RvqEYPh46drfhvrEgjtD4W+GfOaHkgJRVdnyEUcD7AU6kBpCEDer3H+LLo
	 vtYaMt1fzspFxKCPCBaa88uHYSEhp4yuGOgL6BDSnttFkZo3YDkUkW8lY6XVpb65Su
	 Hy7kayxUbx86SoV1j8mE2sw5dCJF+OQGk4jJRK1XPzPT8y/1ja4Y22+5xQVtAcAc43
	 uQRI7as/eOYVQRZYuoeezVpgtHGgGQbLh93NmMD6QOsDQ3DWBWSz4mcVv6gG+G/nM9
	 OSr19tkH37eRtiDkjRDRiitrX1Kreabt2VcB5FYHGAwRwHz/W7D/ZTFY7fayZBcDDF
	 4RSqy+cAhsGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F69CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849559357.28360.8067801138456251350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b43b09dd6050960cb8de1bb9d5ed28c5380d6c544a91d1ab3cddca467b9032c
Date: Sun, 21 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758495593
