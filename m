Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B9D194A44
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756057194; cv=none; b=faR1dHYJHH5RKbg2IJKf7rgEF4GiQ6EO9kvfyQDTPcKpcrG2N51G6PnvVbfR1AuVKshTc/fon+w3/85pwzLO3DzmGo69N79m2CtvibzPvS1g79vY6YWDO66fIuI/lSDXZRbkz5MDy6qrxCkW52f2Aluj64jzoezesaFlgJLIVdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756057194; c=relaxed/simple;
	bh=018oWW2vilepwSTXuLOygu+re/lByNjfgZ+c74z1JNM=;
	h=To:Subject:From:Message-Id:Date; b=gjqp6xUhX3sJbHUGl8MTfkC12n3XYJZLocGlSFnAFDRO2N9uo5DNw7pOGDBa9SnUIGOPq7/Ytpur5lZp6NVB/ArziURuL446pyql64TbaO+ropj2f/Ocy8SKdVWcJJMzRMbgIydC/zPB5fUXFcBqzBB3czvne9aZ/lQ13toeTng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHtUy8dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHtUy8dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6911C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756057193;
	bh=018oWW2vilepwSTXuLOygu+re/lByNjfgZ+c74z1JNM=;
	h=To:Subject:From:Date:From;
	b=EHtUy8dTnyPa3uZGUz1UPdaW6P12S24dCU1nag04a9YyvoTdLXjT3Vj5iGqNt/FZ5
	 RXlkTxCJfv6InQvAokfno1HIqKi7790n2HidffZLmlVqiUfzRwSmGkpgFrNnTnChV4
	 mQbSE8SSDcpZleNklx1rOCcM/dXnZwgVmOs3pNtC6k7MABIpaZ8G5Az0JPZb198Jz+
	 G6YaTLcPrVCVQE1EcndmS8plvnzZIhC0yfftAurK8GyOqZrUhntq5fov0SH71NCwbx
	 EDSrgztSyi6KiMHiaGuI23/MioU6yIYpje7KNzvAoXBX9B8l/r+SFc8ZHvRJo2LE8k
	 1MhFQVlIcfLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A5CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605719357.32349.1340836320055210456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b1fa9ed833725bb9569028f3fedea1560d4d273bfa9bd2c3ebc47be8536bcb
Date: Sun, 24 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756057193
