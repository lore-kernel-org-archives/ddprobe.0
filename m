Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C613932C0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772574294; cv=none; b=hD4+u0IGxdnO7XU94360e0r4hqJbcxyNSy5e0Mf+dbVxmf5uIO3RWGNaD5YM8y2vyWJW4RsNNnAdptrkQzIgDXsGIbQm77NKAGGh3Wn6uwgYuLbrT41yA4EtMqgtTE8jqq5TKT4zCMA8MFOA36NyANFDWRYnOopXyAT4RxSboC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772574294; c=relaxed/simple;
	bh=TOAST50quWQHCKdHLDX9f4UG2N9+mZlJP+TZGh+NxEw=;
	h=To:Subject:From:Message-Id:Date; b=kC1OZx3FrEu7FiwJvu7LvLjeH5BO2xiZuMeBf2PMqU/ZK9oBHV6vN5J/G6WWJhXM2UKlUxtz1QrZ+9gg7QFhSCLUH81/7AvcECGSiMZCwJEQgKLtepk0VdqFx+9DI2+U5FT1HdhFYdQfoqxp6PiqwbFTaIQWq4EyUPe5+Qr2s0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5MWHDLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5MWHDLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBEEC19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772574293;
	bh=TOAST50quWQHCKdHLDX9f4UG2N9+mZlJP+TZGh+NxEw=;
	h=To:Subject:From:Date:From;
	b=E5MWHDLwgSmhfq/YlGentiEjPtWw6eeKpYGgxSdHC4tfAUnaRPsLI7+sjo1cGldrO
	 UhohAM9Ni295FhcgnnMirETo51jIru4AYVUBczwlWbU9+9dVYhUOsz5iLnBlnl88nm
	 ARz+jrqoFOviPPCSvG5HS8PmxnFPeBG9eBvKwpnNpc+sFZxvHNrOvBACJJp6FBBneH
	 3wzgMVivEAOfIRdqYMyENCBNJg3adYO9aZZ86z6um/ym8lyYdVfYo3r7Xc/gBeW9mY
	 HR87Yt1zkBb1L1HzcpM5AJcWC+nnkz6UllBskZYM4EZKzVWedhsH4yzo5bX/vqHwPq
	 zRAVvPVDKYB6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC65BEDEBF7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257429369.13911.3093871149695165995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81bfa55efead0c1e924d589e787006aacfc54bd0e3f3ef4c3251ea0cc311f908
Date: Tue, 03 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772574293
