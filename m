Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AF319F10A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747754994; cv=none; b=jgIJ24rvBG7GutkQh+FHV5I7LIiITvnf3R5m4hcXbwpLtDbBi9rt5jGy1hUg7XT3pQh/Cvj1f8cRnhWnsfkBhK9HSM5/rjFQ4KMs7tDqZehrt5qVkDS8MVkp7W64E56H07gDTNttPePIfoLxQqKU64NXCLih4Pc2HmvynNp7bNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747754994; c=relaxed/simple;
	bh=rGmlHrgeJl30AhixR3aHubJMUnVsIohYDHesr6PDVIQ=;
	h=To:Subject:From:Message-Id:Date; b=sLQao5UPleD1fmFDU3WI/nbyiQgIn6cgvbja5ql9u5YjPYLumh+dJFwagCVnW7yBXCgs0U2DD+ffp8o4m7xndxT54nltJMgzDg+EEkHGdSpW+mVlgUbCUZMhpjgzYVVW+VN1P6RR1oU9T6CJj2raglFVsHnS7iWEZzAJ6vBw4gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0HtO6qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0HtO6qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE17C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747754993;
	bh=rGmlHrgeJl30AhixR3aHubJMUnVsIohYDHesr6PDVIQ=;
	h=To:Subject:From:Date:From;
	b=d0HtO6qSYM8mTZ4qCaWLLZoUODvzWezsjfRbKaGsNzhknx/6sEeb3xLRbllIlIODg
	 slHDtqgjHTsBIqXwLwHpN3lmg30ZcOabvFTMXjV9XBCVCs5go70HvmK0v1UCqbTfBp
	 e3pTGcGxdI0vYmxJ+Y9a/1LyZrVjtVbJ/80/58j/f6Vq6Y3uctDtmbgoS50Flxkd8r
	 +k2hIc91UV20xfhv1wj9RBMvHXp2UY0YbOIoGFi7wjIIfgbvUjbECpZF5LgsY6pUdl
	 IZvDh+XXJ8nQ2xzN/zAqk7LX4ZzL8P2K+xol2/bsQBBp2NPavupIYC4BN1czDKEz1E
	 Wg96cmiijYbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE01C54E65
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775499358.7935.17148934596363774621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69cc5967d48047f8399dcc92b92e13c75173be1ced1b6050f4cb9155578ab0dc
Date: Tue, 20 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747754993
