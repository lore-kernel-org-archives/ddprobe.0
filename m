Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B88157E6B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754718593; cv=none; b=jWWYqnWXefp3+e9Fsf1+5IUewJeJTwJ6SO7rjoECFlw4+dfSt+87ERLZisDFyZBkhy9rmeSAQvKHsGsZowG3ZBRR+8wwbDF85o2UzkoMT2V5lDGLo35U/SbJf+uNIHWrWzg7yCjbOS8pxoT/p+p6TWSgjmveGqGWBD4tYhc3pBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754718593; c=relaxed/simple;
	bh=3b8GhRFLHTPhauHlWxQEFUAXwUpi3sivyTvSSMrnxrY=;
	h=To:Subject:From:Message-Id:Date; b=Yo3i11ffo8tgp+x0nVmsy6EM5Xc2a5FIYYuTF09X3ElQVjLHYN+U0huyOGoim+vt/nE4x2qu5XhJD/oU3QtUcIm1oQzrLNv+SIeVzpYosTp70xLU54a27F7lw/x6H/7krMBCppHJOayCTAjCeicoJf22C4Mz0h/hvC0JJDyO3eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHeGMDdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHeGMDdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F976C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754718593;
	bh=3b8GhRFLHTPhauHlWxQEFUAXwUpi3sivyTvSSMrnxrY=;
	h=To:Subject:From:Date:From;
	b=pHeGMDdnY8Bt84c5hJuQ80ez5jBnyc/z1HLLlqzRl4ToXMuC57bcEvERb3sq6x6t/
	 ogw/DvqATGdZLM8ItfLquCnIowbYMwKi6q/sTplGsLHQSV7eXHP5n44F8uPNbYIamp
	 FV8p2fHZ507ZLvrgiSVLNS4J/hmzhdqLzierxN5j6hJB9SeSzxfcvR68KAsIbRmb/w
	 ReVEOs6w3ToaQ8CCc31KlRBfJmI1TyblAB3lWwXu45j3Z29PpHrI6z9aH1LdD4pinG
	 8mY5NF64kQgA4kts1U+RlaNWlAYS8u7Fnnmr87hZPPrNqlsf2R7m7qXle6ovdsk7D+
	 vB+dh6rnifTlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A8C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471859357.15653.5195024736746074942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed2ffda97a5952dfb7a5a0912f6ed9e02638d62518ae761ebf82558afe7cbd1
Date: Sat, 09 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754718593
