Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF7E351C2E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777483054; cv=none; b=CftXpM1VfpWygGdsbdJ4J/yV7WhSPZ+4zahdaQvU2Bs/RFKo1zPfc+EDajKNlUgI5UgGIl2GPayUwT6zAUomRbsk7zG1OcNA/29etpFGlkTmxwIr675zBo9MxSd3g54FVhylxbAf0dN3u7JK3CVezL/zDDHtwIuGZLPDDLzUze0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777483054; c=relaxed/simple;
	bh=nWC2GhQanjB6gK+N149tece14g2xNxJ54KZDV2XRtMA=;
	h=To:Subject:From:Message-Id:Date; b=qTzL8IuGoCPpIV7YIsChDLZEyYDlAST3a9G1BrWwfLL29BW/pG5djIcal2MohUSnKbvK1aZC1JT3ug7o9OKRSQP2jj7CM0UPxx2pAfF9PnYgjOgFF4SyVTjDklncMODyaBSsBWIiTHFqsNAZ1UOLqU0lzkUFMacvbjjOiDtnxcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIzDZjTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIzDZjTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACA8C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777483053;
	bh=nWC2GhQanjB6gK+N149tece14g2xNxJ54KZDV2XRtMA=;
	h=To:Subject:From:Date:From;
	b=eIzDZjTygk3v19nLmg08X2aQhARbGHGDk3PVXhXFGubuyGMWBnDdBMnKjOu2RnEPu
	 kew84DbJu0XpFI6j0f+3vuVmb0BjSai6gg1LBMQjpei1rYiyOIvUfxOQ7pTBkCtPsM
	 qAV+/5hfIxYrd+UXh+0WqIEZdmTtDAgGsnZOaMqmCFaeClEeeYWHTHrz8hy5vVPh+R
	 A8jG/j73UjZ7qn6SEyINAdeTO2gmdN1TOOfGfmF4Rh/k0zCyv87PcXwVYRcO/ASSk2
	 Ieq7hNXY9ywGFmYHnjiGetO0UlDpvC0FGxuGrNuX9Hl2xCC4sJ84im4mNID9O2zpJo
	 ACQGGvBZnF/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA971FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748305368.4446.8330402594695027284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328a66d60cdd4bce951794345d35fdec469286488f04a9268ad6ebc054922983
Date: Wed, 29 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777483053
