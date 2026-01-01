Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E24290F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767291834; cv=none; b=OQ3i693/aLjHgqUNXlQu6lljmQEcJImjr+hFviOaUXJPcGAwOND7nE6uhc2fTHvN7zRm6r+7bzXsoGuN+yQxeKVwTPZOaMJ+BW8PznM/yot5zLWl6EANwsz3Lu90HUOR+XnAP1cDLzBMUDb1d3IrTLXehF8IMx/PdvJ/Cu6S1uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767291834; c=relaxed/simple;
	bh=FKxBllvh7R8vNSzbqAVaKun3N9DTAmAMOpgvVsXnWOw=;
	h=To:Subject:From:Message-Id:Date; b=TAGqsfAIAmSz0I03MPjYjEBz7MmXlOq3uvctkf5F+N4QoThDZLjhRIBpGdf7bLR5z4QImEzn3cCBVhSWouaDOcLk/rjZSG9zpwRSqP7M7EryfD6IFxnxVnzlJyjBPahY4I9BIk/WUxMUcK1je+jWDctFpjCRFVvlM18xFqtJxrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avvBmfT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avvBmfT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C20C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767291833;
	bh=FKxBllvh7R8vNSzbqAVaKun3N9DTAmAMOpgvVsXnWOw=;
	h=To:Subject:From:Date:From;
	b=avvBmfT/r+P54X/mkk8JjcroOcKuN5Dk1mFhJahYYchwV6r57mDE4fUjL12H8/oBC
	 t3SIVNSEhuWuTmmkb/x1QZsZKA59NP01zoXLXD3Yn6OCfwYvUVsHsCbhXTGakwuOIJ
	 MLqTSEccRu2u/p0UcE3Gb0Ml56EhW5NsahJ2tnRG2F/ZEqvVlgnplT65fhHy7A3SKc
	 bU0RT2XEtjwQEoqzq0pOiHWNrvY4ktSwETNchdI3epPEYSPSMyv8TRIuWi4wRqGo1J
	 oiY7ukRF56xfSs3F2S4UHXbf5PRamjM95+IKm0vziSptSC4Zbqgb+eUtQYpGeG3Im3
	 K29SxGqKv2fsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94025EED626
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729183357.23673.12457971322756523363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce31468d5efec3d76d549aef8ef399ff97ba40c41e565c2a2395746746b38570
Date: Thu, 01 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767291833
