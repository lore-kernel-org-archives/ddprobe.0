Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68F1BC5C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754755794; cv=none; b=OXnwmFwuHglJA8yZyyz5yjBc29neiBQ/T5OyWh2bpjWB6qne0z+IHc321Uun3RWIolVJfZP1d5+WVfIGND++ddVoWMaVrxiERCbCGWyKISdh0IzPJWoISl5NvMheyMWdAWGPE4YsBbPZGR9JA0KwtM8Nsb7Y5HnVY2k1HWw91d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754755794; c=relaxed/simple;
	bh=ep14vPAHhcFiiGffR+XVwaBzAIO55NBbHolXIsEVh+U=;
	h=To:Subject:From:Message-Id:Date; b=mVjeU2DxHBCCXfI3UdaXrHit/moRSg18XMqiRO5qfOS2i4C2A9jxTTlKdzyk/TfIZq2Kf+0KppHRvLdB7eoeocWWWHtKAguEv6JqERi6GWZAD7jb2iNq5MqrQetRKVr0gMIl1ob67362Kegsz1t8Qk6NXIUTDl4aHY5h6CfE2D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSmpGyEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSmpGyEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6099C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754755793;
	bh=ep14vPAHhcFiiGffR+XVwaBzAIO55NBbHolXIsEVh+U=;
	h=To:Subject:From:Date:From;
	b=NSmpGyEjTKZsiZez9TBbdhEABufAhcdtSBLq40hT2yeFUREDgkP1hC/UaJ4zi2vy4
	 idndPSOgla/eD/zboTgZ8uj7s2micdoXFAhuZL/if7f5vdZ3GVljG7EMkp437GWNxF
	 P8P+1Gfi9D+29MbgC1/TF4lEN8993C7G4Rmz9JoLjqT2nhi3Bdo91pssp9e24ddzWr
	 k5XooRCPkERZwfL8mDkyrBFvR7lvQIcsPlNaGdTmTofWKLh0N/qEdMUT/RDd4gK0Ln
	 dziTp/74ESw7wnWD2KSCO9XHxtkan4DoYykD29aLEiSy4pcaY/Q79p9XwZgh+1Pfg9
	 SMH3H/BNNZcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D02C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475579357.24831.14036885052190480547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1d5e11451c74130c3f5ba2894c0c5962caa66dd48b89d07ab9ae3901eb950f
Date: Sat, 09 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754755793
