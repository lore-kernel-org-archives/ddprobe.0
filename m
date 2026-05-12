Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3C522097
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778544034; cv=none; b=WD6negMTtjB8hC8nVbSkW3UnomKqFb3DDbKjKFnvvNB2E1dI7kf9FbfOpk1pTk/CtZ68/Lp5G8BQL1fmnloLryrKWKdNTjQ3V7A7To+4b4Zah0FsfFIMQILsBocPbWtNNe+HIRkb6gkULthzkJUL4XmdzeVGoPKzOek8h34l8LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778544034; c=relaxed/simple;
	bh=Wl7CbaErC3j7qRBWW2Anxo/erE/sfOpobgeyexGDL6U=;
	h=To:Subject:From:Message-Id:Date; b=pnD+z6dbB0aGLjp3TTbJfvPBXrIFgW8g6FuJuQWJqdlIQuptb7Jw2OUWANcrWlKU4vkzEzeAPzOL+2OyQGNpf9+kk920mjdzm9a+dX4Mj+MlevU5OlfmjV2RcnK52hFm3ysD73HT9DctNeq4J/2ZTi1p02angQnN1uSMqrziepE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbicN86k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbicN86k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C067CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778544033;
	bh=Wl7CbaErC3j7qRBWW2Anxo/erE/sfOpobgeyexGDL6U=;
	h=To:Subject:From:Date:From;
	b=TbicN86kHEBad/BiCjm3sXTLp23ggDwA2d+MGRRloaJmNz5695jKwjpZFJSW7WJ60
	 wJgm66JOO4OWmCgDMfiG/I1LLD0dxv8fM6oCGFl4PUh4znfApSDxLk4LDj2vdzqJWL
	 QtLVfULpMnZZ5N/3rwQmwIdQBOXZih0uVYob0M7NYC5743aJPZ8Onp1yLmlE2V61h6
	 cNgbal4lfDHcTVtWnGevB/MKbbNgaNRPVykbfMjCzi+GwiueqC1uln/1U6H0dXYnSO
	 PXTumEgtrYjyJKt/IvYYPiSBxfb78SGzVDSdtw0CzEv3jZxoK0S5v0smSd7Spd0Zmy
	 aXkHIZuRzC2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5ADCD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854403368.29834.7610381391938122574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd57365c706bb92757ef40f737fd71443267fee4a8b87fa553c1c4ccb6f22222
Date: Tue, 12 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778544033
