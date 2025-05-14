Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB12293759
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747255795; cv=none; b=F57hlZ3voD/i0iUU4dr+oYV/NNwEWIO5q18wkFyarSbMA/+rzG9B4a85YvOS22HXi/lbpT9nRjo3ZJIK5K808W1iT+jGS3zRgU2KW4/uw6gZGeMtnMdmEYWltY+XqbW9vSYbiuQr4vWBcbYtbpYO63Ra2prsuug6CGjCICr1B64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747255795; c=relaxed/simple;
	bh=Fm5trMnwBCzK7J0+aqyiC0tAuBTUOrrxxIRZeRwhbFQ=;
	h=To:Subject:From:Message-Id:Date; b=cHymOoyFoY4qxJxb/GOeuJpzd/EwjKeKD68Md+8YS7un4uftHMc+IuJ9Y2kY35t9Lrahx65RXrdsZGKndHI69anUaMyIEXDVEUFskv2f9IrpYRV/CK0x1NScpZ2WYJ5d4Eoc9hk9QFkSKUWL1r0+AXXJTd9+7OxoJdNqRM0IPAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MELNr75o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MELNr75o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3427C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747255793;
	bh=Fm5trMnwBCzK7J0+aqyiC0tAuBTUOrrxxIRZeRwhbFQ=;
	h=To:Subject:From:Date:From;
	b=MELNr75oIWlJJFwG3RivRPBFeNgEOe/DkAqXju/gaCim2i/tnuCcyt6znbNj7TM1z
	 kriHGjBvwWLMDKM/ol39noLPApMK3d4SGpXlL3yI4Qo4T8lg3Vth7T9nA9ufBy5/nl
	 Xf7cJhEDxA/VF5K9RZewQhjRl/fR8ul7pcStGCwwpDO/EBW7w6G4ckLYGPqvkszizX
	 4XhvH4uQBn99yu+tz+u2Y9VDUihnMog2joMhxGnhELlJEVIyGK1wl6qbF07y9RK50e
	 r+kp69CqzGGBcbsu+JoGAUjL8PIJo0VgtnV3UtRfkHFwmqhZe5c50RhYNnzobpFhEZ
	 E6URc2Snk12ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91690C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725579358.11222.16960455177752055683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cd74805f1b1f2c2a868c8dbbabbac789e902ccf205d87bb97f6cc8aa6d92ab
Date: Wed, 14 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747255793
