Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F392222A9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783986514; cv=none; b=fd2LFuacEPL4rEoJ7PVwff9fA2mECPys70Y/xEU2r/rFgg22E4UGcgJtUtQPfnkCGZJ2Z/jFMzGY84NK/f78AfSj2kdn+nYeO229yrfQLAGd8v4/16LpPjpAK+ZUAzQ9drVxhGBIHQDRI+TgRmME91N8/ebIKR/YYSQR+o0rRDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783986514; c=relaxed/simple;
	bh=/g+f9qdOvULjqNkfJjDJloPRp9GojmFzRoCX1IR9hm0=;
	h=To:Subject:From:Message-Id:Date; b=U4Q1HaMDDknWX6uhMUbfFqXODivfS46nw5lcC2klvcQAmHmOQH3sKb6O3/I/DxxC4zLzexS4ykDODlPKiaFLkIiw9CVgamF9KesE597Yg6q/eU7WwGcJeNGUgQAksxIMsWc0xhJIPE4lGB4FoByB+MmetrAgJm1+J2Nmkqnl4wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLOA8iRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLOA8iRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EE0C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783986513;
	bh=/g+f9qdOvULjqNkfJjDJloPRp9GojmFzRoCX1IR9hm0=;
	h=To:Subject:From:Date:From;
	b=JLOA8iRkN9bZvrjQjcdcHJRV76Fhp6JRJUgxax35Z3w1QRTleBlM4ZzhrRzdOS9xr
	 6hWbQA/VQq0opNckwupfg9d8NhL73/9BHJB/EEgIzKxWVNCJou5QKZ8j07IxiGaumQ
	 4Jd296yGguSxa7g3pG4DIvXB61GFw17gXsSnZPOz7/fgz9WVPLsy8Zat9PzROjY847
	 10hC5e9AJtXwaFOUBdpxhklaFJIylV/YgNn1YxF87FrPvhTrJDM+eEOdENdg9DWNI6
	 J+sjnEi0K4PueruHgJGXkWZymJnhPz+iUPKGYiR7y8r+ZmsBfYT1S66vFEZk3oQiiq
	 vH//ykXYNjkjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D12C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398651367.373.4998357351809541836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8dc943aa2c054596e8623cdbad0d413c9ada86665eb56c06fc1b197f659597d
Date: Mon, 13 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783986513
