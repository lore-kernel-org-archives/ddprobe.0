Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999C848EBF0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785331834; cv=none; b=Ild4Aa923byg76xiRkseJuvKHFdCdacEiwsXDRkhp06r8AbFllV5zPcXOqkStivvv1IPQeYAXeRuV+ch9n3YD9uK+gZgCDEFvnmVCCf7ARjbDRFcni6FQ+6VZt6ohvUYc497PPdQ20iFFyQhEingEEZZlHozHkk2lSau9gwAT8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785331834; c=relaxed/simple;
	bh=fCLVqPtiLwHDUBFjEqhf23KYpiflHcLVU99EcKc6hsQ=;
	h=To:Subject:From:Message-Id:Date; b=oBi4X8tskeIJAT3BfzBNDF4dT3SHm6gvUJujqHFtzpMoG0zD0rK03WtDn8ngqZK1MPS4uClfLoMRcjvnoorvoKfJb4PPA5hEoj/cdR1ZeKEpMOsLWLJT3fI/ByqGPcQiZMpQ3c9/+TwqavzvAPkwDaS234jEPKRRz5UzrSXlWyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEYs3xm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEYs3xm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4103C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785331833;
	bh=fCLVqPtiLwHDUBFjEqhf23KYpiflHcLVU99EcKc6hsQ=;
	h=To:Subject:From:Date:From;
	b=lEYs3xm6EXfIGKzihYxssC/Ciy6juT5TCDVrZqn9MkE872x3wz7cQp6D+46i6fL7g
	 NLON85dVvP+nCi4ZL5MkVtAf+mOJLq9vH2GuNwQjwl6W9idZkacMSwT2TON65jGIU5
	 mgXwf+ZfBlkiSWGl7XSGVLeEqNWj1+n3M8v5n/zpS+Fa7TEQhwunZHCr/3YrZjY7hs
	 adIfeffMhXeum9vOAbDjiUKEwHP24BC1c6qsU/U9E3oO1p+Iy69F3QkcIC/IrExhYs
	 xXjMYthvDcTsy3gFZQBZRTFHrKhPWDkH2We0LkcIIMQPIXHThqaRPpxkgDazCRGSDJ
	 FtooeEafL8bQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A7C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533183369.7150.13758197839210002017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2282d7c60f501d436c5d16af3a494d55cbb2f94fce92df62807fedc2b3a8ecc5
Date: Wed, 29 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785331833
