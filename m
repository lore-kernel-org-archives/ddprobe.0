Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42D53346BC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847033; cv=none; b=Js5yW9DXyiD5K/OBEmo1iyRE/Fna8a+ixpzoyodLmuba5av/CsYbG1Aalpi++XQhnA6Y6h2vBgqxw+XHsCZ1M2PfQNeQR8LsHT14cB+IkPqBfXi5HpZJxaxwzA4HZWkO2jBNz7UPDTgaWscVdbTKjpnmFwtvXk/hxkmpTZYK/ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847033; c=relaxed/simple;
	bh=x6aS26y7zQLtuTs/hm9/CKAe1sPio43vQixF4DozkwQ=;
	h=To:Subject:From:Message-Id:Date; b=KvM3053jcVNBmQI5ZnGnHLWEX2gNl22whyZTz755J3vsXNdPflip2CwWFyJllCoib6sOHVFUUu9cyjpgc4yOyox6n82K7FvKyNm9yA1BeJ+/LcyVWroU0U5yexvpJT/XTaRJRh/yPY+ZIgoUHLSZrCsEE8mswe6dIqvNtrHFAag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvBDBrGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvBDBrGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F966C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768847033;
	bh=x6aS26y7zQLtuTs/hm9/CKAe1sPio43vQixF4DozkwQ=;
	h=To:Subject:From:Date:From;
	b=LvBDBrGGwbSWTpnRIULYG60wKPblFdT6S539/VMbQwTpru7Wtp0WIvzbxVl3jvelm
	 8hzc4vWCLwT+65BsMGwkcfdE3VYPvuaH5kRKUQZYhbpgMjmTUWufobhxG/9JdN+Ay/
	 OFWRGSIP1aTphEKqmYt3sloJj042SzCebW/ey0DZwg1sWWsrVLvTn6QdpP7RXXacxX
	 Dly1fYaFlPtZdrwhbBHCKGqsdz4+P67VdkE8+6hVnRxhRZgaG2deCtKVMCIkdbwbhZ
	 4Ugh9qooRx0QNFql1f2qeRrQS5ndEbW/HlKKR7yi1x0X7JjIhRpQTQtsPD1BgPeilC
	 CUhjVlU06Gm4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911B5D29C58
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884703358.3555.14200006772469266093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd456d2a9a0e72ced36c0fe9216c8591bb16311893b048c99e1d8ceea01cf854
Date: Mon, 19 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768847033
