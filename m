Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1E925A2B0
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746987594; cv=none; b=fqmEtYr4Zohhj8vyp/qutrfluTuLmz0lI7jtF3s0yiadGJ7ApuN0FfcjDm5tSIeW14Ri0DdTk3OVW0GRXTew8KlZozEVXwDmbggmseq3dY7IGr4PYgq2GYeks6XamU0rnbc4i/ORQlCB568LBl8avCFgPeU5JMvFGhkbmam6UGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746987594; c=relaxed/simple;
	bh=6/Vmcq6ykeGRhbtJvix3fPOxcpogD89wWKbJ4hHhjTs=;
	h=To:Subject:From:Message-Id:Date; b=mFe65le/UioVaoo1pGm3eXuue0cQVnWTPHOpaLcyL4i7lf+N6jQ1dLdm+5935NCkqEwKX2ygDxBFv6Wk4zaaj/Hy77dmmUGRVF8ePs9N4YlJLc35ofGFbK1NQ85nDNovE3b5pPZjGrXbRIruvQQK162PcEB3yKoHxWm7IF23QU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1tXUYas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1tXUYas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB28FC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746987593;
	bh=6/Vmcq6ykeGRhbtJvix3fPOxcpogD89wWKbJ4hHhjTs=;
	h=To:Subject:From:Date:From;
	b=r1tXUYas6z4x348amX/sxbnHXat4fjXiysgj9K/M0/3cdi90WvysK29rk2tWhzvGx
	 hBRre33Ad41kAqPpXXW286u6hQo4W9mMAol8z0qnnpXg5gmtWWKUux87TVwPTar6gG
	 7zcI3XMWig1wCJClSaUxc48zmq7nWocshLxunNGPHqgjE+QPO7QLGza9FvlS2i+kX9
	 GTg330WR7jCQyx6FHgsQ90R4U7fNAOQGdIjKsk16/Y9X2RSt7U7bBA8mJ9ssnvtnhV
	 5VpBjeSGmt5PooX+McQTMMxL2bIcKhNjNW84+QGE+6IuShMQKDGX1l6MNr2zRRFXQe
	 Ekx4GSxb8u3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A28C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698759359.5801.10351946458015925153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a5d5a48f3a48542783186cd665ffe76aad79068467e5756fc5f96df3258c13
Date: Sun, 11 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746987593
