Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A40719ABC2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748621994; cv=none; b=q104DpomyapLhl4wKKTwjZFX4ckWSDHMzmhUzSs2uhiXuaBHHt/xHbNqEho4Fo269RDHIZ0fCfcE0MCn/QBGO9QXgs2yeA5dGIUVUHNdzk9TOnGAp610q8rarN0LmJjjjXq7m0flylWs9Ii6lRQLWWWNtq5nwgdubozf4T1pXTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748621994; c=relaxed/simple;
	bh=RPIQStVOIdqrEWHj5f1UCepkem7mP+d/OuY9EkG6+9g=;
	h=To:Subject:From:Message-Id:Date; b=RqW2iEufwnzTTZdFzdxoSd1yWZQH1fsjVf/Qk8pzmuxDwu0tcpUL0spzdkEp/Dq3FIGxmUQO1OiV0xH/Er23ISFLty3AET/j2H0ipJskFAyrV7Z7klTaCJAnKWbg1ddQq+dRhFeQPpYiIKSRxcf45MYM63jAgtbXGp3VhNFHE/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTkZwvcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTkZwvcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2251C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748621993;
	bh=RPIQStVOIdqrEWHj5f1UCepkem7mP+d/OuY9EkG6+9g=;
	h=To:Subject:From:Date:From;
	b=eTkZwvcWP73mpOxkwCK5X2jPUI4nswg32x8PrcylCQnQgNoMAi5UuD0Lw9EvdVg6+
	 0o9ZObHxy+k1VdAVGlb7AKqEbpUuVQM/ffAhzu3blB5dBvDxMhYOsz7zP4Paa3OOSI
	 x8osok41NhAgiC3/7QErL+6rSH9JT2HuHjoppEHRYdoMf+5cBzYKIHMqimxd4Rxsp6
	 nVAo5vgtT0D4FHstTPeDbGCidVfWmwphfGtXaUbSyQX6L6m8FhO8JIvq2/uC+k1qIL
	 Vo6hfk9Ws90NbNZDGmeVQvIMfAPfrgpZpBS5sIw1AQw4hyInQNt7dsHL1dD7xbxAsZ
	 fF3fBBrROcI6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E0C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862199357.16994.3370173856971316393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be4b5fad2ad7df418c6187e8cdb47aa1ed9e981a67b65fd4bbf4fc0ee545ad6
Date: Fri, 30 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748621993
