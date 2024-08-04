Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1DD5695
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 03:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722741354; cv=none; b=HfPIh+l3xp8CnSvsyA2ZGNAc+fy7RyI7sLOEvPhDu3mvGELtIf3xBISmnwC8TGTOLtY/hAMdF3u32ZxW5lzOMzafMHChwVqado9L1nzbzlgBGw+wAvdHAakfK4mkrr9LfEL2M6Mx7gFU24KkYhyywNMze++KEFVzGpy956lE4y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722741354; c=relaxed/simple;
	bh=ccy+fJEU2lZK6NZs+fkIHBgar6pWtbffmfgHMW6XjdM=;
	h=To:Subject:From:Message-Id:Date; b=uSIDeZ7Lxb1ftDMre+bKZaEtq4IC675Pkv/mo3Z+NEpYEbsWygGwp5SvcL3M19VYu6/E9a2bPoLHMQTmwy5NhRbcO47JkHoXOyFJxKa8+Ix8cZec/vEB9+xgWTc5Rpd03giN4VX48DV24f2qbxEEHavUtyUi1H6ySSKbkl8B6fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmuXCott; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmuXCott"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD3FC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722741354;
	bh=ccy+fJEU2lZK6NZs+fkIHBgar6pWtbffmfgHMW6XjdM=;
	h=To:Subject:From:Date:From;
	b=gmuXCottwXs/RzDMQuGBt5+wvu4Tf8Bfrvz+G8nyNat6knPX84dQ3q1h8x5SxMbZR
	 4UPaRGc2O2nQDKLGPX9rSx6tuXX2BQF9PgKrP0N4OQI4jXBkaTC2h8uDqBf4Kz8VGx
	 XZ7CmvcwT9tj1dp8U+TO6JU/swmMiLxIVXZhLuNlBu8jvnHr1dYFomu/RcfCWoWeoN
	 SdNMpiv8KpTWV2Q3kNkXpgVDLjKr7bWpaLKxDJxEP5y68x5eeQr8j+lPj0D4yvWHQq
	 +6l+/2Z5WGQR6+PIhY3zI5sPw48ga0Dyh1bfVWzY4v9+ttVmHuz+LjAnRO5vP9QjFF
	 7PAktTw2G9+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF3DC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172274135374.2759.16975169269666512105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ccce6cef7f19db33d7e1f8e0dc97b9b8e2945451a98bab4c0ab950b52627b5
Date: Sun, 04 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722741353
