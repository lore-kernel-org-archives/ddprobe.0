Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3852C029A
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760934594; cv=none; b=JYs7lbqGVam1waBL64suYudQfiaI4oAOO1JLZh3LVH14sq5JMPBIU1IwhbhTZlh/5w2xuLYCbzfJh17XzGt0y9c23id9FtOlCOVyo/PSG8JsPy+4ChbErN1ayz2gmoKBDvuOwR7y2miIgTnvMC7uWGhXmu02tOH+7IpCgacH9Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760934594; c=relaxed/simple;
	bh=MNMk/AJOtyrnLRA7nM4P4LXKbF4c+MBDqHnOmq+cYZk=;
	h=To:Subject:From:Message-Id:Date; b=m1ZjRHb/6tfQZprAsAicDbq9IPYWYJZEgW2VyatfQrRb9nj3GupYmTTdzogZUl/hLDx7dokJQtf+Kb9kvJzRZsx+8vQUdR+BRDGBRvD51cVSFzFfbf+nuTv+GNPVhRl69nMLas+N1CJTHcfx3ROt0NUbjOGql1xtpe9k1RFzmdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=givuvVJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="givuvVJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1098C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760934593;
	bh=MNMk/AJOtyrnLRA7nM4P4LXKbF4c+MBDqHnOmq+cYZk=;
	h=To:Subject:From:Date:From;
	b=givuvVJif2UfvpQ5CAGqAVPpGvqo2l7/j3QLnxTD/VuQVja7N52inCssS4GdiNeie
	 YjCkCHfngOdWcw/Ws5PvlylGf+7IKRWj8ExsqEfd0miequ6Dwed2F1A2gmGFmk9xrZ
	 Qkfd1L8ByoZacwT9jZMJ499UmyyDtFMUOOYFV1NRIklQizqy4i0TtUkuByzE4wAORX
	 F++2+Wq6qTg0vhKGG/pmSidZN+n+IhtWpU8dZ6r3F2JfOejbuXuzioZAP+WdXJCUp0
	 E6yekC+QCE5COfsmgv0DPtub9DyVE0lecHRv4f4ZD0tY0TaP8qT68czaCf0PP713e8
	 cz+A7/p2v3tNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE91CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093459358.30274.2308426722093594568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbce7dbc1494874c992db996cac45ff1f1b7dd6b6cc09768102b9a25c154c8f
Date: Mon, 20 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760934593
