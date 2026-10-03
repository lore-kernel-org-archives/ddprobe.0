Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45865413798
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791022834; cv=none; b=E8E+ojD2oZs4m3cSXZkVcMxw96LMUKvUvMw1HxSbA8r2BRslZlf58vlKNCaQchD9H8vOuQ1Ee6+3sCTfHyxYTOVRzv/YIlSWBe+6/zkLCe+Eef15Tr3Umxo/A0ODBffBKFtvrzKcVNxOdodOiLZQBxc96Ok8/BnNsJOAFZWtP0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791022834; c=relaxed/simple;
	bh=PY70cKZm1VQ7rLw/el3tvX2j1JtXgsZ7d9hltpK5diw=;
	h=To:Subject:From:Message-Id:Date; b=t225yK1zAAkaCs2CeOGO86D5JGs5Fy8UODjNT290VZebk+nlWJ/Tqr4SbwbgMWbgS5O6Jvbrcs+YKu+aelwBT0MSXTpIt4wpatJ2iKAWxPVAqoLiT0LEUWnoJyYbf2kOwc50RxYaoH/HIVnaySyUQiEzu5vAbKEbEX9csJBur18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLm2WnF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLm2WnF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAC7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791022833;
	bh=PY70cKZm1VQ7rLw/el3tvX2j1JtXgsZ7d9hltpK5diw=;
	h=To:Subject:From:Date:From;
	b=gLm2WnF6VlONJg/C7SN8Fr44hR70A9g6mLS6XlL7SDfn2nSwvtxFlqrXK1+Pdy7vi
	 i435icfNMu7CJQQwIghLQApb2/XG2iIaNyCLb2sPl/nLmlMDur7M8DfJ4h3siONP10
	 ZcG+nKPvEw1yCgcpoxamU9BTWeaKj/KP/2P87rKYOShqujws6mP2N7ImoHvFlAAX8s
	 I4ks4DCW3kLxIFQfx24Y0mWTppgK2FWys5V91HRjDYc6/nDy5hpJj4oKaXaf1VzjMd
	 ieDQDrpcKLO1ge3Z1eMlouGtismwioT5xCJ8f6wjUMwnLlGDmqsb8aqXUB7GnjmHWY
	 cJtPoUoAIDQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97B2CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102283368.9484.952787752584572915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef064778d8fac241416e0adedc9677f2aed2571bc153bd5fd87a1668e60492e
Date: Sat, 03 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791022833
