Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297922F2E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759683594; cv=none; b=c08A3MkIlWEyESP6MI7pfCWgv07UKLAYdVkDbs/EWeRA6R+wf7Ag3w5PQcAPOSg48xi3YyvMB8bP23On7V/YIkHi4lZXammgSlwVeYrYlpco2+KRk6rkftk1RcXKmEhU1Jz2hLnSahjeKYpH2OV6iRUaErsnsbfbU9X6DhJso9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759683594; c=relaxed/simple;
	bh=bElwEO9epiUtl1e4v61EuA9D0gnWmWWJ16SyNVi+5bE=;
	h=To:Subject:From:Message-Id:Date; b=qDwYl2LGnYBSLFCFp/KoNRKzjWfILiBqRHinpQcIRppzTfxVpmR3RS8MLoBoHFPQzvjQBJ2FLCtYVXZlZTkMnf7I14XxiF9IXDNHeChQYczWB5T44Exqq/rTlCrQEPss+5ESbel72MmqIpPeSLgLoWEL5NNcMf8Mq09gKBQe/Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+gJA9Kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+gJA9Kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920EC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759683593;
	bh=bElwEO9epiUtl1e4v61EuA9D0gnWmWWJ16SyNVi+5bE=;
	h=To:Subject:From:Date:From;
	b=T+gJA9Kh3YPz0abC/FOinGogh7AJox+ugsDVqwE5Saie5sm1MCGbuZDM0MCHtbYPS
	 4ucauxjwcPlWSrSoYCbTdNnzM5rZmjv6h37YGM2xrC943i1cs/J547jDKiyusXZkfB
	 1dJ4yv89Z9/N4fX3m34y9crZLx9EiO+/Y9ZfnddQYNv/Rs8oVjDAk2L7/X4fJMdwQO
	 SS9E93kZFVZN807pHPOHsoqAGFP+aidJ1reYPVxBUQT126/7ixV1MSLJVjUWbquiRr
	 9zkYHaIo865l786SLRUdJyXxMpbG9WIe3/c8dy/W7kJBscyg2xv8wm3Nb4wb5aCgb1
	 XyjpRv6R7W5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96624CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968359358.31265.10482891951151019020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8b2a2ff1a9cdae2f23524710c82a73df7ab0335caf2304f5ce71e9f2e87a84
Date: Sun, 05 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759683593
