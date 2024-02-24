Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254B7481D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708797497; cv=none; b=HlcUIZ9DL6K7c+BuQuxinQz9fMMK8oZTPGcxBnGuNTLhtjtKSoxD32eIUE9s1o5VR4TGN5p7ZappVgny82b9K1IH8tdYyPyluk11GVrbB7LRZKXmxGb4ZtPuUfemy8E33RVg1HQDVO2DGFdJ/ZrQNq4emI9BKsJJTOfZl3dQV38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708797497; c=relaxed/simple;
	bh=QhJqpbMQxrRpiU0KTMxIjgD4+NSYdJzpRy1ChhbX7So=;
	h=To:Subject:From:Message-Id:Date; b=TNF2KeSawJKLYwQku7ZQArjF0nftFOz5QWwXfmyCIngwkbpnPXuzwA8H4E0DpGjkTG66N/agts4kzqh6adBdC9CmeEA35wCFpgwYfkKAlR5fgvkK0yi7AYcEu6zgqKWqbx5NurI70R5aa9DpGkTAz5oArc9dLOAZU54GNrR4vkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prx8TwGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prx8TwGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE78C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708797496;
	bh=QhJqpbMQxrRpiU0KTMxIjgD4+NSYdJzpRy1ChhbX7So=;
	h=To:Subject:From:Date:From;
	b=prx8TwGOOzhq1Afbov3XLn1bpVmUhi7ldXuufZjHbPT6hgRmlYr7W51dprBduKTQ5
	 3YHavmIddpqL3nOswECcpbCmO24N3X/QmzVm0eduHbyin/1j7B8kaVElqUxDEgYTHZ
	 t+f21XgGtTuzttnTRbB5jIQYJumusojlwSZd+aE9a+4PZq21HF129aHXrukur29iXV
	 XP2/VBzy20hKq2E/x3tWUxwLY2N/hjxZqQPcspVeMysTkWuBSZLU8m6tkqcS/fFyTd
	 TsAJ2od2D7WnF7wTGia+G/fyhm/LgCym9knNTLNklPpzR9RtnT1ilU7jU8pxds1D1P
	 Bf2o3vZmKeH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA66C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170879749642.8697.8123746190518005859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ba4ea36e246ee09c32a017c2f500ff7a21122bd096b301ec319f4a2505615a
Date: Sat, 24 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708797496
