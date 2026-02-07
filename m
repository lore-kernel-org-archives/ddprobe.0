Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1446D1F1534
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770492834; cv=none; b=X3IpGbKazx4IQt00hi3tyS/OM4Y/Jc6jky+ZReDoSjrC7m48g2ofC/gxgydG5DOvdWHtUqD4kljKzyWfe/Lp0rR+cIrSNLijEKw6pdLq5q/wMYcjxbreOR2RDc4TfHhns+mTRGwFvhs9XxOJxOCASvKTj70g3TQjed/q8E6SEIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770492834; c=relaxed/simple;
	bh=GVx/qduao8k6oVeh/shoJrrc0zR6PslC7ASLkjyrvF4=;
	h=To:Subject:From:Message-Id:Date; b=gcabuZNdHjpqW8MT9IJQDQnB3tzgzcdgYxkNrmGjLHbjklZIfuz4pfY/+Q8VmUmK8AGQ4KI203UhJfis8hIThLZDZfT+6wa5kNSP2uMEF7L/2/ZymGbVrwnBVrhSw31C5qtkBhX1eOgwJjTiQ1wgb0V/LRhMmKBOIi2qBYDyDXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn3KU1Bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn3KU1Bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F8FC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770492833;
	bh=GVx/qduao8k6oVeh/shoJrrc0zR6PslC7ASLkjyrvF4=;
	h=To:Subject:From:Date:From;
	b=Zn3KU1BvGB5JSDJ1Yz9ULrUdSsz4DlHGCxfeeum+7oy2XczzQ0gcHlqmVxJWzGsPS
	 Ch4ihmzzxpJI22gTkiDQGAVBm2yqqnTR2932utgYFrtvI36uU543sQwKekbVfObA41
	 Q5+EDs6Kfm+0FWMdllEFnvO5+VyBDgnN4h0SPXmP95lWoTUU0v86mkxbcH/zfO/u8t
	 7cy0KHPILDBillcyz9jEWOGefg4aNdF9NxSBe88rwAdS71nUVUYZvaFYDmYNFZPnWu
	 x5ZAjQZwtp1iK08y1kQZeZOi5/KK80NC+bbHzW5oIhh5g3RihfKfzIs8ejNFxnKRcX
	 +sa5GD9j9tDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA5EE0AEE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049283360.9606.1408200544575939825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f9eef47631a16bd4d21575c23677492afe905df20574c2e4fbd10256ace01f
Date: Sat, 07 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770492833
