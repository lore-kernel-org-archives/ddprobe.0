Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B602701DC
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751866794; cv=none; b=uLnpJXjHRQcFbu0oYi3Wt75n0E3G0IA4Zoaaf/j0NGNnNbbq2DhswdcoG2EBI92BNWaQeFxiH9/YZsTXQ9AtzV3uiSFLZ+EkeJBlee/A9l7aEUeeO/jx7IW4msawhygkEPpH9u+/5GbxLiFOeCIrEmg4+r4zhK2uhF+xh1SZ0kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751866794; c=relaxed/simple;
	bh=jGhqe8BlSzTD54WAIytHoZvgbGhLif6GUaJCEZp+jq4=;
	h=To:Subject:From:Message-Id:Date; b=f7iQ4WhN4IdJL6cM54SnLcU9l1UXxMSVDHIDyZNPjtNlbxpBM/ccM6uc17OmkdCCdqeqPBJ8psMPK1VpVSo4HrJEJ6LuL/BSPSjdrr6X2B0eKCsldMDP+pgb+KipyIOLASE+hMwfH+b7AdJ1Z0OBde4v2I31gQJoP0Pv1IzXxRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+SeUvkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+SeUvkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BA3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751866793;
	bh=jGhqe8BlSzTD54WAIytHoZvgbGhLif6GUaJCEZp+jq4=;
	h=To:Subject:From:Date:From;
	b=d+SeUvklB2ud5ga0d3kc5g4lkZ1bh9cb7+pJ3OhsL2s7NZyH5IbdrsK7THj4qYmfr
	 G86QIzbQy1QllnXVBMDyA6WDvdy1y04Lb+lqpnWYjPsFvsWmTxt7hVvJ3mc/t+QEah
	 6L4XKdbGplGFGZDjQl9w0LG+VkFJDetAXn3W/0Aa6/+9SW5yZdeIobD5t1Pv3yg/wL
	 mAPoR4Xae7k/mBVRcCZPghum2Kx8OOZNWM+VufzGfyfcE7wADcgEBgnTYaaUNkkjgt
	 JBsFZOABb+paQ7UfKrn/CeShSuDYs/EL9Qc/UBwxax08y0o5d+mUaPBLlohrvzMS8V
	 9WRLqW3BmP+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EBFC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186679358.22133.13845493825654712389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9755777a4bf86b78b3d2341c7304f5216a9995a34317f4f9362263cb470523
Date: Mon, 07 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751866793
