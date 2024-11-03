Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A0175D56
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730646354; cv=none; b=Q1ttFLHjhed8h+lSo0JDPKaSFZM6HPq8Mn/ccWLWOTXbh3hr47ZfBmuBuAQSw+wkZOKU46t3w7DcDZmugdar98fUKwT18UGy9uvaJKtxvubahimb+l2AX9DLdCSDYMZ0daOIwQuUr92hmynYEPsqp4LH6YyrdB0ACQj50pX4/bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730646354; c=relaxed/simple;
	bh=qdKuw2Tqfc30lZOLRg62mUN/EGDKz+N/IXpFs+R3y8A=;
	h=To:Subject:From:Message-Id:Date; b=SVvBNQkasvs7wHxogIA9xL5zd/OuyyXhD79WsgH+T8S46H6uNNTFdYoVKGYCK53x0dvoLD0wzgdLHgbtvd1MVm4nrzjvT+CtRmHGP+gThG8nNxAfrYt1HGJlb9mHfG6Vn6+4ZZL6N6urdcsn8hQL8le2nHLM6ti9IBWx/GQ+cPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyfzgJz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyfzgJz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C33C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730646353;
	bh=qdKuw2Tqfc30lZOLRg62mUN/EGDKz+N/IXpFs+R3y8A=;
	h=To:Subject:From:Date:From;
	b=TyfzgJz7wpF4fxkZ1cQcShnLiSRkl06gheMYmX4TXSFkEmU5eM8M9JEJAfrFkCHGg
	 4+p/ftYJw4Fj8WEgH1UvsJ8rIFPW8V6uUFhrOLkr0u/JWP3Twjbjr5v4CZ/TxaU57N
	 eR/dpX2cpbPEzRpoSq96a/KDV1biYQaYbD72rZ3Ws2L3QY8wfhPi6vZ87qYObdXiT3
	 B8bIqGNdiKmGv/CpB2uvsNW4Ma+01kHWmWfBc+FRfU2Np4KH88OExUtmnhYfE8gnuy
	 1LPTDyrwriT3h8G59riM5w5yct/6HQRMWejved76mlYLy8PWlWTS1TwR/DW+ZUb8rl
	 71Xz/kZl0SZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B81DD11102
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173064635362.2064.8333471421274389074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b416657a5156d5e0d8b8b3a82c7d51dd17824a44302ab9ed92f4b7f9f1d2f8b3
Date: Sun, 03 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730646353
