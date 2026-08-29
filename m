Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA721C5D72
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788013834; cv=none; b=cihekl5MsEAH5h2OFOs4TNskfMMugjCmte/axr9UE2kXusbjda5zitrZBp7EoGIN/K26uemjqhrm18KsJTMFHphZuEc2XY2tkmKX3XgA/5svO7VOTepQP1ZioIeLzVBB9+SI6Fj7GdKJy6VUtMtd0FcaDTiKePqMos+XbDEWrqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788013834; c=relaxed/simple;
	bh=KM2LYuU/RUtgVPE/ajh4acnpV7MN6euyVJ2SE8+1Y4s=;
	h=To:Subject:From:Message-Id:Date; b=r77D4PjtY4NdT7DoDe5QZtSAblufxnsvyKoWrF0dAy7wyGjMdMqNxhAH8H+aIbbwEIYLO+QHyMTCaU/iQJXxxUACwHoEqoJzkiCMu+67hNjBFL+y1z2mxmWRc8Y0I3KWvs1vrUo7p+yIke89gD3gsnnJqVSOBR7kYlzlyiEY2uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4iC5nvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4iC5nvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A4DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788013833;
	bh=KM2LYuU/RUtgVPE/ajh4acnpV7MN6euyVJ2SE8+1Y4s=;
	h=To:Subject:From:Date:From;
	b=t4iC5nvpwUvQxUhjOKQK0AWMqpNTvRkxKSCLCERmk/bFX3pFpwZ6sRyMbZSXRa0GC
	 gdI/+9MaTPFCNypZGkZqAEgxg4bnJSSrVRsGj/9WgZJ2GjbbrU3Lhis32z15Tbd6bC
	 8gIZYy/2D/Oy9/9ayUw3oynNG93BCniy3tbAqs4DwUUlyjDnvj/aaaZpaHT41n2oUS
	 xgAeKSBr8ccZdlU1HbuVuuf39izD66QWpJAfHgT4D/sKBuQd7UZjsho6O3kVSqG1Bl
	 SVi0wNejb+p/UVq9Tm+28ELEFpB8vPYQ5FESpjoVjqpgfspS8MinZSzZybN3pt8pQl
	 xgkLJBVHkBxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD6C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801383368.28247.599145849066808706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd7ecc37729d1406b6cf373cce3f483a4fcd9fa957b6ef4f545606668f55509
Date: Sat, 29 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788013833
