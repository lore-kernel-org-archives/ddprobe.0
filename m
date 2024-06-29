Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2C764B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719639263; cv=none; b=s0rjV5H/WUUptL7FKRxhXWIaIs0tqcTY2aVgwvnIWAXhbTqgzdmI9QVLbPj92szXu231Q+JeygItjDFK/gO1aTV+qyG4Ff0Nx5N0p7QRB3AmqQakbVofb0r/9QDAOCsROdLEHBffLe0+FtynWhBodAoWkNwYBMTDYZvD7PCvupU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719639263; c=relaxed/simple;
	bh=hmzvam8HAtCyN19rst5NU5sX2NfPXWlNx5w17V5BU8M=;
	h=To:Subject:From:Message-Id:Date; b=HobWONhIVgGFCvKWEticXHDiyZbK29urjxuXdi3Gd9DkEthcMKML2W+OnLuAIUjoHQXEA/OxRxGkPz+U+uIaqBlLT1PSwyBoK2ULozWMOd5ZfGMyqulQPqSoefWLJijX43wbn6MMrhoUwWf2rpGgA2jXqTzK8S0Lkwj62biKY+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBUK59uG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBUK59uG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12097C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719639263;
	bh=hmzvam8HAtCyN19rst5NU5sX2NfPXWlNx5w17V5BU8M=;
	h=To:Subject:From:Date:From;
	b=XBUK59uG4wavooTxTDzSNO0Pd+n4cONLYglEChhLj0q+ze0eMRdLitvjm11F86hs4
	 4EHgOFM3R4N6Hmt+ZehI/lipZ8bpAObEz/sWqbZLL7WVXC3h7NiqKF4QR4fGFmkcnq
	 /32gyi5A5aFautA11dezn1D47W4XaH1kV5+4ltLh5cLFW7N02sls0JNLtVWNYc0pMl
	 633oRAmfsTwjmDW6XrlEtxY5TIMkrzW46IKdOETvyHLm45rvHVKT9PWq7xbbER4OjB
	 sR/mLhqeY7aHW6smW4GNPcFew+0mchSiQgpWa3fziZGNENamZ47We+Dddj77NECeDB
	 kl65n3h2BqRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2ABBC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963926289.27494.16259340327187411217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba26cc5a1f92a74201ca05b79df5e9ebec6b94fe46fd5820539660a3fc8a62b4
Date: Sat, 29 Jun 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719639262
