Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0213E175A75
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773083094; cv=none; b=EAU5dDrEWVlG81PBNlnGXPVkmJJTE5PE3faFhnM8mmDCIm5arOHUMZytewCVMEML6CNjG25omULChOtVkkg7bn0R0t3zFyPWvhwqwrgDfGeEl8Ib3HV0NplNcypg+/S/jTDjI/+jbYy8lAWd13CPVcbQfK1mYJGVUwL4Hg+OFrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773083094; c=relaxed/simple;
	bh=YfwW/1Z7gwIg8iyLHwOVrYAQD3qzA+480TO3jedNFsc=;
	h=To:Subject:From:Message-Id:Date; b=rWHFJGIU4iBq/J7Yd91pjk4a6rt/GwXXRX/c3jzaVosT4w4UEssJ6HdlJZgfXDmhiJkrUyrFn3gWyE6jBGJfFzoPmrh+6gTM9W58C+byBTDocGFNGVlkH6ZHfpSC+gRvT4KsYgdiITH30YAO3BtWPZzIZA+HsjDUASdguctPTIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I89dRrFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I89dRrFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A01C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773083093;
	bh=YfwW/1Z7gwIg8iyLHwOVrYAQD3qzA+480TO3jedNFsc=;
	h=To:Subject:From:Date:From;
	b=I89dRrFJ6My2e7fh1n9x2UPT+AyZNlHeSRhcz48WevS0kDvsrb4w6RUpA7CoPGjdq
	 R/fX4wUAsLmaF8WE8GGyz1YOOmQw249kv7kG4uLtVkVtO/wYdnUFSY6UaV6ePkfiv8
	 i5EzJi4TFrCEl2bnIfT3vj1doN8cZan33GJ39Kh60TmVOzkP7UX10BYmfmfSAZhtLS
	 mA5vqAYWuXrmEE0I10+EwLsSJxRsJyornhuwT2Fjb2/71uN3Jkst1KiY3WJwwUdlXq
	 d0qoewrfRimzf84plhBz9mQSsauVOqQfIHsZeGPqgkPv4Bgs41Qi6EmOxdz6+smpUf
	 c3vVlnyhBTKIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340FFCA179
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308309358.27085.5908594318097183612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974e2a1b9977f026e1c1ff4dac339004cd383de46bab3fdfc0657e1aa48e706a
Date: Mon, 09 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773083093
