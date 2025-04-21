Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340E71624E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745254794; cv=none; b=LO1XlH3BtfLO7tTHXyuFdOoBVfcJP7FIBUkcAajdtCN9yFd5ZpldsCOuFMozpvoNHxTBP6owBn3peP+kxs18QCoi1LsjY1tFSJbbmLQnJKUZ+S6YedxJP1HEpFGnQWo1g49O35sEKabUHcSIHKkmMx41A4+3vKWVYbtMG90wg88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745254794; c=relaxed/simple;
	bh=NZhY7UGV3v01ZxikwqRephng7oTgc/rbkjvoG/3KlmQ=;
	h=To:Subject:From:Message-Id:Date; b=aJS6FiQCLdv/lKNZxYJX2XDo1oOVG7UDXWAB2C6mZtAbxsmaSqOT/2vPrI3i+SJQwd+tIyXj8UTjA7QK/ANgitgt2UH96Ko75zv70/VcIIR8IO8igVbU16chJi5jOqWR7JYXpnhoOnkgF2O7+Y2+vKkD89gEd967S1RsHvIBXJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFbB5GFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFbB5GFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745254793;
	bh=NZhY7UGV3v01ZxikwqRephng7oTgc/rbkjvoG/3KlmQ=;
	h=To:Subject:From:Date:From;
	b=lFbB5GFS5meanoGf1DC7JBRGHpmV9lBwyHdhA1Fv9qEeZwdN/zu9/J2uDilMst29o
	 9OxKtNImB1BIehn/9dIiAQe9vd0fjaPgSgPBuFoC/iQXhrCDdpNwgLiw4b+Z/aq8SV
	 5E1SooHcB+1tKvdKXpcMzX8Z7ij0GCNA/MAtiJMdoAgSaZcfCA2gBcFvJ1MbodXMDO
	 wbRPT/K12B7KSPdgxCVtMlA9KkApziZVyKt17K06p0DrYVST+OvGEGHikPUhjmSAmI
	 U7au07pZfLSSXVTjRKmZ9VWJodwzsOOmG8Dl+p1w7bh74N/Ny06ZaGpWinSmmb82BN
	 GG108P9A+VRNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9426BC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525479359.4128.4435401147229769169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d451f376782a1f8c402b44b5259d918054b19dabb452d8dd2bf2e8752efdfcf5
Date: Mon, 21 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745254793
