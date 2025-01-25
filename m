Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D96524B0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737833154; cv=none; b=HLjorSC6neR05M+qWWzTh57R3pG0f/xiFznc7hOAWi78vT6H/FPQe8wAa6JPhmZ+4i7mNaC02eyL/pyryRLN4OvD04q484NLHht6VR4+gvQbGFd9a/22UCqMg8+NWcHxRV2cLmX1DgTGvlIcynZ0yfcvacEW6rITrOuBBlCV0yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737833154; c=relaxed/simple;
	bh=Xa8xRdgkoQ7aW0BvrWIAexsdsNi3iG6D+pr0f97SU/k=;
	h=To:Subject:From:Message-Id:Date; b=EnTxwnZMlqoSWsPGYCab91MyMSKf47qaxPYf7OmATck5r4eZ07gs2NkjLvZVV4Zw6HruP7Y3jtXwzPFWK5lZ9LKoXhGcYr8jdNkX1qKZUisAD0kjrlk1aqPu0TFuhZ4xRNfuQTX9O7gqYDLOyfQL/eqF6SVyuSNNoc8Th8xpojs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+G2rqTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+G2rqTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4880C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737833153;
	bh=Xa8xRdgkoQ7aW0BvrWIAexsdsNi3iG6D+pr0f97SU/k=;
	h=To:Subject:From:Date:From;
	b=n+G2rqTtfrvmr0ZBX/3FUbNptXfCkxPqYnGRkBK4WSsimwgkTuhlEfEP+GhMbEgMJ
	 kOyx0uG3VUJoWIrCFs+3cPmp/fYNzWZAFq+NOavcz22cthG7IIhEXYEQm3I23efMMZ
	 ogkXxni2K4eYQ+RiPPITs7lMrhJ7QBVmDg+h+jofWDSXoeGrEVB6TG0q5jce/0TpdM
	 7z7eNZ+I4PPv5kicYc5t5wgfLRgDQ6yS1rJnmVSOEplrDX/K2LaytZQbivizBmvK9U
	 ECbDmj0XnoB5HtxbiaryDZf1ifMCKpEjmMGJ0ctU4vkgIviiz6z9vMdxlKs0AztSvB
	 hvwfcvQF96L2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147CC0218D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783315358.27196.8824224790168978678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2133e51faa3173ad17a9dcc9554c64748d69746b1b3177a6722650d42d0c97
Date: Sat, 25 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737833153
