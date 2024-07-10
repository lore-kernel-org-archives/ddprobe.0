Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34C4404
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720620983; cv=none; b=qJZ5eZ0eqhQRner/vU/EoxMgLwN9QIc54fUfiB6bO7b3RzDUymlAvRWUhrBcW37+nUjHLPhK4/87HS5uO1t+1Ua6R6qA42S4Iqbgr/6UgUl/SnR/EnB7dV+f3xkwLvMObUqkWUDebYnOjAiETuqY9lhbD3U4+LlJ9TwWn7y4rks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720620983; c=relaxed/simple;
	bh=tXb3umxOj2mVXWmWO5ZEHLWYZ2R5WbpNAvqL83BMbJ0=;
	h=To:Subject:From:Message-Id:Date; b=GGtXKxFkd5SsZdq3oYuLzEVwPBPfP/BPPdUyPBBwtUZsB0l9EPnYj3UJLW0YAuUdmU89836Bmu4wBccDQgr/dwMbwKBvkbCuIVmag3atSWzM10CqeLr4mHUz/6AOoorC/+IxqucOb9FJPzXi2Gj2RGluOXe2R0LweifUZaShUtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swZMaGLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swZMaGLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC326C4AF1C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720620982;
	bh=tXb3umxOj2mVXWmWO5ZEHLWYZ2R5WbpNAvqL83BMbJ0=;
	h=To:Subject:From:Date:From;
	b=swZMaGLX32VJi9Cf2QMLjhRX/E8m+3bjdwTV1gIcSh9yK/zplydj+r11dYyaIabAz
	 tuCTGGXT6haxAbuUzFQ9fGzfApcztu8ZcvMENmzgKaig1ADonArnTuMgph3wRIrmcK
	 V4T1vbEjgQmPWw+TGNkjUuiNB1WMX/wBZ3mnCZ4oPoLmCMAMHX9nE+IdQDRg1woXbU
	 RbSdJePk1HUIBjc8FVe7RMOvue7pXwyLBWJrxF/fo9ZGx/StOvNem6RGJLUW5md22D
	 z+dao684oo5cofGMAY1r1HhxgxhJtFQktFh0vgN0pj1RDCZCKyoL9mPRhqEYInjugn
	 Dk7iiaENG3Vig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD228C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062098276.27746.4893308155469197528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f6089cd25d2edc58391755c7ce172921a7b5cccfe35782418bee7b0ea7419f
Date: Wed, 10 Jul 2024 14:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720620982
