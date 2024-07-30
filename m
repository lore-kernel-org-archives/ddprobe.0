Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE3216C6B6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722316554; cv=none; b=pCHWayAkD6z0vGmDfk22hzOmmKDwa7DWW+Aecq2a5aALksVrf7D3ktBgK3H8UqHegoOlohtDrsq6O4hdI1xovDknqOtiTChhKm93OseWZAsTVdItN15SCsCVGZz/sOVnt0xg4A9CPnkk/xIZ/b/xDM1bCL+Ln2V3ViI8lBEejVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722316554; c=relaxed/simple;
	bh=58cpRkTr9947UIw9W7vlUWCF3TD4K5nfQ1821Xz9WzM=;
	h=To:Subject:From:Message-Id:Date; b=liMkA3Ws4njfGCXly2PCdz0RM/9cxKfsDwBTxeIdp09yd2Ucwmq0nZLf8xaEUTgOOWEfHZKC9Ug9kDCKjj9uE1SeaTlQcNKyjp9cV3lSpKT1aoRo41diA/qMArKHe6EF5uo+titphnRY7TTpobNZAxZStAlogl/hO7i594C7KJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXWPT/Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXWPT/Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B512BC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722316553;
	bh=58cpRkTr9947UIw9W7vlUWCF3TD4K5nfQ1821Xz9WzM=;
	h=To:Subject:From:Date:From;
	b=IXWPT/Fa3+3U25ZyaFcinfpvzNSQDLX6BEVMJmL9vK6umIWuIABWOJReXiuwldf5r
	 RgxBQDfN9MiGHhQwqrPtBUiS/lP7NMWBDdpdlv/Mqe2AUeEirTlqTE9YNe1Ms1v9co
	 j+0cRwymgj1H1KQ03feFuN2+BXak2lAZtQMnIpTrUDkhYwer9S4jsFmZ3xlaDa+l3j
	 cFzmZSPHSpF6p7IqIxqnTAssfoqF5CUP9xImd8GwutcpfTcVygRb4wYaUNgIg6yBe3
	 W+59vysvAZXM6KhRJz+ASoldpkjDnKG9PrKlQ0ULT4VGU5a2kjm6vL9AOCripjZC70
	 c0fpAd8Le2FMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4ED9C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172231655366.6719.8194204992910548620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0c61555b207c83c391c7123c6430e2ae1adc262123899f6d13d5bae11ce13a
Date: Tue, 30 Jul 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722316553
