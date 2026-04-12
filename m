Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B8D2F83A2
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775960254; cv=none; b=qxkeyk8kxcDQXsh6fhwPI5h7w493WVJaAfUJE5z++6no9XI36Btr53RLKhFGTvyzXYu5a5xxp0sPzSpptgxbwI+M4Y79vNEh7Et88I3Vc8ZNh+L80aTqD99IBLA3F6K6czJF31o/zhXTkIhlQTC0yoZqSBJguOh5NznDL0sfuX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775960254; c=relaxed/simple;
	bh=X9icRXz1wtSYil8UYMmf89tKG5M0JZ/r6AbyQJxAHpk=;
	h=To:Subject:From:Message-Id:Date; b=LBR0cHpCsnjbDgSTXr9xoVAT0VEjhhYlTt8+AyYfgbfGa0M4LtgXhiI8+iOP7HIsHaP2TkkFLQEJWZZCThqeTHdyUSYmmmr2JKLHRz5c+1twisX3H3xEzFmCCTyRhXzt0BvCMOWwZa6/oWqoc/VXroKI3I7Thp/rIYm8IQEjBlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHjpYGfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHjpYGfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02B3C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775960253;
	bh=X9icRXz1wtSYil8UYMmf89tKG5M0JZ/r6AbyQJxAHpk=;
	h=To:Subject:From:Date:From;
	b=sHjpYGflkYmfF4JYRjsZzscAB2Gh6iPoM8jP7OZ3XwX/ynI4mAdSMIZ2pb03DzgFp
	 l+RtleblCFfJpCuSSg3kxxuzFA49ym2UUWb7IP/rRHprJuut6HjXoQxKCc7I2Ed3WN
	 g/tu4L9kV6cpmKKLojPlCbqk88s33SPuQ2R0UeacSrh7rYCKgnfdnJgSBpOmLOAmde
	 TMtiefaP0NFR7C8PH4coICFu9f1cL2/AGsHxUw0sK188OSQkUtvRX7qtyoG+5ctCRl
	 dZRogafxw0ysK1LDmfwEYcRSgHDyoiD+G4YzUQfzs0Gs17dlAFi5wyXM5r9LG8v/oS
	 VNgxPXRVCUkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF881F3ED4A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596025368.17528.719010410587344427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259fc2fdbce7bda104193b013a15e78c906285fb1ac1aa5b0c0ca646e00e9509
Date: Sun, 12 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775960253
