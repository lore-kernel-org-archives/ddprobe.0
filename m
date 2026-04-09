Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A16288B1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775731534; cv=none; b=XNpHy86wjXQ1r7MfrXba0bZ7T952uuD9gqzdHRLZD/lkfgQxStSsDnJZ85+BldWla+IYrW8UTG2FEQtyqCsyWl+LZKBYmqk2KJ4ZO0Sy7yMuA0snee079yH1NM6h8LO6FF8jmLYk294l/ojujKSH5mp34OSb5/q1EkNE0LLhz8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775731534; c=relaxed/simple;
	bh=9t7VKAPPAJXO2EkhLYEn7og5WrIr/65JXDOKzxz2gtg=;
	h=To:Subject:From:Message-Id:Date; b=H/Qm7YlOL78Jnm3X0RLDV6uv+Nsg9XRSqpzh0ELvVckHZBS8Dnkq+gYRRRU9DJBcFXcQ/UvuGvWWKbFCev+UbPUdX9M6Y+953NxuTNBOb+bZ44eEVX8LUX3eT/QdrueSzXsLAWqougc43i9JTRJM66PDUhew1PEto6rmCMBEB7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8CD/0Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8CD/0Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB288C19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775731533;
	bh=9t7VKAPPAJXO2EkhLYEn7og5WrIr/65JXDOKzxz2gtg=;
	h=To:Subject:From:Date:From;
	b=R8CD/0Jm9XqlBFu7oAGeRaKO0nmGQ1FQgtaCKh4aVlbVkd8ZjR2CqJeTqm3CLQGB2
	 ALzBoWyfK17ik78qxyJzLEWguyy5ApWg23gNhziJvMXRpeppR1MVbxbobUsKQ2l7gU
	 XCP/U1LE0pEHTll0T2SyQZ0djy/wrGnMS3jS1LFgA7mL11838engNseEu3hw9lq+K/
	 79QzIFdcKSj8rVp3hi0vdZ3gBTrzF8G7LeRytCAG6LqGHsBUGu1NZuvBElw+rmVpD3
	 rzIQ2Z/Cz3aQSo4OCk7KOGlhkBovsVWBMGTWbr2MYjiDPfT4GGauw5Y2g8IsIeTc+g
	 YawBJedIM8QYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE98EA3C23
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573153369.21826.8363782804116569236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310d4f4a6a71fb4f8c0f18b296d866772eddcb5f3b10f8c2d12d6eaa86f9858a
Date: Thu, 09 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775731533
