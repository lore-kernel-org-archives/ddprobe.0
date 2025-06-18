Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAE9B67F
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750210194; cv=none; b=Pt3gOIsEXoE48xhTrt1H2KnreBEZmvmizZTiUUCijCk5dyxkGnqLZG9DAD5FPuw0CdqJjGavgYicYC+wxI2ajj4FYLO4kiVdChXBuveZoLjo5Cdvta5LxLygCu6uSs4FXOxa7ifyoNKmf75kW3FvA2bGkvNk9ohaVfrM8VrWL9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750210194; c=relaxed/simple;
	bh=F5kotgnmLKA3izV+Io0pyLPCo+0EgpwKRbM10IQF2GA=;
	h=To:Subject:From:Message-Id:Date; b=WPb71kwRwdN/2w9e5vIv+H7txvT847Vlys8P24I6k3fcmeIT2B0K92HH6w96z8gqbFPSk3aVnYbCs/5rI1h3MEJdnBuyauooLCuZrB1bjt8DhAZKU8WIs8VBuu1VD9K/LcFKK3Szphae7sjuON17WI6UvDTbh6E33RjM6PySlXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6yZvp/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6yZvp/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750210193;
	bh=F5kotgnmLKA3izV+Io0pyLPCo+0EgpwKRbM10IQF2GA=;
	h=To:Subject:From:Date:From;
	b=P6yZvp/BsxTHqotI6r44Mu/Bq9/7BzQoqoirJjJAQZpA7w2Wjpt6Q4QQ4rlVvvh9C
	 1L9O3DEm5EtWTVdChMez55QDG7kUYdAIuy9+0o+glfoFVhAXtUM37DhpLRjjzjfK1g
	 S+xueDtaUnyjbIzv9pMTWdeHKPGMPHcg3tAjr5jYftwpKa07XQ160VgkIzakxXUsYr
	 RwhjiHri90FX+tskUM7mgFflpv7Z6nePy1+D2JrlkvWEM0uaGbOWz3Woti/Tdlf+38
	 eP7it45Rks77u+UOQdc+qal53CcOfYXeafUEzSBB7JUf4W4NER3UWKf4DGrt347ttO
	 zMNx60V8sNCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA3C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021019357.13707.4159959664079262983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fe0b05a1243a4fcbbc72a61346782560127e1653d3acfcfd2c7769559ccfc3
Date: Wed, 18 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750210193
