Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E130486BBC
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792059034; cv=none; b=e6E9vmy7F6cqGHvKpEPj4DsIzBrC5uR3XJzyPsUiFmSuTRKg7jSq4NE8l5+cj5cXsHMhPCAS39uz9k3hB7XLYA6HajtzXvA4EkdXD1lA14hKqMQwGhoXj3Sn1FyM/W6OGqq3+KssbWQwoEaOAd0oS2ryjOKNCFR5LwhVNCHfHxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792059034; c=relaxed/simple;
	bh=IQUmTRVGTOQeCFjNxz5+cRGm1FSKqbmKif+IosfSaQE=;
	h=To:Subject:From:Message-Id:Date; b=PX1prY8e0MT8ihuk5HubHZ9yq6O5fznPzNExK6AS8p6hdpoa03XiZlP+3cCCe4fgKWgezoCJUhW5nAN8hh+qv0DiZhxTNpdZ298PqcZxo63am8rQHinAD/KBuW8nkB/AooPAy19w1Y5lxVj+ctAABuoiND7fd9VL1kvBMGNOGAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk20oA0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk20oA0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6089C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792059033;
	bh=IQUmTRVGTOQeCFjNxz5+cRGm1FSKqbmKif+IosfSaQE=;
	h=To:Subject:From:Date:From;
	b=Kk20oA0k0CgnqeyzKiW0fgZ7us48wB7jx50E65CU5xi/Rryw6U5/wp1NKTY+GaUDA
	 AZRkWwLqTPd4uyyHj9RpDFBVTv1PxP5660u0G73igHIHnZCBNMIAyTNJcOnif/Dgy5
	 XCJgpuC9mUFUinW+HloKLNPW6J1nTg33IL6zUtMrZj9LeqOLrBQcJrDkILovYhXSeW
	 Uqg0ki6C/p8tLwiMiMgB1zWQrXRGhd5UdLNKpDGONsKQ50Og60qmxjSlnD8Vo/WHbC
	 qc5tyg0D8uujAX5Ez4GKxJfdCgY0ndP89VrQFyAvifRJgIHr8wufGjfX3hawOkkj6a
	 eq2dgvp4BU3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE2ACC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205903368.13777.13834231134155602432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5f972e7a473dc1bc352b172a123cbe8648c33d196de245a2c331870b59ff54
Date: Thu, 15 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792059033
