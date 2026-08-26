Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0131D730
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787725234; cv=none; b=XIVFSAlAUYgOmDkCtxQgHEuJ3XooGnzVeaQeBsi/avSRIRvm2HayVWTdpZgMmJeBnfIb4vFwX+MLUlIj4i/GjWT6W6wxMlV7N5p1bIs5p/Hgjgis1kzTSFyM7rTOkWXms+WrOVBB9fkYnqpGwP17RK+B6BMjANBat0/wB95mLwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787725234; c=relaxed/simple;
	bh=u/AY4bwGeZk0EVxXY6ebOOsvmyZt9j9BzDGYI+2t9q4=;
	h=To:Subject:From:Message-Id:Date; b=cgQTXowVtPqYwN8Z0/TzfwBo//+GJNhrBFtWwSoQQ9fFix3wY30icWqGGvOa6jV5W2jfCN3uQRlMQ9nv2RKHXIdnpE2YnBBwXF24L1ZqY7kKxnFR4UXC5vqs3HmVBb0XftCNYEzfflv4VkgWUnJg3uoPkfLwXxJugH66VOTkcQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeMzVhJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeMzVhJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEADC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787725233;
	bh=u/AY4bwGeZk0EVxXY6ebOOsvmyZt9j9BzDGYI+2t9q4=;
	h=To:Subject:From:Date:From;
	b=EeMzVhJVB/PYPTasTiPd07n696FhXZF0eGqoGv126YNEORP0G2jYmWCTaFT9DVsby
	 CMk6yRDrrVuu6ywlVQbr6ROAudSZvUthDrrQSyO/WNtEZ68GtWg9M0He+R4hvg+Wg+
	 ZnyrM0ujy0HGgxUdLcSgn5X6AkmAEdByUCshrqrASBFMVZ8jeSfsCDvMIbsgwzV+sb
	 NMj9nHkmnP+565gWyM4pnDePf0UDqAdIJ8WF26UrQv54nW+HTNNip8oaTDPh3t6OwB
	 VaQAMeoHI6FKCGXyMC1pbSpU5mMQgeDyisbBKNAXts08Jlh3ItFoqztbs0QmisTJB2
	 liUxbJgMjfMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC4C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772523369.12628.9164924007150552004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53fb7c350d35b12b3cfd3b4823b4b92d0ef2cb4015b7906779d18bbc1fcde931
Date: Wed, 26 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787725233
