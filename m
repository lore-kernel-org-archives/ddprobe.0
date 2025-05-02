Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B7517B421
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746170393; cv=none; b=bLfZSUQpxkJLNmENLy8GxZOn0wmDVirmp58yRgsXyxbaqq1/ZMMWz3W38ZK2lqu960V/8O/rEhdsiO1H7t8vb+i62r/gG/Ilyqb1ahOgugJhXDpP4Qtx9X/jRdwjiXSW1p1wzQpKzwbHltyTFUTgJMMMbtRBCXEik13ym4UEIHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746170393; c=relaxed/simple;
	bh=QthlBAxSt9jYCddALXnooe6MJdUdFgOXyzA4NX2+hDg=;
	h=To:Subject:From:Message-Id:Date; b=LBxnZc+OGAvfENPX019F+a7QiZNs43EvPF6CaywgTKzWgfXET3IMyzmBm1YUWAXVoMeAHToqdI08ZxW8PAvzbg4XOtTpfM73dl/6nu9kbU0AvvgkmVOvfLnax9oAtTx0T65Ce83liScUtR55UfamrpVNoEUGoDYXrCQdUrF4yPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2eW5ymI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2eW5ymI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B79C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746170393;
	bh=QthlBAxSt9jYCddALXnooe6MJdUdFgOXyzA4NX2+hDg=;
	h=To:Subject:From:Date:From;
	b=e2eW5ymIw0Y3Xj7ckAhsdVx3FMxdDZrNJ92KgaKkaEGws8DuuS/KKWzQMW6fPR/jv
	 OntbCDgHsPH1w3n0YdZ+MZdgFASLB7Is94z7jjHIIyVDdShm89ti8Jr5FrEtxyAfIq
	 QQXLvYlbuHoC7aWp7APst1/ap4daohI1wljw4MaLML9tAqAjlNR0B9h01XU23eBlEE
	 T166mDKrTHN5ai3unv4lEapKHEexeDQd7HLNsbOfHWymVuPyy48qX+AKrL8/k2Vw1Z
	 2smMjRPrq0jzq1zDWQg3HKYAAn8x9y4R7OKc5oiqGcu8N1OONhgUN/jXZOs5yltpm4
	 pPM8gDAerBCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E762C3ABA9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617039357.32628.13685162807378666841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2cbc3df0459d54cf35c58a5e54424137a971d62036afd418ba2b46947187fa1
Date: Fri, 02 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746170393
