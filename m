Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127BF2FDC53
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762765794; cv=none; b=NfFzZKWrVVrl8AQapWX6sEY08000r18CIi84G1LrAdUUmGKBWWwQawD5KASoeKS5FUVdzp+6mywO2OEySo140xHzRoRsc7ahUAMM/Fe59TFT6uEiM0WWDfM7viLgwMN2Dhu0i0aO8rolRwwAPmzaLOcapat/6M7VlTMc0Lj7QiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762765794; c=relaxed/simple;
	bh=wSUj3e6/i5l4dNueAixAn/38kbFzx99vYgrf5QmqDmA=;
	h=To:Subject:From:Message-Id:Date; b=LMthabofcIkMtAXcg30oALI8Mdio5kyJXkcJISaeAMGtozEPGl+vl/MUwVDsP0yd7MHHfeFA+sHjEDLhRi3vJ6Po0dgIAcjuj0DhbLe8scWoMssPTeuBXDoAR+OUgh/eG7WXxil1nEaQtHemzEOQOoy7+fBgs22TVDSlji8XaGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEtSCagG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEtSCagG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A4C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762765793;
	bh=wSUj3e6/i5l4dNueAixAn/38kbFzx99vYgrf5QmqDmA=;
	h=To:Subject:From:Date:From;
	b=KEtSCagGeLPDtwuGerUatEfLRG/kALPNb2xcevBeVFcfVtqhIIKFLQtB32k0IL6iS
	 GPAZPFU19tPjm2mLq1dGGxd4ee0hkHx/I3iJhI3eYQihUlMa/2eFhqFA+1hfnYBT26
	 j3EdhKvbOy0TvYZffYvD3zVrJ3gqn8iIE1ClKKeUIZ8PSauQDlPzK3yQvxneTTRLW4
	 fkejFwGpBwGeCIOPNY+IvqnKO+vW0iRkuWs1+2dDSaIKbP8gqYXO7qj37gmOGyADMj
	 41lHlQ8vosddKwRLvi38Za+YsCeWyaIRlDEJxM4doV9NWB/xbc+ctIEQ9b1Km4r+/d
	 uqJ2aJml5hsmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91551CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276579358.17965.4996012265528155235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec27afc4b2404a7e6171cde6f9701cf5a6afc7f0b138919ea6f0a55fb6b4e8c
Date: Mon, 10 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762765793
