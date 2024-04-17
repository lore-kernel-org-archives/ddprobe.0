Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604AD139F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713344963; cv=none; b=bM53Zbn1UfMsGzJPkqX+cIDqC0vkvQ2vPJ0KpxqmYCuhFT/oj4YTRVWwsME+RG4rXelgv+rK+zD844JyJOzMjtlItsrg1ycO0mcLRNaIhPNpHCRnW2Tyfuj9Q9PbLNdv+pPoVTxleWIwhLw8OflwXneniV+hsOVqS4cOf8FzEjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713344963; c=relaxed/simple;
	bh=Fn4Z9W+CF1DZ0G7kGYTLUTl32kel1ZOshp8HDfZupbg=;
	h=To:Subject:From:Message-Id:Date; b=InPQE7CeIxAuLcfuLbVRpKqmDcl2Vkp1FYehSQnzUSTB7aLoHzxOti8Jcd6D2/JPoUYPbKglbTsWoqOf4jk7c3dGlPUvWVz04oAarH0DpBmUenIBAZdAXzff8U+W06C77h6CHp1DUMpSqJedV6w8iiBbyvRSfgFQmP9/dhorywY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teZPPgsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teZPPgsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A2BC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713344962;
	bh=Fn4Z9W+CF1DZ0G7kGYTLUTl32kel1ZOshp8HDfZupbg=;
	h=To:Subject:From:Date:From;
	b=teZPPgsY5a4YKrT5mXU4cIcw6GNi2mB8M0XYigsX9SQ1uHr7qNnhlfsbcy0moXr5+
	 n+krTcgTe2N67xqqRzleoHbFi/xi6SoR1z9MUm1pabB0VBABmk8z1zcXOXwMey2PLZ
	 1U4VwQBrwrkNipFPXJyxcBoik+Ssa4ZRaNz8uXU6kN1z5QScFQaHn0sIkMtcaI+oFS
	 wd5sKJfMxN5vDk1CD+QU/MAuYw5YpPp/ERoCh/VxAaNwigHiIb0Ohyg+6gM9mKqg9e
	 46aZ1WKI4sLlXkeq7LcDOmEP1XjI76l0piGdcIsvr/Cthmeq8eew22Stutawq5Lfhm
	 427lZMl/S1pXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3E2C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334496282.25915.1011806352840538906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596201317791ea69485ae309c68eb69442651ef35edc17431b485767488f8727
Date: Wed, 17 Apr 2024 09:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713344962
