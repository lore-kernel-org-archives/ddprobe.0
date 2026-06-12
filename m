Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B30312819
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781274994; cv=none; b=c9NtvbZwLei4Km5kjTIQLkZQ9BtmWuahnhcvKFdOkLX5/ZYO+qj09GLK+L6r1Iitrq4+Razui99fROgop0rOKq77NV88M38VoGGTV1S8ZqZKVNtmBNKPgJQ46v6fYIVCiyucZdB4+wpQxbIfcKlQbNxsD2grADbutBTI9ow2U6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781274994; c=relaxed/simple;
	bh=5mGJzyjY0749qYudm+ltL+caHWV06KmbqGhE1YpakPY=;
	h=To:Subject:From:Message-Id:Date; b=iM3htITMtBhFsVYenDwkNVljOZJkd6LNUvfivFqwLm6zxQ9wMX0FGWSLhwHSbm8P8QG6+5OQFi74b2p1VEywS027LI2sjJQYqqX6OsDEgXARm3QGHQffu5p4y5bsyvODatFne3Ol31095RTR11XUcket5bCosXU35BFsBdIcYbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7skJxda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7skJxda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1816C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781274993;
	bh=5mGJzyjY0749qYudm+ltL+caHWV06KmbqGhE1YpakPY=;
	h=To:Subject:From:Date:From;
	b=b7skJxdaiZXCM/PvSO74tbdAqRlwaKEQKhZIWpjf6zub23XPryvAK2Y4xckeBP9rn
	 Mu4n9D9vRW+/RAevTTVhAv3w/nEq4PvVqWZ/6NFTBhcXayLIIWkonRPrf2nC0UMBGz
	 PDa1oEZr4QKymf7HJ1aObNJ96aA5qQEjNljUpZsCiOaSW/htOoQiPfv7PTVCPYG1XL
	 6FTg5MN4KL0nPsxpRvh9J4pgoh5R7jEUonGyInsX/FCpiOc6SyQYNTSdhfT6F0ajzp
	 J2qbHbH+fs+1pC3SHQ1zKyxIVUugSl/vmP5h4yX01w0Rjop0uqMYyMxOd4N+2AElFa
	 0DXbQ0EuiBozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81FFCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127499368.3542.11871678926634143020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46610fda275f6b615ef7d9b1367d44bc4d370486c75026b7dd8d9d8496beb832
Date: Fri, 12 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781274993
