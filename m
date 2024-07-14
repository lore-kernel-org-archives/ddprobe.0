Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8A110A24
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720995623; cv=none; b=ZZlHY+1Yt+lClo5I0Dn8IJYJr+sTDhQZZA9lvbAlfC9fW/QPLLhCEzhnixFEAMLpddfEkXVARm194c5K3y1S8WWtBohRHuvXhjmkVoIwWU4BDuSMd3vw43BPFBzGsmufjpk3v87278l9hco7ZoHxuOjaGkAg1k1RBrVb3SIOp7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720995623; c=relaxed/simple;
	bh=Wwu67yzm9zobjkWUK/So+kpwrd80b/tfqdFHUS9WY+A=;
	h=To:Subject:From:Message-Id:Date; b=YVps1DwVfWwsQM25yVqv7osSq3rFylVzmGAWwP+S6yS75De1I1Y01SmZ+a35twr7xUEPRgeIDvtKaAzSvfnfYAt6LX3kXY5DAqX+Fp1uYAh6/Cbv8N+rag8UhFc0wNrmGmJMvAa4OfwZ9qfYXRyh7wbVO55G5oa/CGiJa0ths+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocVwTTcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocVwTTcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB03DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720995622;
	bh=Wwu67yzm9zobjkWUK/So+kpwrd80b/tfqdFHUS9WY+A=;
	h=To:Subject:From:Date:From;
	b=ocVwTTcL9/p/qwf83m1dktiY0VEK+ifNuiIvZ/34miMUnNQ19Ioge89Ja1+8Bz/xu
	 Liv3LnnCN8AicKCKA493SBSbO4kerhvr5C1zpoCtDXTBjEOHM7UIuHJ5it0yUX27mg
	 /gsZmd+Ik/f6OYr+aN8byQrn/C5Pgnyve9fLfxwRd6QYAk7OBffQPwTRAAXk2SKW2B
	 CLmfHc7zIeilYdbvX38L3Ap9x9NMVUumtODNIKUL+tET2J6J5rs4wW82EmgA/Yv2dW
	 rAMffIMdguttngKBWGha/99r2wT3srJ507qysIepBQs73qw3ybSCnbCnG/Dq7+0R6f
	 rKsE5C4LCllVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B45C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099562276.9651.3907978857158163364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1d17d394f473b50ff7b7ef872c2617ddf95799ee728d664930b21df41c7df8
Date: Sun, 14 Jul 2024 22:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720995622
