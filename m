Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0278B3C00
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737681354; cv=none; b=ZUtfr9RP3+piutFG5AiDEf8Ftvzmgosf/AAVhJ7J3A7McKsR6ICtMkzEe14tP9n2lDOTUp9wgH/0L4E4JkK3IOd52TXkY/uCVbSCseuyC5nhzgEZ1TJrwoP8cSU2hWVNjsjJAg7EooHC4AZIvPKVOftybc4Q9ckfbsSa5C7Ej6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737681354; c=relaxed/simple;
	bh=r3WeIQQSlJEDcysAO8QDvbqNhJI9R4hD6Gv1ovXVPn8=;
	h=To:Subject:From:Message-Id:Date; b=MrCayEcZuo5FKR1gQE9utYKlP9v2LHIFtfb19nes0TQ6FxZFPN0tha7W4zVD2HeYXqVjSbWNFBEepbOir8qNsm8PdAsVbTdLwp8paOTypO4UhxBd/hb1nhjhR5alYpkrLlpS7O2cb7fBftvpV4YmrGaokTIqAycHrAUfUAzlnJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwtuuBCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwtuuBCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC32C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737681353;
	bh=r3WeIQQSlJEDcysAO8QDvbqNhJI9R4hD6Gv1ovXVPn8=;
	h=To:Subject:From:Date:From;
	b=JwtuuBCkayGaRkKOXJYxvOZGeQz2X/NK0TeVmCIxXYV/GEXhcUwPXDrD2+B1v/I7l
	 LE9VOtoT1Mj6U88cIoD2MgLgZaQt8/uAMdjQvUvy2SyFUngv+Uvp/1Qrdv+E4+Qabm
	 O8Tf/dMCOdP+bvrmPrmVzQsAmUf82Cc+NZff7yrZEmy22tnRoyXmR0bH4eTE/vxKCL
	 gl0g0n2tudr2z3WbKwIc+3fK03MHsvlUDYnJ4Ew5t+yRoeEY+wesJZf/sfqk9/YcN4
	 M/yyMHWY4pVH7ugfbligQzQpn6pcO9zf4k8yNSUFgsfpv7MchLJm6EgPaiZrh6BA33
	 PY+QedMjNOB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0CC0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768135369.30384.4677071170296879655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f82921efd0f55427237f872c435d53c7d65290e967bfd56943c41cba5974d5
Date: Fri, 24 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737681353
