Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A3F259CA6
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745596794; cv=none; b=si+OhVh1oCJN6w4gj9iWiL5Lc5uIB06YeC2bCk65bzPQrCxk6QiQ2uHMFwapCaLrZMUvY9plQ1nxWqeNQZm+1a1eaIx+iSpQOgWh2LOGL77IgQcXJ1XnENKFgjJSR+/cVUDSJu5e29aWH94e188dLAVbBzR1gSJwK5ylnByKq+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745596794; c=relaxed/simple;
	bh=7zVu+glEa6W0/3vCiK4QVpDOJKjy0SNRe7YjHsvkyZ0=;
	h=To:Subject:From:Message-Id:Date; b=DqKklCNpYniWoP1NA0iOgpSLGIufFr0JgI9OAYSs6IyN4kn29grF5YvtT9lPgfso37i4V10kOhx7VrDeWv2WP8I6f8Ba6VM0FHnWhlmg/okwQNvVVpRG03KtBNTEdegEGByMJPAyQ4d/3FGiThmgfnDfWg5Z1igb7+7dWpH/EvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLNaGrpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLNaGrpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B6DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745596793;
	bh=7zVu+glEa6W0/3vCiK4QVpDOJKjy0SNRe7YjHsvkyZ0=;
	h=To:Subject:From:Date:From;
	b=CLNaGrprUSFm40i7vFo4qOAbcADxJGEAIW+jqZ8LRUi5bxmHz/Olzlr512HZhftI5
	 sCViCftqQmnEj5yr16LkU1UPkfMp0KGfOurhaH8gp0VLZYc5JS6wernHXFCR+mpmAI
	 VeoZMAY2SSfxxeRrk5v7CxnMzYeCc64NdWomac1heeNGwR4Z0UxhwD5FN1b7HlOBdm
	 J4TR3e0WgZb5On7Ik7t3phaqKwCsqYLj+km9yq1eBqp8kM55vUc9k+o2zLQa+Uz1H2
	 p+i1BL29OUZTXZsSc8ANhmIR8movCM3FEiB48ENLyBgeNKnNN63y650X9R4DG8/kfp
	 ac4FfjwB1X4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA85C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559679357.32671.12052641785632122716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbed5e393d01164134c1d9deb4acf711048228013977e5742f14cd52f430086b
Date: Fri, 25 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745596793
