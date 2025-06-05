Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380CB1C27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749123594; cv=none; b=uWPudCfpBv2NMzGWVtWT8eK/pNQlkfEvtAU1flrHQqcRz/FMJkEWJTiIIHZdUCe8Kc5ec6hzAwNwquEhg84IVYBGDeCX33O+F1ieJUKRrGuGscoh+wNU9hDCoOsJN9aptfy0O6g1GLHA8GHHb5iWhNi86WoNEC1NGkAsTZIjnsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749123594; c=relaxed/simple;
	bh=Eh91SK7P9+/pL0C/Mk79E9vS5BGTMl+98fT3BuiXXPM=;
	h=To:Subject:From:Message-Id:Date; b=X/8wn/pp5tUvvpXLR5Abe4Es4PrTmZH4MACPsSCqPuT78xm1D581E0csm5WvwYuolXem6Bq71gBUSloiFJBt7nbrv7N5lrRcvEOh1s+taLMRcdkVZVtcD6KkvauQ3sQTTAtJaNm5Rew7lO78sTpaynrqWa8tQojKklyOcifeEFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8EyiyF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8EyiyF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A222AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749123593;
	bh=Eh91SK7P9+/pL0C/Mk79E9vS5BGTMl+98fT3BuiXXPM=;
	h=To:Subject:From:Date:From;
	b=Q8EyiyF1uAXVQ3Dw5f60iyv8Xj/Z7PdV7VEV1/FNl/t3jjSmEA7G/Una6YedFOC9O
	 1d8E9PZ6F2jrydOkX+skXPmJ0DPacegc85OXsSdVE84wnYCdpTilH5Ye5qlBrEaGsQ
	 6UCYMkhLNMHWLAgxLvj98yb6VRdUAgWwyboCOTP4ES1xrjzFoR9fsEszzZL9YJy4jI
	 OEBNeCzZPUD0iT80EB0cGORc2z1U/vg3NsIdnN2FeRJWDgrGtKjV+MNQdHNFxjnq6p
	 BCH6hM8x2fV/oixurmsqL7nve9wm/QOwXNxoCe1uLDSwjK6WlgiP311i/Q/PxEt8lE
	 66GxJZ3gTxiYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDDC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912359358.16342.11760692842137697473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8881c3d3de88b805679e4a493df9389ea619c881437114f609fc75ae9fbae612
Date: Thu, 05 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749123593
