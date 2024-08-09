Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395E9225D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723238154; cv=none; b=bDYiL36ss6K0CzwyWBhHSHnVEOKLsoZKmwnP8ywsQXUL8BqngJGiryEHGMYxwQexAkMqwaYqLadziLp7lnikTs+OXZh2ODnLY7ukdlKTRT7k/p2dn6NNebliBGpVTHDNgpJyUoF0g/VlqMy2Rde8+qTkMBbwyFjmzgWqAkcFEjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723238154; c=relaxed/simple;
	bh=UNWR2AfllBBVwG/WxaE2oh4pCxFYTS+d2iMrBtfJeh0=;
	h=To:Subject:From:Message-Id:Date; b=rTnKNQ/29rCtDto9oRKwvtX9nlsE24Np5zyKiZEhcAuxL3GsZ45r+oQ1Hq9bubT/MB6qXzaZjvR0zhGjzYORVLzLU3D18EK8mJ9VhvkVI5zdK6D9FHGg7pvtt2iop4yFfoWkE8CJMg74IYk+tcQ4z7g3aJwasTeTkJU1qeTJg+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3Qi2Gkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3Qi2Gkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F1BC32786
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723238153;
	bh=UNWR2AfllBBVwG/WxaE2oh4pCxFYTS+d2iMrBtfJeh0=;
	h=To:Subject:From:Date:From;
	b=B3Qi2Gkr+lopH4QRLdGc44uCf+HaAoRDpRFOjBYId6zxIvGA/tHuJCIRI2Fp2I7AE
	 FSai/coLTUfeWl+mwWm+ymZVzXZ8KMP8GY/6XehHzQ0kSf9Ay1If1NkwRfVN3dIOvP
	 LJvzXlHaNnViJ1aO0GZeYdIYJCw34hefGiCVq4j18JhPbPc7jxfO9bCvXJ122gFHpv
	 3aX6JYQw1qWoPGlSqLvq0ATXjCdf6PuqlTkhju9RF+yHj1y0rw9sRqWoFThmIrWW68
	 fpO22KUx42zXYhN4GT+CDlC6xFW94xLP+OxgDYb93ULrYQJ+B+jDjDCmE8Hrcf0r9K
	 9ThnYLAFPLPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E1EC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323815360.2698.646237966300055191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a0bdab1709701981ed3d63659b108492ee47f1ac0ca5eafc37bb1c91727a40
Date: Fri, 09 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723238153
