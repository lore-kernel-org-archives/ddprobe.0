Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581E82066DE
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744224594; cv=none; b=OjEiE1J8mR0Oy3TolQFlfPs/+kArPFrW3+Z3hPnZO4APMY4Y3TmH4sADfeBYsZvjxt6BVWlDQ3zn/dZB2na5yPEd2bZIkuH/ibhmQQfZKHKp2G6RjCSHXhW4J3kx04gxejeaUg3i1neAxVzvk51DnRf2lr9zQHrTb8SbYXrUeXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744224594; c=relaxed/simple;
	bh=vqsvIVZ8IPMRQ7aWUXJGKnEC6zubqC/ifGpAKGlgFNk=;
	h=To:Subject:From:Message-Id:Date; b=ASBfNjz7FyCHrA/ExuVtZFiy7TBPx334WqjX/7AeGvzAaUgUecu68I4BzY3mEvkburJJLprOr7fkA2M9IDZ4YHsj6mKj34ik3d2Cwzpx24JRHazI+X+PiWOVfMQBVj/RazqIBEZ8K2zRv3tqvyGdECIRU84jY5MCgv+cE6dV3d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dItDPOYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dItDPOYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC07C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744224593;
	bh=vqsvIVZ8IPMRQ7aWUXJGKnEC6zubqC/ifGpAKGlgFNk=;
	h=To:Subject:From:Date:From;
	b=dItDPOYyrS7nmh4Q8oFKBFtkIPwAeOGXLV84jeKlxRS4S2orGDu8f+9FVUyx5ziQv
	 O6FG5HaQdFqPgvpDWH4MFV6NIY6OUyjzUaiFGQL1GfpkfWn7O0aGtwBn2pPQVxLY0u
	 gt5ULfaTpyStrkT7fEJbXFQBxeGe5GVDBnkRGW/w0uNOAPt7difIUe5MBw9PocfYcF
	 P/U9kKw/fMltfyQooxw4hmqdfkcJetnCoMSPLvkEkl8JDDGwJuOnUezenP5NbTPBj9
	 wvM1ViOvHvWARrQkas2V8eRAZkQsv0kpJAkTerICI0vRwXorI0tWocXEnu9dbsg0aO
	 rj5hCS98IROCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5683C369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422459363.22134.16244133070894098990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db15efa170d60cf3aeece530124c2f640ddae69635545570fc126cda4e756198
Date: Wed, 09 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744224593
