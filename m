Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252682773D8
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765967634; cv=none; b=qtSheCOt1iqYN2Wz/Jt6M2SKnPKB0OnGSxWfagVGrOI/WHhnmJ6+jmNhByVdCTyE7V5ao9Cp1lmg6dbB5/V29eVWKGrv0WGXfG2JAT8Ru0xZx6CnRunJ1rQp/kcxzJRe+SOmjx5HuMl/CB2CvzljtuZeZFocdZ+LglIBE3m/9dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765967634; c=relaxed/simple;
	bh=CvZZZAKSjItzsxaczN4eMgMzzwitbdRFq1cJ8L3IOn4=;
	h=To:Subject:From:Message-Id:Date; b=XSX0rmhJsV3t0c+mY3MlPy/vFYGx3Th5ecP9mCCWavuVMNVJctfv2ewdjyzCcNoJfUAdg6t0nbuFmvJ89kZDMYbEq2H+N/8yGSZDZsI+GKcESh8+eqNF55jPkf5WNRqPS9qx+AIu0Rb0oGBpG4rNV2EZiasUE9BrVTnyRML89aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE2HKBWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE2HKBWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A08C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765967633;
	bh=CvZZZAKSjItzsxaczN4eMgMzzwitbdRFq1cJ8L3IOn4=;
	h=To:Subject:From:Date:From;
	b=HE2HKBWzLNKz2388Rn4atfsWgRab8326a0lbcLp096U3v0WTGoIFfsKjdGGkYjLhX
	 gUbKMlrP0TdpKKniYnyqcgCmhmrgF22o/LoPCXTpoA+meKJOcPC7LbchIFROuytREz
	 xuohoSXp6oDs9GX15Z4/rvSK3UT+N1G45jMF8pDzY+P9eN4t092ZtTF0dwMmGM49TD
	 wU7BJo0REbdZ8jI/rOdeA9mtfU5nIeb8s3LVYhdbJYq10VVgakzGLb6tqUljA6+uBZ
	 nnsR+NnHBXRaBUEZKXCJlz6qE7cCEGkQFcxhfcswTW+PLgBDDUowTx3XzpTAQID96Y
	 vNxjXDjgPvOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C79D6553A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596763358.8723.17660343492473770191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c702d0d48767a1affb5b273a853713fd87713945bea55c79820b2f17ff632e
Date: Wed, 17 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765967633
