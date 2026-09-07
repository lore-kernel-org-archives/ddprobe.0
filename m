Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4472B3F3260
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788763234; cv=none; b=qGOZ9ZCq3KNxWOSCQfiQ4DCHHCilSN5Kv93f4hVAZThvEbTMM5wWTbE8q6X6pPyFX3OchYc/GcF/Hn3CnyRubKx3tyobpni0xrc6eUAowgehzk7w6KhjV/1U1+4awfxC6aqcEkFzW+rmv/Qyadj1trr+i5tiQgz2XpNSBdker7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788763234; c=relaxed/simple;
	bh=YySOPovX4flA+8vaED8uCmLbWIi32KxLG+dHpzXeo/c=;
	h=To:Subject:From:Message-Id:Date; b=s5L9UPB2QUHS+/G30D28o9U9cOWFh8Do52VEwO79cJ7RhUsp7akX8i5B4ezo0n5CKQ2LHHk5oeV/TASjOXF3AG8GPnMBKMOpOgtQfadnUtGqQL8ANu7BqWWg52R34Wk7t9lOKxz1gzTYi5sVYdPM8Rd6ZcXGTHIuBtaLmbabB3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLi+qg6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLi+qg6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2520C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788763233;
	bh=YySOPovX4flA+8vaED8uCmLbWIi32KxLG+dHpzXeo/c=;
	h=To:Subject:From:Date:From;
	b=eLi+qg6M/ySfUS/X0QZSg0O2Zt9n/1n24kFzjQDo0np7kVA+mSFiW13VBPGK2syBB
	 mjtR3xq482pD/JPEWFzXprWnLyGpb+dixh9u8cFmvX/vmI8v3Kxx9Vq5TLmN9kKB//
	 J+TGoTLte9EG5cBfxdr4kZF7cNmg6qVLMdkT8G4vDqcFkSj1k2SlCsZyC9EvGKmxda
	 ARTe6RDGxYemt5V3PhwU1Vq0qAWRImQxckFyVCOPvxBV2SJZ+pLl2wSPixyFEKSGoa
	 f/hXMjBryO0Uo4vHIqlWwBa0cxfrbpYcIaJOvN2uIDE9lpVjiWxzA49umB1J8FbJ6e
	 UFL50UnSdZO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB20C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876323375.20338.7549169707958211484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fa2a6d01f59319329b865a75e340205953b29c5fa180988e70dd46bf15b9bd
Date: Mon, 07 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788763233
