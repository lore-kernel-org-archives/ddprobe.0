Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F19836CDFD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780682074; cv=none; b=IaA0kMgo/8HT/G59/Tdhm49nv0RtExPCyUCtABYReQSntWWZQMZJI5OqwOvOcvoPcsKoHS9Ml8hyvnhZpQeKcN9XlW52rhRM5NIZNScIUALEIUQEQYiiwhedF4T5noEkmWPMhXQzj9piks6+E3Jjpr93p6oK2mQfz2aIY8RDmBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780682074; c=relaxed/simple;
	bh=oetD5qyKjU5Ra5VCYPxLa2fMcZ4KOo5UNFpXOmo2BGk=;
	h=To:Subject:From:Message-Id:Date; b=AtlLggrMZR1GPQZ/VX4uSOcC66L60IFgZwgYIaUawLwzu6/aC4DJ7BjmvG62BEmGrUBsG5GSfux637ZwlWEa9UqZ9DjHhMzHQECYNDNtobauYxYExG5xD9+shB3Gtm9U+9Aif9U54O6cjKlODRNPpx3dKoVck2Pxuz9rO1sAqp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H31kDrti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H31kDrti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEE6C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780682073;
	bh=oetD5qyKjU5Ra5VCYPxLa2fMcZ4KOo5UNFpXOmo2BGk=;
	h=To:Subject:From:Date:From;
	b=H31kDrtiyxHnuHLHYfdxipHXaPM0gM+t101jo+Wh81KAuV1ezu6/9UON+nT4oESCR
	 tB5StGPBVipLQPuMG+VhILOVAMLzJxyT3um+NFNNtVFuwcnmCsFloY6BdERv77RTeI
	 Ptj5RMYt8G4DFvJTcW0VPSTrBi5Pe8DAId5dQjgTzkX2udgsNjIHwCRGqCsfWFnBQk
	 t0i7Qblg7aLc29kUQt0fDkNaNBIHzcuF1UQ9+wXRtqmpCYysr1Mp0cQAknbhR3pjYG
	 zheH0k9b+mJLyYMai7VFMlZAU/y4RmLFjADpyjPLqmUt172thWKmWlMWRPeew/t/ki
	 2ngKb/S9vrivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE148CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068207370.6115.11991396923074395464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335a015ba700959ad3585110124a28b4a0d81d92b68d1f6597551decfb12710f
Date: Fri, 05 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780682073
