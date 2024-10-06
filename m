Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7EA5733A
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728258954; cv=none; b=e3InUKkooSeWVekbgJSw4y/u54oYvNlS+twE9Kn2VtkbWtkuF9n0sjktbYZoCzGSkZR6FZF2dplKXZE1UyF3A0v/DDYLaDVvbIzS8lzSQ9sBHGN4eSh+8p3FQ/IRJKLFfE9UJrgFLxStL4Pd9qtiaZ4MQ25FHuGW97bJ2rforeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728258954; c=relaxed/simple;
	bh=mwFELc1vwULmV12SYbE19cdOHkuRl0p6jMH9aN4pT38=;
	h=To:Subject:From:Message-Id:Date; b=Rb7+2bvrKC9dHXHsrHKl5ubA7k43bBGAtt0qwpk39GkforEDhJDtmo1NMxVPBAgIiyA2j9JbAMCfXBSWQ7W9HrBe7t2c3foaNlFt48u8Q4P3ARJ0uSPDLjXN6PxcMeX/Tj0g7TS//LKn8G6yJfw0REP0uZ+3lySqhh+fSQN+2tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCfQn/ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCfQn/ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7552C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728258953;
	bh=mwFELc1vwULmV12SYbE19cdOHkuRl0p6jMH9aN4pT38=;
	h=To:Subject:From:Date:From;
	b=mCfQn/ca7kE8XQ6WCwoPOdScpnvuvlr/NVIerifsf5MzsOgyAGE5TFLPrGd+w6vg1
	 lBaY4HDR1n6K9G8L/+UocE1kQUI1uCtSsgQ4A6aAAfx+sBW1Pv8Onr8Tx7FhYexslq
	 pgJaqs7e55gY0ESVFOgvxk0K6xJIx+f+UrpRb8qAP6tcbZt0pbC1yYmrYdwGKpe+tO
	 bi9xmeI0yab+0OCFa+pvB6mkuBN6X0n73bvjXsJerLuKP9Az12llLjMm+YDPzcDYMr
	 Q20i7IVnhlXrygebDm6K6QpuHmUADKLCRwlWQQu+dwwVG59bLRULPFp+fzBA6U/stF
	 SkY+BQoPpPvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9899BCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825895359.22043.15611365394731672331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42dfe39e2aba131cf1b804cee9b2080a395716cf0f1f06804a1045e158679586
Date: Sun, 06 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728258953
