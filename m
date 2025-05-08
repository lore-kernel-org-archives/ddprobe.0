Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271912620C3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746697194; cv=none; b=XQW1woVaD8h/cdDb8YCuwIEPowSXRh7gCQgKGATRnQ0PFpvRMh2HU4z7JD+dLk+1TxHPe35fMs47tzp5t/+Nurvwwl8AyXmugO1ar98YDtrpFl4GtLjOYfHrqG6pleFXYdwM5v5UIIEOsd1e72GXNaL3bwZoxa8tK5SMEkUp2PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746697194; c=relaxed/simple;
	bh=xQ4R3qe5g6FfOI+VGYjppWaEJVAxiiXsl+1brcI4/yE=;
	h=To:Subject:From:Message-Id:Date; b=LzI5rxj3Q9X1KfyraN0UmGug+1wsTELrRimsCGPlZ2gGIU0ozRFLXzbQ5DTcZDpIwaGQFil9PIxZoL86kMYzmjA5Rck6msx3uOa5zmpdQTO0f5AYD8Ye4jTiijkse96U3fdq1o1+PkwDW9Blksz4Up4alN06JR3NDzaKEzse8B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEMa/fhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEMa/fhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F586C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746697193;
	bh=xQ4R3qe5g6FfOI+VGYjppWaEJVAxiiXsl+1brcI4/yE=;
	h=To:Subject:From:Date:From;
	b=SEMa/fhDnbMvBIUu0w32kHeIuwGpd8MJP48IwaqskpinTbCVUCtsDCiPPMuGu80HO
	 L/qA+8U9uGoyY9S71dr6z7XMWWFtawZwUm+ssm015az7W085VJRrxalIjK5fYG/zzz
	 XodtI1n0DIw9+6f20o0QZf45X0g2459ORJEoFqL8oPguhn74ywp5a8EMjbUdwJICT3
	 2OuBjLPqXsdGudteMRMltxZOzH7qCPMbxhh9cfI1TlSihTDI6gsvkaMIhW6Viob8yX
	 kXHgnT4yDix/ljUDRBCvcicjC+sucxr537lL+GQpsAAdz50qohZOkffmJdT0cQ6294
	 nZYg6GSjP23TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90488C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669719358.27942.10845061578268523175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad588959b865aafd221c3d8968201a89ff474a5677f0c146fc8111b73818bd4
Date: Thu, 08 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746697193
