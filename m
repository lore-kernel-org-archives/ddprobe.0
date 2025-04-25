Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF2328B4E2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745594996; cv=none; b=imJccv8vpwgfUYLylj/gT/V/4TpCEVdRkCbPljBXZmgI8tLX9LkRJBsgO4XQ3gqMap/M7qEyT/SRVjd/0/fepEpbuhYLmDaXfU8ZKXgaQY+cgi+ywycYSVEEN6s1eqafLNKZ/FBBoL8ijiURvkgFrRtnb+dfaBg8uIZPvpu+ks4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745594996; c=relaxed/simple;
	bh=koKpoOT5I4VqJEotV6QiMr1vBKPcm9ABBORhOrNCzxE=;
	h=To:Subject:From:Message-Id:Date; b=mG3Uu4966W/PILA/AlsDopoUoNRN5rX/eSGiSWaj/6zPCNLniGIGUUtJPleKnl0pgn7VmsEaDqSL+bXq89ae0WCp0EeVDY6DqTNV8rdIpYVG3PmFdCVuFLFzqhu8YiCNAs9ES0w79FdNK1I2GJVuU/8HnEGuCYhBLsCHze96q0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9SAmq8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9SAmq8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90DEC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745594993;
	bh=koKpoOT5I4VqJEotV6QiMr1vBKPcm9ABBORhOrNCzxE=;
	h=To:Subject:From:Date:From;
	b=M9SAmq8KvT5qQt8NLA8u3OaDs4ZDaWJBcwo7kXUko8Zy+TrtmBrSRmFfFtnGHKThh
	 +Z8sMGiR2a8la8NFKFSRysSz2XgLJz0HfhFXrwLV5be6z4h+Svs5WleHk7lJ+RT/8q
	 hSwdKkhsY0KnSyen+hqHRDan0xOeDfYjaYG5RXMcTqYkR6isZUqVy7Ywc5G0erA7kt
	 nlGN8JNg2+4E2G6T1bX9w+m6E0tlFh8VMO7TaMJTI7cOfVmA6fOHzmToIiT0K/4j6N
	 6Vrd/yDyU02Ulqh0/IAMxeLlT3awkreslmmTZeP/R9P+rxPI/fVN41i1vANDcd6o32
	 3G86K9BZKMeOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97770C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559499360.24366.13153116052079260345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b33847b7334a58ea72894ff8b6b014ce05b0168631db60376d112a7a4ae058
Date: Fri, 25 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745594993
