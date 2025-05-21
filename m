Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6EF1624CE
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747863594; cv=none; b=DXRUnd2yPIPlEjzS3SD8VlfX3i/JhMKRM0wgOTmdPT3ujM9qdzMbfjjuNNW4kFV5a3O6cgKQ87f0lSz9VRG8OM4WwDq8DOjPbBIqmThhOzdDZ3RvehW3Zm0+5V3iL0OI5tpeq9daBzw/hl/chwT0RKQa2B5Iyv+Yz5rz3++IDSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747863594; c=relaxed/simple;
	bh=lJ8xjlJo55luvtqbcr1oLlBH7jb+miBLwG8kEggpBWU=;
	h=To:Subject:From:Message-Id:Date; b=GhByt8sGnThXAMcJy3SOVWVxTfmCmb9Dcn9hJYf13busHej9aCAV3PI47kBDCv6IkKFgQZ1Ai4pOM1JyyMuxDNzpZiUIc/QclRl6CE+o5JT26J0OfGSQ/0Z69RseiG+Gz/aXWo0gPf66snm3uW+2ciXiPoIkIgcajSzeYRcoML8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryCHQ7AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryCHQ7AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C6BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747863593;
	bh=lJ8xjlJo55luvtqbcr1oLlBH7jb+miBLwG8kEggpBWU=;
	h=To:Subject:From:Date:From;
	b=ryCHQ7AL26hjEBPmkeCjH74oRAuO3+5syyqcJe+WszX+vm15OyKTnzbCRn/r0o2GD
	 3P2MIf7PsyEGWYCPyofLU1OHelllmkUea9TwjHaMQGYBFXAxeXI+if1ajb8HA8o3xZ
	 v+dkFEYoAFqldDk7KDo7aTRMElLZI6toFTkGw802HyyQUlBHyG8k4OwO+NGT2R/Ay+
	 d7uUEFKlITe2f+sulQnFx/+aAJrgCHaGg+Q7+SWHk6kLv1wAhM5wI3SXY790pZLMnX
	 IW1WTE+BJr1Pj5+ImiOKS7C5H+QpqmdD9Rh6hHUxmBIIRz98AK0SIdrcQy9nA2MfEU
	 EZvewuO+fHjDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC8C54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786359357.7083.9453094277722215031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b879e4804976827a46ad29ace38bcef1406b94afb5fae4924d36e537cef5b559
Date: Wed, 21 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747863593
