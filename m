Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368902CA9
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746671995; cv=none; b=dUP5VKatYvqLTLCLB4XPgJrFTDXBIETJFoKoR2QZfne/6tJAYnHVJfhWtZMS/VlKb1IHVvMuDdbvowLpnoqP0/lmAgEsP5i9UN4jxThlx9kaSZae0Wk25OzINzLxyqxlkSe3O04/1wmJ/jVVrDcBKwR4IA6uAPD9AZO+AZZqtUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746671995; c=relaxed/simple;
	bh=N+bKgNciJXJBwqmMJPNk9hGxsg2BcEDZ0w6F+ZEgycA=;
	h=To:Subject:From:Message-Id:Date; b=sa5aMfJxZatlxCm4O6cCaUfOVJYmmdzYoSzEMKwJvK7IM7RnlO8X3Kbp/dQSni6XAYTVzQRKSdTIAeiGFlPYHdawkQZiTiWDDXjv24Wb2RZ6Ekyr5x7weWPTWkHkCe/0RQ4NETLDSxDJ1pzAzlOrKIxm6EgO40GuxtS2ji2T5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zcf/g1Gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zcf/g1Gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250CC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746671994;
	bh=N+bKgNciJXJBwqmMJPNk9hGxsg2BcEDZ0w6F+ZEgycA=;
	h=To:Subject:From:Date:From;
	b=Zcf/g1Gc9imoNllypB+wHrs/IQO4jrn8L9EsKbRihNLnSu2KnXpudL9e9MvItt9ow
	 rvxV0NRb8NxU0EaSRX8eAtWf9qZxPTp2wuxnBbDv/WjHP0k3TeY4CqrUUl2amWFwE0
	 nZjhXGsjOHnE+I4MP61cQWO6VUbUFDfnoEbSe2HTZ7HhqU1fnpeCipDMuAmYnrUmVN
	 ex4B/68J3QwTecFQjpXNSxPaaSMNSzgteGHZo08RjELP1mjFEC7uxtS9iVlYE/olxA
	 EC9sopuV2hoCIgAXbts+tcbHPeD/HF4XiUKJThS47bWD28a+Kilm4jIAQrZmYIpOx0
	 lZcBn4hQ7smRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F3C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667199358.17527.11413926724520513495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e6c0e4fec07736135d1905cbc6b36fdeb2824fddc1e81fba931bbeee20cb29
Date: Thu, 08 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746671993
