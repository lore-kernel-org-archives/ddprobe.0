Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15943D8114
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777905454; cv=none; b=PhPC8aPtZ2PnQ2cwDEte6oX3gfalv3HMUZnPIq8eFdhpM7jKmTOtY7KpU+nsRJOjL3lbHd0ESV+//7d4dJpv3BRKE14//yrWYx6JB93AvkYlYi5MjSjYK21/wXoMcUUyfRUM3RXx1hZTNYoEZfHwOtHvrh+ca1Jdf1aT5/Gfdy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777905454; c=relaxed/simple;
	bh=T7a5s5dkU5/oyDl6wDjA5B5P6hAk/bjL0FCFxlt07yo=;
	h=To:Subject:From:Message-Id:Date; b=nbWotRQEiq8HaqxRmYODMTIwbwvpYNAh6PnPRh8HFNrPOprLeHitDkTjRqKC3zpMucGiSlmz1fnP2ODpVimLZZ+AuQVr66yKdxeVt91uYwgBI+6QveZuaZOr3+pWVpDRzrIP4VQsdVdy985NnScpsgmDHpcbzcsXGPgL9hoaVc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipUjHQni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipUjHQni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B129DC2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777905453;
	bh=T7a5s5dkU5/oyDl6wDjA5B5P6hAk/bjL0FCFxlt07yo=;
	h=To:Subject:From:Date:From;
	b=ipUjHQnid1lLWYlxrftofobhiZVeOOQA+qcKBKmAVPPMONSfPq2fHjXUfWi5vvQeL
	 j6KVCI+rk0IxRI1s1AFJEkJm76UiCONtfVCoHZWb/HwYhrpArhDCqb0Qnxkobh/v8u
	 e1n65JMwuwWJqsfrdN73PHM2rUTBkiMiIXb13aSX+OXz9VuLQBSHSofp48WFPPjzfE
	 nDnX92cUiAQR+NYBMcr9vyBARartbosAjdJbXr7P9Z2toBAkP2U8jfYoBnEHud9lfw
	 H7tbQJyW6ObtMAcTacWf7ex+Hr4JJ7GogdIT4Zjr6WE7FrxyYoz0/EL+xjfzpHkYMk
	 f1trD9l/UCHvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA033FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790545368.2479.16711304162038435980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0732e636dd36a64c52eb16346951ebdcde4f8bc8e6caba5f0d22900c686f82ce
Date: Mon, 04 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777905453
