Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568822D77F7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788630034; cv=none; b=Ng54jKFiJWYvZe3VLVLJfN1ISGeo63rwhU1bEzGLQAsrcpp2Cl2aoD/wJQyJ2i2TucbFoZf0y1TG6rAhacbKfZHl80tRPV6z3MnbGoYEjiO/WG7Je3ND7fdq65Kp6b4aonWvJ75vWwoLNXNSixsWHuBfFFIp1duCwJ6ryQY9uKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788630034; c=relaxed/simple;
	bh=lz3yEmE938yB0/1pz3n2XUy7tNVkwXu6jdDd75bDUGg=;
	h=To:Subject:From:Message-Id:Date; b=pNoJoWGgIYA0UcHo+MRlgLh50LdkRR7wC/2DQOKCGLMh9RlmDQ9JfZENieAKx865G4zogw/GZPUxCq48FY4hftTCF2ASjLtS2tISFoUB1kRIaln5k2SkJ3ba67S1oaspzqh+mwKBBOgP5kEsnJeeBEmRivDgvCXAj9D5G2ZhF2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qunI+npY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qunI+npY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65B7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788630033;
	bh=lz3yEmE938yB0/1pz3n2XUy7tNVkwXu6jdDd75bDUGg=;
	h=To:Subject:From:Date:From;
	b=qunI+npYZpGjD+J0P8eOvhS6chQJ2XeXNyhFvFxCEVPVcv4S8N1uEL9GzXbDyBZcd
	 pkeBD84oNYfybvKaqcyuRXBIJAh0lYGl92EJ+rLXBVtV53ZDLfeeOlDsCVHpkw4SIr
	 zv3RekjDPCLZkQtMsDBrtH5IoKKkGKOF7N5GxuDjwK7Zfip057zKmMY4ejc4c6A5TW
	 m3Zkk6I1uxoUV/kqdmjyjQv2WX6WXnsdGXFvH0Co3vVKy0d8Vll6ByJOophFStqEgV
	 WMBSknWVUJcIDTav5YJJts2+t7ab4k5cvIwXxVTIROy2J6SnFO4SoRiGooHXGZwzpv
	 vZHUc8rxA5OZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B022FC624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863003368.18221.1154098999329318327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0791c536d7bdef3f68ecf01a5996bbb932a67258fddaa06b849092e92edd86de
Date: Sat, 05 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788630033
