Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525B22FD69E
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788015034; cv=none; b=tBHfR16MhFsMceeXL0QZfq57gFL/TGh85AnNejN142FC6VG7k4uuf1RS/trjCu9sWV3mZ2Y8OJvP2eByd8uPxhNH0a5S3Hxhe0bSV9/RS1ZHGk3EQW1hw8FIxTXtKCHELGS7vT717P0mPRfWITbSdTNRAaeUwaQ3JPJcqecSvUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788015034; c=relaxed/simple;
	bh=3IL2be+8TGHRV+IjEP+Gs6+h5wDmWUS1T9oBmVIXW3o=;
	h=To:Subject:From:Message-Id:Date; b=qHNBuFNquT438fb2Ru5iaeO5qkYiOnR+h3wTEDkGAUQZ7hQbZQl9nu+nstoV+K/M5PKuZqOU10RYQ8/75ify+Nbw+cNp6iNcRY065gNtniEFyNdcmxJZ7AClHenmHEc1SvpdRmjHPTxi7Zemwy80iyKIk09silNz5IGYgiLMq+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnTccCMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnTccCMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC534C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788015033;
	bh=3IL2be+8TGHRV+IjEP+Gs6+h5wDmWUS1T9oBmVIXW3o=;
	h=To:Subject:From:Date:From;
	b=OnTccCMKEPsOe6EJ4XjubwN4ZZYluxWRNWTZKi24iuk+0hcfgUxAfUw2fv9LEAzXE
	 NFkibUY5WduH7SaV+WHliRMvaFEXXa04AJXEUzgcaAeCbglfyVgJABMOLoZToU3go3
	 nBUBn9J4fpl7rs12Sd4Gw1kZOJpU4r5GcFRH4JbAua4dCq1Lu43Ah5WQI3BaSyt/uf
	 +oTH7PDAKBAMBMpgWFaFYWQmpT1aMpNOA5U6rNpKF+ByfymgBMVUtSEsA0EcWs18hY
	 oYzClonoyz0PKLCaSfRHGvyaaGw/rxLLnradNPLJwVp0Gw7pYLeBrIpdt9UGWBNWIw
	 qa+KTe46XOfPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A6EC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801503368.25557.1200522787222605860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5fda094a63094de4295af27ceae5ac30459555b76b61e2e97db09abd53b80c5
Date: Sat, 29 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788015033
