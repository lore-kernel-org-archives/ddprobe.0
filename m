Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D02211CA1
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725117354; cv=none; b=ZRQUWFgrJnAc1dtQKfbhPNhxaCOHSCHX2aMX63I2HFTBFYj/lGHPykBbEzUdSe3wBP+HUS/cvu2OjVpeZftK/4P04ms9kC3Ww1h8eE6GijaZoLLs/E0GFgdL1B98dGelQYSEHRSzET3pbGhbVanVFWIHwRg+EajittYP47ZOl6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725117354; c=relaxed/simple;
	bh=InYFTJNH7rJSgbVslXPdpSsxyO5ZjX+XmEXBKOF498s=;
	h=To:Subject:From:Message-Id:Date; b=e7NTUgku/xnKRvqCAvv5nxlKNmJctKtsSDA8k40nNT989b0h9qYfgLBSk5CIzEPtgqgctM5THkBJJzlJnMm5sZ7FPeqtt/kv8t6br/Zo25mVeUP+EnfRiKyiANt9Os9oiXz+O18OS6syjjZUk0JppNn9a1KESKWEijLRH0gjg2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RS2IGUNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RS2IGUNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3605C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725117353;
	bh=InYFTJNH7rJSgbVslXPdpSsxyO5ZjX+XmEXBKOF498s=;
	h=To:Subject:From:Date:From;
	b=RS2IGUNNDm+E9sXsGvxz4IzPJOEAkVW3eXRypvUI8eZnVPJSo6qA5eo6GflEAKQ03
	 M3hUJjSP41GvH0SwssZowX7U75jugza0SdpTxknuvd3wkRz9+uKoPct+2aYwh3vqEs
	 8JtwuIvEEIl5O+0rTm+W/s7Kl0jq9BTretKtxvZhihPrazCn3IdoNIVK0FRKJfCyeJ
	 WZxnzSi72bOheV3dQVf0gzdzCYruXkX4KC4lMqSx5ddZ0/AsEZDr3+OLBXcOf6zrrf
	 jIoE79ZTo4xR0DfYIjh5pA+S1Yl2YzGerfvOoBySSrIO6cW4W/CXOT7vmYLHEdy5Qb
	 xzqffmf0BzzeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D69CD13D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172511735358.4776.16761011130912077487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738ba4c6bc1a19e6e6ed1e85ff0e31f2206a28a865a33971c3604793272b1a7f
Date: Sat, 31 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725117353
