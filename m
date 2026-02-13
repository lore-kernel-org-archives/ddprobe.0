Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E608149C6F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770959094; cv=none; b=PXe969dkXjamrUgF+qdVO9320tr6JaRsfQVgu++Uu/2ODZyeoxiVh8P+T+EmjFLuEdwgCh726k519SJvyQH4DdhJFqSld8SbJqSOY2ks2yln0sXGTFfnfFAN7/2Nk2jcYRo039I3obR104vu9P2rfm7PodkJRgMpkXMi+zKlBN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770959094; c=relaxed/simple;
	bh=Soe7UXaIHr3VFO85DG18fYdqdLVsWUte1ZkUY0X8gh8=;
	h=To:Subject:From:Message-Id:Date; b=DkkwxFdnC1nkUy0sLeK8ydATKqqAultI/KiZ4KKv91xgvWdajX9ktgU1ix6RCKzwE8hXWGR39JFiLFa1KfW2onmp4yV6V+S3xylqIRSukQkzJCfm6kY9Exj3NgkWMj2g+j8oEnMtma8Z6UKJehhxTJv1vM8s39IfuRihXdmlHQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpJ50KkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpJ50KkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A1DC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770959093;
	bh=Soe7UXaIHr3VFO85DG18fYdqdLVsWUte1ZkUY0X8gh8=;
	h=To:Subject:From:Date:From;
	b=EpJ50KkLOgStE2kwdLWKKuiHizyvL5szwEEldgGHs4Af7EzAu9JP1IJasK8IN6Qqt
	 5p5R7ZVqOSogPPk21RLeSCWRlbBNCGAHFbFuLHi/VU8mYYKeV+Jqp8W41WqEgBSNhy
	 6NWNjQgvYxuolfAUZ7b5O3IWS4CsjB3a0DTGuXfdBfg9lVp5Y7xY57HRzKh4XCKg+E
	 7o3FxUjQxHhIP5P6Jxe2UFsrB3/ujuWPImxBf+DP7RhSZ9tL6wjkjKnnkSU8cr9plC
	 tm9Vf3wAifrX+w7zhb6f+3eXbUrp2EDNU32V6Z7l9GCyPBXRccHir+6AYjqMsdShoC
	 nKQJ0p9KwPcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0312EF48CD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095909364.8008.13628422065524685731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f4b1d486262ca8fde9ad0d0221f5d852041aabb6b9e00ef8b08be9ed532d2b
Date: Fri, 13 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770959093
