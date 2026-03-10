Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC81344D99
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773124494; cv=none; b=J1pjzi3PsZ43wab495Osqbpw5SVTv5k9Y4Mj3q6NBjlpjfsW6khYU/CYd4cSQhwoIZ1kMBm2aOJnKlf+In67cPYf42ddWeCQC2Yi3PppmHF9Q2B2xmzbI7Urr+kCaV8RwX5cnSOINbUE+go/ypojFTjXIbVyfD0NHectzAdx+/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773124494; c=relaxed/simple;
	bh=bLgVd+8XY5OkoQAbV1xfdYkFJpSBpA4cjN02aSV2wlQ=;
	h=To:Subject:From:Message-Id:Date; b=KItSK3Kv1IS5bO6fM35oxVCrRztzlblShZpv/oOqC8N8K0Nv6k3cHedT/KpseTeXac7bi/RNjza5f3T0WDmFVQMwGzbx1A1Ehfmq4GKcEW1dtbx185WQHjTmMUNNLeR3PW9Y5epL7OMCnyuDY3iLHV9LN919P8JgAUHsZrayi4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMB/C/Rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMB/C/Rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B63C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773124493;
	bh=bLgVd+8XY5OkoQAbV1xfdYkFJpSBpA4cjN02aSV2wlQ=;
	h=To:Subject:From:Date:From;
	b=gMB/C/RxX04gObGU77y4dG+NQ4DZvz1wR/4C9qz/pA6XMnneAvUjq20OFCGIngHrJ
	 c8UzckHkR5z5S4JMOKf4wJGyv2pU0YnMTRMrP+PKHhQ/mh1l/nuJ+lWZydQ8vzgkqk
	 B7QV2MHSraiMp7MthKT8a7GOq4ADP3mPtrp/0TjrJz+kDHUAOm0HiP8dUMUbxvjZQ8
	 nSZO2mmWGCY+T8Ed0nc4xi1FGTTVf7N3j9408HRYgpjz4PRCNqUTUljJ5gS7kK76bT
	 5NIRsi2rNJ90en6AXQRtj48WWJzZGw1R+W7XbINoNedUBsI4kRm9LXcVxN+zABuQeC
	 H6pmVvOv4Ro5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FDFCC9CE
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312449357.15453.11755228812321265589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7862a158e2500bb7c4210fb5b1ae4af6741f0e7a060a436008c872952a6658a
Date: Tue, 10 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773124493
