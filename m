Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F23C1973
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787893234; cv=none; b=rMHf05I3RiNuTIZA/OTmFuQajjLItM3RhCNgXouqphsMJsL3wm8fFkp5RSD+Vy6FyaF/Nq6+TNmV7QSsgS/HWW9pkwhak110r5DEbn7QBUa7IO6feqim+n6zoDg662SBdrQq3w7Pe0FuOczdOsl3rHH7BeHJr59p33etXvDsW90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787893234; c=relaxed/simple;
	bh=DA+ILbD3jThDS8a+rFs+mTwIFJee5A3rwzwW36UWu9c=;
	h=To:Subject:From:Message-Id:Date; b=OkvaqzwI2eR7NzWksfvYIwP2hdkrmK02JL80haDmacd7Bvh72z1iWtT7fUmQLOWyQouEheGvIGp7evSDx6nlZ8tKKaB8t8Ki2H+xCvryOLZgZwVYjPFOD0chHF+5d7+9FP6fuLxMaXNIhK4Vko3aEeIQ9LibT4tq9/iIEt1L/4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnXsW4mF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnXsW4mF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB17C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787893233;
	bh=DA+ILbD3jThDS8a+rFs+mTwIFJee5A3rwzwW36UWu9c=;
	h=To:Subject:From:Date:From;
	b=PnXsW4mFQ4cHl7Vp5gWjf45TNVQgwAYVvlH9cQNZPrVrBs5Vsxn1NtPWvk2Mhn/P0
	 8gqY58sG10n+IRr+lqsJTLBNjTUZEScXg26ezaTpJcK42fDWPZhVc333kN/mnP8Yze
	 l8krxHePoypzKaFAjezUevImoHxWVsb5we0QluIkGk7/vZAcIRVsKObvPbqQ57fU5a
	 wfEZzDNnDYmicbZPDCqDq2sJ6koGozX0y5MPl17wlQ4pTdnIom7WdnVDhJlbaLLANo
	 vd3mEmOVvV0x7Pb+CLkQo3HXz6SyCIyUXYqEut3nKfl9b+wH1bEYgkzY13Iql46+vL
	 vXkjxwQkHkm5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F79C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789323368.1465.4979088577760484471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1ac4d9367a7ef428f93d97f461c1538a3255767b24eb39b8a9b8afb649e2c3
Date: Fri, 28 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787893233
