Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286403C0C
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727558154; cv=none; b=DXxwYuNxdgLGL2QK4SbWs5TBtYdVyF74nXAQFHVwBNl8DSnv7V0hOldVodyvW9u57YfUcMt6vxKTFkZvnoYAWTutMI1q2P8DDu1ClQRDvMKjgTh1CZskiK8ExRV4KO+1/zEXM0KGad0uo5M3baIaVfOJqqxqFCnibV2WQUjhINI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727558154; c=relaxed/simple;
	bh=jJWjuK0iKJRvbAWlmre4mqL3Bc0721C/z9ul5WYsrjE=;
	h=To:Subject:From:Message-Id:Date; b=FE1/XM3UvIcopT8Fp0NxbJCUhkcxxQMG07z7rHCUK18itgbta4J28pi/hNdmEi3SbP+QlxI8mHPp4oMDjgS6JKQl9RN4QXI1FiC7JOVsCewcEPD/LvEy03O48RVhswkI3XHOeDKKC0FrJDkMnLGdJNDQGMTS0yLWp1+BAd39O6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBxmmhjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBxmmhjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B1C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727558153;
	bh=jJWjuK0iKJRvbAWlmre4mqL3Bc0721C/z9ul5WYsrjE=;
	h=To:Subject:From:Date:From;
	b=LBxmmhjJFlXjsp8Wt2r1rUDfCy/2OqeDWmSKVRnS1+NgmnCS6kF6jgVF3QFB/62wl
	 mreKkStWwUJnUxf1XewV71ZSPrFXzydJ2PxFT7SGOkZ5LURGEPGA8EN48EUzbfujkv
	 q3aTkZ+Y0vREsrwTpua7br8z9iakFci+qFFYmeG2eYDkM0UBIB9aFPxRpkExAmwMsg
	 ShOY+F/b/1wuKz/c75D/wGD9AFd/yp/dP5D2opD97/UEPVH7/Zq0/5utI0FVjr1sjW
	 IpADyZQipWS2JFiw/2+AkA/cZU2YxY/JJ+wBUl4j9Zh0PytVBTNELXos1SOLJ37PEe
	 Y8Hd7Shpju3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90928CF6496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755815358.23442.17857628473656854233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203950521e78fa92a910a7a4894db63c5ffdb6f597253de9c7add34726503ac5
Date: Sat, 28 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727558153
