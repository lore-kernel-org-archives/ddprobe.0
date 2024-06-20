Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7271ACE83
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718889023; cv=none; b=XUu4QWpHmPfbUK4ug9CCtphGdtRttEaTgHrCfIqKeUNoAsJnZ08WkOPvKxQ63mw89U3/zeevADehJx73ddqU75B9oALCL1XP1njy1YpPyGIir3wlvAvwCTMSc35LGdBdspj6H8bwxDfIcds2MvP5sXIu5eCSss7rsDTYers7duw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718889023; c=relaxed/simple;
	bh=gQh5luD4aLC1tZnK9xcgSL7VTnkIDSIuuGQN1Ux9qpE=;
	h=To:Subject:From:Message-Id:Date; b=bTxkbSqG/jAcdEMBsEhHmjf7EVzqvghIQDl/OX8s1qMO9LyprMZLTlOe8eCopcZN5h11oXjThVOutpFkRUwTjF63EY2emM+zJdn+3ou5IxAX5T2SJWOaszMLA1DQLjO5PBAcQl9/dA6A/VIwnPYW/YdxnZQRhj5T5WJwvvs+hdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLTaqnPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLTaqnPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF212C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718889022;
	bh=gQh5luD4aLC1tZnK9xcgSL7VTnkIDSIuuGQN1Ux9qpE=;
	h=To:Subject:From:Date:From;
	b=MLTaqnPdPY2hJqX2x7Sg3aFMw2dJ5KxYYf7Ojqh0lqatDmcvxJ0iy7NkliH6gK++r
	 iF+hwYmEt1mCzroonuMdNrA9JI7Cnqlc68IXnpGxrYT2M3E8eDa9EgZPF7sj+VbzkC
	 yYfon9n2rp76pqqRq+mP+LLX6QISOeTzo1nrFNVb+rEjB1hpIzqs55bJHMUt0yCfLd
	 dZu4OKEfwRfvnC+OFJUOM2tCkPEzJIubT8E2Nq6zsJfFXsk19M2aIg0XDKsdrC08Hi
	 Y/DHCuq0cBBZqqn8XM0XqsyIXU4IgO9coI8Gdb9mhH8TBCJN1sk1LYmMxo5ebwT7se
	 Vnt5gzRLEFPiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B4AC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888902280.3883.3004326498776178142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a545a123687db0da6be1a0821d0b17d025a1e88d366db96ea5c0351b6c65ebb0
Date: Thu, 20 Jun 2024 13:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718889022
