Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531F63B4EBF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784603314; cv=none; b=Y1HyCLDiJx/Dk8pFtJZ3LA6VKG3ogNaaBJuOfe8W8jPNsNA3R4jtkfjLuT9ZEA6ExKGUqFjAZHJWgm8toPtLud9y0WptsMPxYEpuwsNC1h9pcHPMl2/6BVy//c+XNFWDPON5qYYekS57yKC8RmIFupXbsw8uoACho2lZP5gfxI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784603314; c=relaxed/simple;
	bh=4hMew9uUEdhQs9D6WrQ2xnqpdw2quALSPuyF/ZuTKIo=;
	h=To:Subject:From:Message-Id:Date; b=oR2ZBTMtCJc1nKGa5HhZGO1VRTtQL/0C3TTlND7wDLk0NCa+oyE6dL/s85mxg44HBsqkuv26g2HrtNw70Sd9/FrN8H0TxQy5g9QwEuq32Ys3ID2Ig07wbLmy7OmUxKUQ/isE+sI9KzcIue02oMoBnVZucONUGq4b4zluraXkXTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stMyr4AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stMyr4AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CB1C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784603313;
	bh=4hMew9uUEdhQs9D6WrQ2xnqpdw2quALSPuyF/ZuTKIo=;
	h=To:Subject:From:Date:From;
	b=stMyr4AL+AVM+zXQmGE0hlD5s7PERxMa6Y6JSJwk7iR8purBUKbEfjqNQA78PGIe9
	 ctTYsQDc7cIH/RKdGJUtfbeft29ctm8dIUImlLzbK7z/h45KMbzp6a3wy0IBGsvpNT
	 DFdvhneBrJOPnwrbnnjH/S7gvTnM/sijPylKEJnTL1KIvSvtKG2Ch1Fcbv8i0WpQjJ
	 S4Zh+HU1jqqUuR1CnYHma88Wym5Nw/WLl6I3JUpMyWqFjli5NTDiaLakBCH6dhA8hy
	 rJzWX0a6OTOcrMb4jVKyYhXFvgFq2AC7eC1uyQQ96hv8FlierNzCUtpUdO8I/xl2m9
	 U0GdaVXDKaQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB6AC44524
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460331373.28355.1704192857046365897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509c4eeda9129858a1f78f327673acb178e20d1623d378db35ca4026b60a4b68
Date: Tue, 21 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784603313
