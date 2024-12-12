Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB3153800
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733999154; cv=none; b=FsVeFWt+vp1Mcs0RFtEXNHj9EYwIIWK37ZL/gsuBVSEzG9AMJi67GxAo+muhiV3347DvVRo38J9O72xjpjQ5NjfDAuxPuAL/gHBIyzQoxIdDgDbV3PP2xMRXVS7GSD0W9Rts3aFycyEfTAW/DDWCRD0UuEdGT9e3Cxk0LBzWILo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733999154; c=relaxed/simple;
	bh=F8le4FpFmtgsORFtpvfC/TswK5Z7nR+pSBEtPtorW1s=;
	h=To:Subject:From:Message-Id:Date; b=aksfLWzg225hxhJaSIsc7KSBn4TT9+thq0ISFi2EYt5mokIuPWlrXBMR3ExqB+kjn/BEL5xBSpSPjof+GbiIpMFkP9x7TLF9k1DPLCijPLjZd0CrKcqAOPHPpHhGMK2i/SempRmg3KwUCjMKPzWSJNJY5LdI9lpUh5gLJuiqtVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6EBc5dJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6EBc5dJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC17C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733999153;
	bh=F8le4FpFmtgsORFtpvfC/TswK5Z7nR+pSBEtPtorW1s=;
	h=To:Subject:From:Date:From;
	b=G6EBc5dJAq8zvqcGcTxzsTPkLCu5BCZlVjk277NWC96ffCdtEsu1/5A7HD5fvd+uh
	 7Ztjpkvvsg3PQV3qcopTWABHRYFRjJgpisXT8r1zNFfp/1ZLVC4i89qSgAkOp31bDD
	 svgk4uQRPlb9kvv5ZGGra9pfMtJR+LjehadeecGQqgAKiBNwYC6K7drzBYQVMA4U/u
	 ZQamhjM1IsObk0L15QUFbDEh0qesEekFPyw7Hl/nndSu8m6Z8EfsuRRL3zu+PrdHAX
	 BWQbpGYW9e/Ln5bX1EmZItz8k4CtimLC19ZAKREzKOoifvD/ODkhM0PC2+7L2AzMMI
	 YNQSjF3QlbYCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A305AE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399915365.5448.4885020160121311301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d877250183e36a36582c35358d6dd7021a00d626209ec937f876de44b419d3e8
Date: Thu, 12 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733999153
