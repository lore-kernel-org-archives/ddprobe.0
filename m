Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605DF34F24E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791706234; cv=none; b=b0i/nc3h2qOK4XKWxM3VW6/Ur/zQfLWYz2ZU41cquTz4kaCbQqpHT617BaEejRPXvRlP+diNnTh5r1GeJs0FdKKwvOOf49a1pXhk1Rj9jgv2Fk1zHj6Xv5Lt8X09UJsjBxqS9aHPLH0lYILVXxEQvpaskFglqRbV43xgyvMi6iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791706234; c=relaxed/simple;
	bh=ytUbMiM+5EDnire++xlbcMZJtIWLrd8xeh9dexImQQg=;
	h=To:Subject:From:Message-Id:Date; b=PLjepJm7GCTYj85L1XChtWte0xioor1in0SUy2GXJIasQfVUJ+r4BxMmPiYaQR8nNJuWu6Zlo0OZC/OK0VACTfTeyTMKBXTX6+de890swPQcMtV96y3697IP/O5nbu4s1aJTeplscdLV5MVMzu//bGCQNfa13HuV85iusXk8mNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfli7Acv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfli7Acv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5426C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791706233;
	bh=ytUbMiM+5EDnire++xlbcMZJtIWLrd8xeh9dexImQQg=;
	h=To:Subject:From:Date:From;
	b=Xfli7AcvgNiQKLd2R3W5h30G7EXwkDHbMau13b5BflC4Pe9JTqXuB3oECUvxK9aoP
	 CGdtvQHyDWkfQPT0UGBJet389QcpzaOUcJJzW9fnj165X8cygC99rEx1Ccz61P3B/G
	 KIUsGU7T6OOWzqxXkKZoxKipDD2CRCwvV23xRV0NmCpOBn2qIL1HC3XhQWiJAwAI33
	 WiDkhpQ59SF0IKR5YWqZzYQCye5XAE6eKkhqZNFmHhQoAi8pKe6kkFxboGNNMBWR/9
	 V9umqlGYJZuyCSp0hdsX5dAnffaUlak0UxQT+qPedZD8oUcgUwETuEZJat1t4K3IHr
	 qgYMyWTRtzwvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB2ECA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170623369.26668.3423718782412426990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a89776a3c40bf189821d9e07ce611c61c8b38714965317cf8174a75d93ab80
Date: Sun, 11 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791706233
