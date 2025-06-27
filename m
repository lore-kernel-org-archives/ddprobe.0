Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5D619258E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751003394; cv=none; b=DlndrNxtwQNMyhYDPwqp3sDxDWN5s6RhdTNTTouUtZ7NUkUW14IFT43Wsf+Jd3tBWDllBk743jBIleCO3I2xnKQuUJ4GqESq6gygwIwV4nYpZKML2ZqCsw5kcb79Slvw1bKCzgc7h3xjoS7yhSUquR8Dc6AjU1X0YQmyLNBbF3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751003394; c=relaxed/simple;
	bh=XRzkkhknhNpCQADhPXLcubLtw4p7BMhE0s5b9oxvV3Y=;
	h=To:Subject:From:Message-Id:Date; b=ADMJxfefqZkCbvFJT0egGSOMz68fmi8wc0zxH/TiBXkP59mfrQwL8KfLFsQvJ9LXO1KZ9bvh5JALfj61iLkvaDBIfPug5Bvnai1hxlS82lAsBnrp7p90NMxb5Agx78XI99q23+OsE3NBlkq42yK3jQtft+VEnnTrE0y8J6+Eyl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y90TUFFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y90TUFFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751003393;
	bh=XRzkkhknhNpCQADhPXLcubLtw4p7BMhE0s5b9oxvV3Y=;
	h=To:Subject:From:Date:From;
	b=Y90TUFFN8mYS0oe6FL4EoH9oeogP+Uj4F3WnYE69rFJEbtyV7QoqEUP/AuckPtPnt
	 b5vT48GpzTAcvBu1WlY8RKRFoJQmsnEeQSAvakEpf5k7V6Y0HI1egL8D8jum+WnY6o
	 YjXphQWt7sEdev8u76tMA49rxSTHfRnwjXfIT8KQqKwJCZzd5rY1hCCJygQtcZfKK9
	 h2qbQDVZoXwPaWTOzZ9pg8JMCy2G+4TpSLK3qxSiUjICs+zHaKpS7xaZpn41eQw9fC
	 Rok4hkFFrHQnRpMEmfvksDpAz4tynWlau/eKxpx6mKYvFPWR7nwpx3Y2ar63y4NUFE
	 BzrMWNwB3fU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92451C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100339357.23957.14723628275105701774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2413eaac25fbe0f2696cc22108de7b26fbd2551989ffda26d42b70d0c77674
Date: Fri, 27 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751003393
