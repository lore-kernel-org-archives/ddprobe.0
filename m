Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ABA17993
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401034; cv=none; b=Gs13rt8eM9VgdIJmHqcaSlTA12Zt4NFu1BhPjDHbko1UdeavLUwVGdp0yRi2MFhvfQyidjYnXZwUWqil02MDs7VsFdaYEnQQuAjntAtlGTc9yrSuPCipj4i4WkqtqnnNCoNzjaGb/deUMgda2pI03Pd3UD3HudJ+gEggnPIK0rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401034; c=relaxed/simple;
	bh=vtJAUHqVX9mAGyE0c6Igz0ImZqHz4Ej1GFoFFEOsprQ=;
	h=To:Subject:From:Message-Id:Date; b=fWhCaDSERRXwyfTAEF1YZSmZ8oV7NZsah+5Skxj4DWL3O60www4nqbGPVhKvEBSB3G8HzOCTXXdRISUvkyFgKjuqTY0STlYKgljj/l+kpbsJz8OTYK5gwUpcP78DFJcepquYf4IsyfpG9ncvyE8JkZOJNNXnbJjzm6Od/hBbb+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmW3tQnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmW3tQnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74EBC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770401033;
	bh=vtJAUHqVX9mAGyE0c6Igz0ImZqHz4Ej1GFoFFEOsprQ=;
	h=To:Subject:From:Date:From;
	b=PmW3tQnbsfOCP7FFjBECeqD22fcUi619rw70zCRL2h1+HvwtG/ISevCXF0XHJB6Xa
	 7KOCFBhN9tRBMLWdZOulYcFzbvgOz9/byd0qWyujcfGYcFWLNdCtr+7UMAJribSq1q
	 r09QekVJI21Et/XHz5cUJ7QE/rpVQAe1EIOM7mi6BCdUkyko6aTN70bNQIvpxyK/AS
	 msRSx3Jn+z3UMdFlVMUedzs88mO01ccthbDOzfmnOG2br7Rewb8Ni4wjInbToolQ0j
	 3rO/qINBCBqo/mg591mulzLgxwokx81hhouJWIGPLSHplEKVX72gJxccUPEiK+rlDu
	 ryRWX77s8VG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D934EE6B46
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040103363.13239.10513768501869184558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd3400f6417f5d0d4f866d9f68874ba8a1b6dadc885dbd8a00e2a6912c3fc94
Date: Fri, 06 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770401033
