Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199E9255E2F
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753474194; cv=none; b=OtKUalkXhGEW0y9hB0V2B+QcnROCjT5p4BOwv4b2xlt7ZdF+KBPrHYnMUGRHu7QoCey2MmE+gbioDOxbO1XloGpv/RC7CzvkmbaOZD3SaVU5PuFxjTXU3k1TLABQqp0inG3hYmyPfdOigtHsFdCsbgVWTFtqJFTiZyzFbsTpfjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753474194; c=relaxed/simple;
	bh=JOZ01x9x5bA+dtE/4aRWfKU5DRwO1bIa5YaS7nu/ps8=;
	h=To:Subject:From:Message-Id:Date; b=PFy0rOdze/CxYVbIpS9rzd/hIn+9Lxr1i7evmDbuPai1EmdMdfYVTfikArk1z+WiEG1N6E3+HnZ0D1rjKWBuXoFpc6zx3LCaUGBls+DHmKGZPFp0xqI0+TrJwjt6ObekUXsywPt/eTOCDtk7O+rLAzfrynwzwjINRbrw2hkMJDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFyzvW7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFyzvW7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C86C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753474193;
	bh=JOZ01x9x5bA+dtE/4aRWfKU5DRwO1bIa5YaS7nu/ps8=;
	h=To:Subject:From:Date:From;
	b=OFyzvW7QZIjCFnp5DdnX2m5+a2XEy2iADon71yMgxvktJpHo1hrVr37Ihj6LiHq4c
	 jPzBb7juCq7Hlx8U7nm7tZfGRGlnEhZea+1yXiEvNxXc+2xu0tCyHdN5eMdBdyJw/I
	 L+aSkv72bKdh9ejQZ39AYgRmt1LnT9hoVAPyN0wL7NYiBZjT+xpAMq8CnBgy3NkcC5
	 zw+HiyzcqcfDag725nnMrSDhly+TtMUTlhPGAlMNOBJNO/cOayb0Tu98veWyy1ePFN
	 4yDcGnvVRsb2xS71Epq2ppV7tcMM5gBPI2mQxuVaVa83JSIUgd1DdJqpbnLxErjdAz
	 EAAuXncnl8vYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F508C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347419358.3082.15690356194214753337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a85347e59d4281f3639134caf31b395821b854b2910011f2e9bbbe8a79314d
Date: Fri, 25 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753474193
