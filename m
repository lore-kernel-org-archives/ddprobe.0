Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5683C1D6DBB
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739343655; cv=none; b=PMhxY8b0qvyRUn+pvRgswAWGnGC63U4AN9oQBf73Dg0jZzy852enVSjKc6OloHvruCRZa0/YYDoYP/hl0aOpXy3TL+ZJHOEkIGlcU4Ht950uSQ3fD0LO1op50d4haUPilEGIvUa/txTg5CU7LM2/3U7oVfAOs/Q4fh19kYQhfZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739343655; c=relaxed/simple;
	bh=7cfV1U9Y+pQLHv/4O0BE1fz1xv4cu+QeYiNUQmSGIUo=;
	h=To:Subject:From:Message-Id:Date; b=lgFP3zd1puzaAzQu4WlCAlSSGmafw/fMKLOKknhWQLZ2oK73VpBWtB4TVvJlMWOAikIW4yfiyd9ZeAUtKvbvXapN0H3u0YaYM6hp7EDqmDfKMPdhpgLQQGgQhqRlzCINO8sv6nuWl8J/xLyntr3X4hwM+rqjtcBl3qBja0P4nyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpkDQv62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpkDQv62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FCFC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739343653;
	bh=7cfV1U9Y+pQLHv/4O0BE1fz1xv4cu+QeYiNUQmSGIUo=;
	h=To:Subject:From:Date:From;
	b=KpkDQv62UoVPZ3gi/im0Zx0JzM2WDDnaMk6Bm+fv6bczyRSc02FkVkRPO65Ngj9IW
	 1tn81E89vRp56WrGAEhMBvc43KprOn40pp9iB/Te1+K76c6pJqhQlP/MGjtxHYYlZd
	 G2XD6xh2Fa55ynYNWPaNxvQUhJeoo6V5s8e736/fK0laJLPvSGec9f5MEzvDeK50yW
	 BpSxVWVPZgX3JW65AXMQpNHvrq69IRmC1nC4qHl1tECCeb4bFp/j3wvFbQxHnSyWAT
	 u/AngfjMsjvD6CujatYIJD4rc+Q7fE/t1eZ6wRudlGenf76Psi7DfFM9xIQuKUaQyz
	 Z/Qp8dn3mri7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB619C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934365368.31295.5907619819733742544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dd7c050a843546701f2b47c20a117bfda0c99918bdc3a38cfd9ef5d5af180b
Date: Wed, 12 Feb 2025 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739343653
