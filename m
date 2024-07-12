Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588E8D502
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720751843; cv=none; b=UMJACyVpdtho3kKYdDaBpqBuR/4YUOdutAOc7o9Rw46LOks40z3fzb1QZKx1hFQbEJcvD9sHYUMaRQsBmhTN6+3033UnlJwzDsA8yC20D108mOR4dNutbDSaAawWffq6t/8Age4QB6k6+bXMnohlnl2vaOPBzKCZh4kX0qS17+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720751843; c=relaxed/simple;
	bh=voiJ7OpEvQXUtLiUZspuKAKG7MnBa6ersicdnvZg+hU=;
	h=To:Subject:From:Message-Id:Date; b=nPb2liT4gzbMaAXa6mwDYmazfqhnB8C5+kSaUeFjMdJPCCWuYs2MNmfUlaAq47RQfQepCOvKQ8WOLkY+ToGZCYGHITSyu6d6vJoTcxjZiFOqAQ18FByWqBEFjQkfWKO06sUwEGZTbtFfh5MihHMsU28aM917+OXmwZb++3u1VGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frB20SMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frB20SMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DFAC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720751842;
	bh=voiJ7OpEvQXUtLiUZspuKAKG7MnBa6ersicdnvZg+hU=;
	h=To:Subject:From:Date:From;
	b=frB20SMKHrTXILK+Mm7ZbHeLuEacto/g3Q775mL+dGydIU6K2MCJxrLQfGhdWPHUf
	 nucgFLKjlmN6b2Kffh6K2+LG2EiJb4fjPiNvnVxV+pzBX+iHj6kzWgpJAtWJ4u/roo
	 vjGRPSbgqC9HlCAoAhHocdZSmAIHvTrH7XFmw7epdhqMwRarWyAjhS3scKnvzGV4nv
	 MICex5bv6rYG6DyKVl3eRULPCId3iZ71dc3RYcBFzBq5DRX+WiLN+w8PvZKTJHiGQ9
	 iDymjEv/fXIq7n6syks+pop6YSQfZmA9BfGqCv0ssPZ16rKRnHvUXNgGujrA/bs7v7
	 TXmrfgNGwayWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C313BC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075184276.28300.7466264761646192156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e78923c5c90c2d6beeeb9915c078aef6e0d96703a0522d118454cca83d16b69
Date: Fri, 12 Jul 2024 02:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720751842
