Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175E925DCF2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750339794; cv=none; b=nZuH/goDdpEPVUsrkRYscCHOb0/eB3YbpUbj10zBRjg8Hv7EkbBwHHLe4i9FsJ4azj4zhs4HEyR+ZRMFRX4t9IuvhvtopEv03YKhnUmV74rQGlNCUOFN4d3iVmYf32fzzE3l6/Q7NosdXpd7khALRgchBRskKepS8MOGJxfNfJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750339794; c=relaxed/simple;
	bh=N5cddrObPawpoy0AtChn+aABY75DNaW9XNYti1ME+V0=;
	h=To:Subject:From:Message-Id:Date; b=HyxjmEaI1LHUBfG9nmZ4RMd1Kzyufbxr1wk6rC35mPkDKNGQVAq5kcNhIiAPr7mtwHicapCPDPqVxHc76uso2e83Qe5TZzFzN560uYAYP1MGdvd1W0RNsS8nX6iuMgeImel2XHNfs6luCOiA1lPZBxemESHlsnMczMQWJ1o0mCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFJNFrD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFJNFrD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E67C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750339793;
	bh=N5cddrObPawpoy0AtChn+aABY75DNaW9XNYti1ME+V0=;
	h=To:Subject:From:Date:From;
	b=KFJNFrD7BdSuvXG6ZlXOsnNsPBxOSuUvjKnKKQ7o8mcbszflkvhRy6HDtBwyGmNit
	 nNb5Xh3hhelOZRKysS9yD80EjtuKolZZl17qO2Fyxjj1YiyNMHcjhkmBQ5ppgKc2uZ
	 2EJ3X6VAdHH1NKpkMCSZqFXldpC+OTSC7JTNnfbE8ZRMeGe/Cpf6WcqwWrmQZoWVpK
	 2eOTMDjPzOGnlnPD0ayc8o8i6OHeeZjccCGoe1zGA/hhhJKRZ1WAJ+GpjLs1/rTJ6z
	 zvnVTwglfVNkp5EchwVWaz0NfHftFGccZ4wk3jT7BmI6TxVRkqPQKAi9YybTO01PlG
	 qbcCdvov1nqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE7C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033979358.22378.4359514327339991183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37de269c5ea5f74117cc09103baabccd4bb2e59e974d09dcb3782fe31fd29b9a
Date: Thu, 19 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750339793
