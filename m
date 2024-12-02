Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490981DA103
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 21:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733176555; cv=none; b=hnryIB6OP4eIgwVfRVfVAWuWGn3I8i9MwetocbDcL/1ZER5/OVhRVNU+JWXblUXeykxcS1WKKHKrDlWWAz6vmaRArQjYkD7WbG2FIuAXAYrMPLvDDTUs8qi56fOk0aNIf11A+Xc1CQqdFjFgpwYbp4f87dgYNCp10ufZnU6dLNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733176555; c=relaxed/simple;
	bh=K/KO0yEE+OPRNrZGVEfHZxXig4NeM2yv0GouPcH4E1U=;
	h=To:Subject:From:Message-Id:Date; b=GXPg5F1JLmNVI42xGFybwL+WLJQxfsR92WqSaorzfjOce5dd5LCXOIgsB/C8rx8Z6LzHXmjjmErTeu08Xd9IAoWGtXFQ1UkHzK/b7td4RfviQXxsPgifZFrcb+0VNfTs45JC2EajqXCDtPLuHxOe35RrDRwbgs32Bonu7h30Ghs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uu6gctSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uu6gctSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09FBC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733176554;
	bh=K/KO0yEE+OPRNrZGVEfHZxXig4NeM2yv0GouPcH4E1U=;
	h=To:Subject:From:Date:From;
	b=Uu6gctSv9c80vrhlxUql9uLoAmdHwghVNBaf5EMN13/fInUk3i0+BUqFybLUgCeOy
	 iqFpR0srteDq7N7KVeSJyuTng8hmkGslbH9oZAubWXn6gvaRxwP+jz16TAA5bpzLT0
	 9rk4yY8K7lovZVmBYvJYtSPvqfT6OqlCNgrLvT6gCkwnukH7OARahtT2p/dTB8qEbC
	 AY0jrmlMN/IddUTc3FLkGdxt6TnwYj+tEh+c8WLjBHSK4GyHu+bTH3jONieyXWMUUr
	 6ZpCyN9+9APE8S3gBg7DsaGkqORY3xL+OcHwlnUa+M+uU2nu4YAM+4WMpzgyidv8Ol
	 mjN1pKd5eFU2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D7AE69E95
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173317655368.26352.10739144918982971046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd8bd358b797a07214dfc2c90e59b4d3bb8b380cc5e024954510a496952253f
Date: Mon, 02 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733176553
