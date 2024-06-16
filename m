Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CCA3AC01
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 19:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718567903; cv=none; b=C+60zoDLWlCSEj1abVhFL7HOkYGh4rfI8TuypqbejTFxvwAx+bg1j2VZlbdQBLeERNtLcEUazK5zKcMX269LY7OpcrmICE4OmYGFqDQ+mAmma5YQqa1Agyr2mZTrAVMVhA/86m2IYlLMTF3FRGVUQkBVJC0ADBlrHpf5N9LZPtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718567903; c=relaxed/simple;
	bh=oYtoKY+LfkRMCgCLvFRZDsP8vcAcd5MA+aaML4C8XTw=;
	h=To:Subject:From:Message-Id:Date; b=N47PFzjlb3iVZ3hemdcQ7tJUuPvkUcMnhVZfgNgtAdcqwGOIaQBs+lIXVgCkkf3sgWKwQD6asquXHyVFgRWnbjQzraQsyY4HLZ5PSm/TXJvP2HjlIPvErK0P+gCagPwPkezL0ihGW/KRZccJO+3OF7l4tGpAnAt5d1biHGaa+0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HENIhF0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HENIhF0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ACAC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 19:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718567902;
	bh=oYtoKY+LfkRMCgCLvFRZDsP8vcAcd5MA+aaML4C8XTw=;
	h=To:Subject:From:Date:From;
	b=HENIhF0tyRxDHAq/7hFkiCUe2FC/18qPbmLBK9G7sB5CyW8r6IpAmo3YRhnQ4XYew
	 8gQyAkS8InOtfdQ/gEmVavFUFs3NydTtVciwjPyVvtpeje/92RG9jg3XNgWciPfC0P
	 SLs3of5m/fBuTyG2gcAfbaBR7igyZy9fy+3lX1p72pxnt49XpbD5/WTyzsfs8fKsX0
	 R7Yq75WfV/CJWqbpgarhIV/wcX9Rh71IV/WpR2lhRe9HbOJ8688X0LC6gx1cv1ivaE
	 PpteWpWR4sEqwFvhWktaykhnuoifXARY/XIcqqH/HTD+siSzF1hH7wYm4ZsPN+eTjc
	 N8D7v55P3/XqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C252AC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 19:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856790278.13514.8787186296528095952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29dec8889b3e025ef9331733a315e291b98e7132c6b349c8c7813a497651166e
Date: Sun, 16 Jun 2024 19:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718567902
