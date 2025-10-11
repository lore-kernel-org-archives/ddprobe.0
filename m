Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A40F34BA49
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760161794; cv=none; b=NNxMRVv+TEWCT3FC09gG8sP7joVqAMDps6NQlH6H7p6BSw9nVhFHkIPHByfucxEf8eGN8hR3PofqVNjVOQ/vw8GGDg98rduBkTAVQRouP8zEVdH8EunF6cpWug7Z0iuBWCiXI236UIQIfp4io4Qn8o3ggtjcZiCk+Y0YTBS4Oas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760161794; c=relaxed/simple;
	bh=7Jpq4vIYRb8GlontBH//hBy9dgTCR4FJT56ldeFmnjw=;
	h=To:Subject:From:Message-Id:Date; b=Hy/Ro0N+Lh16xab/Q1N/J469wb+z6l22VDgMNgI1XLGsIbs5xnodf8UAW+/56z2qRnBd/tlEd2e8dYO2jl/RgGgdvZNh7+cuPxl6906sBPv/L4LUCr14aZKM3fQGWx8xTSDewXRAuebol/COmJVDA7hBVSAC0I83UAB1f6qu/DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+YzPm3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+YzPm3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B6C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760161793;
	bh=7Jpq4vIYRb8GlontBH//hBy9dgTCR4FJT56ldeFmnjw=;
	h=To:Subject:From:Date:From;
	b=u+YzPm3zEszoRhaMFZYQKKdk2YloRBb0AtDJIx+1t5gBBfe5wuXLe5HytcYAFSWZ8
	 /kMeqoJBEjiXFhL8ZR1Rwx4Who45MOHTxhVj4HfQEZlAdM16cvy4qrb3a4MpFc7v77
	 RAhqt3h6R0APi94N06AvdqQyF4h+wwxhXk3FAISEklro1EFrp2EBiVNo8jb6LiuInK
	 Jhm+xS8dFw8MvKqK4cY0TgKyQDHWgg84LlLpHIzEu3ydVjHoboTPgLSRQLU0BwQJh6
	 RItlAy5xWGoaBMZtb/mmtgU2PZF8yeewWVRRrVK0nEoUaOgGoFm06ijtJKZhbSTUgG
	 0YzXktq8sC60g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92528CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016179357.14617.16969180147501516799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c246c252f1568eecb85751e47eeaea0adb55d7ca2861ac09c9ae5e353ef85e2b
Date: Sat, 11 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760161793
