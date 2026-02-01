Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B09A3EBF39
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769907834; cv=none; b=niLWTjaqs9oM27jmHM/WMk6UmmY8sUbHIufD7ZzNBzArYN/i3GlkF4NETTNn8WzyxIZbbeR4bDuTpYvgD84HLJvRITIpOKOU+PrIyio4dn/eP6EjI2PbWuinFbRFKSbBpmEfY3zE2DfDbfRNVgm9eD2n5nozx0scLPUnf/MKDBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769907834; c=relaxed/simple;
	bh=iWGmuMHVcDb8mIkrYwSmxkWq4y3z3WllHUj2vpgrYSQ=;
	h=To:Subject:From:Message-Id:Date; b=oSM4vzZ4tFPFkjEbroLBihGe9qLpQJ2c4WDpBYIPGE06A8KMVLPw5NRGVkPHQS0vPim77lOEJyv6J8LGxZ9jPHyKR19MCF2y+08pJdsnK0wM14CquGyS4OHSJoQzbRuBxnYdtTn+59aCQwMfgUmBbWSw80f9RvTjJH4bkVxPLsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhbTitQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhbTitQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C5CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769907833;
	bh=iWGmuMHVcDb8mIkrYwSmxkWq4y3z3WllHUj2vpgrYSQ=;
	h=To:Subject:From:Date:From;
	b=jhbTitQ3snf2FiTrh44xAAZ0T0+9fqKcSaeK4gYoWR03rzXAMY7I9+0iG1HRjALuG
	 hFBIKZyCPuqgk4wGt8UPgJOxy1b/HMKPxcegfLEAeTwuL3hUVk6kbFjoXOABXm5ESJ
	 FLWds89swlnkfCw6x6hMFfU5TU2RedyBQuwx6A7naCtlqzfsYKneeeBofolNRkUGKC
	 vasQVibiAgBOjAMKMEmorjgZV0LClAkGhVHMmOk76K1Xm36wFQn65712e/HjFvROCa
	 2uGVFg7pkn9VowIbSAMfRdBsPNbhLzGRlaIGVRGKiebZqfwaUYpt/z/OO/bOB3EXJM
	 d/YmJZp6qvZog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94526E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990783357.2538.17203967070169556637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c459a6eeebb5e4abb7919dc816231b30a1a6aa6377dfa2417c7fce259e7f511
Date: Sun, 01 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769907833
