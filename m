Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5276918E06
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716959063; cv=none; b=tYOXXg1EEkAlnB39RtjZptXtiGYHelREUwRJQZxmFoxbkb8O7vjIY97HZ9CoYKiuYSJ5VKXqtE86EXF2YEqKwCspq+35B1QQwV3CsqRqZV3jPRZaJjYO+e/ueKj3p5ErbCZ9v5AMp5Qsi2e5gHa96++CrPRTfOpiAkJoiuey23c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716959063; c=relaxed/simple;
	bh=R6j8Gt+QiAyjPMcnFPvXn4tewXIoL/noqWohWesP+mg=;
	h=To:Subject:From:Message-Id:Date; b=G6zJHoqPS6/9m6NbievCvcYQ30sfZilKIELs6JEN/jCFB56fkJ1ghYIABdygLoTUT6vBMz/AqH/i7Ff8dsQ3damWZC3jyjWm7KPzrYjiG4qEBfoOsh2J74ePDi7EYN0PQcHjKm1DHXk8nnzFzWvFCqorvSPEBPvcqCxnJMnl+Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGVejPkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGVejPkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13E2C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716959062;
	bh=R6j8Gt+QiAyjPMcnFPvXn4tewXIoL/noqWohWesP+mg=;
	h=To:Subject:From:Date:From;
	b=GGVejPkhZuQmb0PnKCalrAfkREur14ILzTwFzCcL1b0RiAkAU28jenVuzOrBwvbGR
	 FTJHaSnbkQ88jQ28bl4msy3HVK8LelwiC1FEcC/KxzvsZbie7JQuvBvEnFxdr7SBTn
	 N9MjUAcTJzf5jEEp/RsHcWnA3HCuClHQ3d7ACr0Jg6J2PGn27scivHUV8HyssS/eYJ
	 i4hDmcibmJKHN3fqhhZ+t0GgpzxKIHRq47p8a9lorqn6rGWwpthP0SiGKf9sV+i1Bd
	 wZtuobA6WzjgyYOOqbW94E1L1rQr1yPvERAC6BgV7C/odcZb03gQFteYLjSvGg3QOr
	 vSOxxKtOEIXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8942C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695906277.15818.15577014731953808964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af4c7cdd89fefd5d4256dbd9c6ff76dee07f562e9ab5cdcadc9c0ca555af28d
Date: Wed, 29 May 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716959062
