Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E754B1E494
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711494497; cv=none; b=q4FwjqtQpK/VjFQo+i30+LQXoIg7Fx2PTtM7NlPLosXzyyhiHaW/L2Xd1aZNwC/rgqcNn9vXdbv9LXPTouk5kabawx60KqEyz3gIByQ/UgLvgmdlGtx1kbfosfDs3fEu/gYZllFa2obkRrx3ppw1leNLeE3qzNZfc70/NHgNwTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711494497; c=relaxed/simple;
	bh=77ibA0W6Tq50rq9PnU4IfsIblgtQ1FYt+/JbcpA51qU=;
	h=To:Subject:From:Message-Id:Date; b=K8Zb+/UjULPmrfXotRS6PxL6bUAhte7OBbVYkSC9ACPquVx5pwEC6BmGOvm5kDZjzFtv8NdIusGzQK1Tvz6HnbwWljIEKNtKaJ0Mv2DIpsknhynCIhZVYJYdY+n7EWZF/RdQYyoDYj0OXuRJxyfg7s3FZukSBFlw2Acj8R2LFR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhXLoBOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhXLoBOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74479C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711494496;
	bh=77ibA0W6Tq50rq9PnU4IfsIblgtQ1FYt+/JbcpA51qU=;
	h=To:Subject:From:Date:From;
	b=bhXLoBOhte8m0dRL7HnG/fnN6JyyO3yh/QgUbTMXA8JCqbHUSW8qt6p04ICnLwvzh
	 RqMk1LpV+MYk6gRMpgHV5gtNLYfpzHUZpQcy6e1/04LpMHAChj5EFNBN6BAe6x1GFT
	 +VKncC0poCaEmQguoW1A8lOcNArHZuSpVH9WDFrcAylK28x3U6ooARrfNMFDq0EE3h
	 p+qgve/oP21x5DMGukBXNgRlN5SmIAaRHj063Q9GX2Ig2Jp1vzZ1PsIhInLdMQZFYT
	 CCDjqIh76Zmm34oDjlQBnkBukTAw8BhJFMD3a6NByyzLT0tjxPzrloodfRIEdZXPOQ
	 gyPgSJlQkYWkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFA4CD11DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171149449637.22353.9511616272682161630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbfb616f667150db6e4ba4080c18864f37405e8287d0eff8ed1d71a46750307
Date: Tue, 26 Mar 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711494496
