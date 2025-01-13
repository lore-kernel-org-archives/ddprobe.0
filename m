Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA324024E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736804754; cv=none; b=UcDKedIi+/p0V4MElVYNBrBs72hkiZA5UlHySDl/Ls/WfidxWqFYzrwRMdq8XEqmyapxhDJS7c9SH/ijHEQHSvib8yUapiul0gt4CZ2LHQWSPZPobOt9nWURX4agUcUuqlW8bNE4h+93s+hYiK6fFV5nqkgDhFgluUgJUuQQSVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736804754; c=relaxed/simple;
	bh=qnBLfU2fnzgQUMXEv0I9Zi3D9rATcCJiAOFSAzXSKCk=;
	h=To:Subject:From:Message-Id:Date; b=HJ1dyLvFzxvhjDJCAI3CAJPOuBfuLtx8LBSDFRfqZd+LIEMKRSnrXrfCdvHW3eWt1HmZ6kQAU3vUAQT9Dn0Y4OcKrA0n24Usbxi2mNzVzGnp9YZx0rYq5W6lJKVokFRvGd+yfw6pkGXOxjj+yewfig2vbBKgFlSGHjTVETNWlXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1u7EQrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1u7EQrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8010C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736804753;
	bh=qnBLfU2fnzgQUMXEv0I9Zi3D9rATcCJiAOFSAzXSKCk=;
	h=To:Subject:From:Date:From;
	b=L1u7EQrb6ijqwO4paJax4+DV+XndH0y3SFNG+fCY1cRTQt7W2R6BXFOpMiUnHiK60
	 8QfQerpRMojNm/QnKrHoNspxwqzaCz7V3/uSaNy02ozHnCKdxIAmtrOpd6HyskHqQb
	 4C37A0AxTd7GvVd1UBg3rlI7CC0PDPEH1fVG+BHG1ttNV/3eCepjGdpVjhO5zXZBTc
	 qLXp2V6O+t5/R72ibH6jAELMUDJ7VvPRdNNCGPokMK3jiqYmOkyItztEPa/13n+FNK
	 /5PltXIyKK9z7HpTJInN3hbJc7XooL7ONAO28rAI9KwNQI839nEsN5tJwLFfNtgxJI
	 IB0DhMDRV6PPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B25C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680475358.20687.6886777683033602020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0083c030b48a8fadd93162755e5e9091ed7f081654a52c91ebeacfe255a28540
Date: Mon, 13 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736804753
