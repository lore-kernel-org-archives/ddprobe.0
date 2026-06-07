Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FDA17D6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780847074; cv=none; b=NQwL1rZC9M++E5Uj7D/XATLKAjFYvpshe2AxUFXRrt2kqnR7tfboYvkthHWyCIjfjRu7kNmuFYcfjVDJw+fQTZeg8x3LUEVx2YpXIstusM0uZUVb2uwpux+37ZaggcR+mrBMuJmw3mYZmZbAkVwOABSurueZ+5fzonWEpFtRi78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780847074; c=relaxed/simple;
	bh=xlAPl8ZwX+BKWgzlxTXGtqoEhd4Hni5M91P7UJEcb2g=;
	h=To:Subject:From:Message-Id:Date; b=TXSa8zF0D63geR2TUiexxaLDnDGZ7oecJ7AZK2p8PShxjADyC0Dr/mCIR3U43Yqycv52JVc7yw0msB/4DwdOMfc8UoNTfpBiek3TR6dJh5faMJnVXPz9O3ia66qm1zPkgLIlNObtyvQ7QVZENm6HALRBEcwNhJYHdaTjezWsl4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNi4oNdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNi4oNdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7941C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780847073;
	bh=xlAPl8ZwX+BKWgzlxTXGtqoEhd4Hni5M91P7UJEcb2g=;
	h=To:Subject:From:Date:From;
	b=vNi4oNdDMmlvd2GZzGEIfJWrO+L+NddXz/3rkdqk9DCILMMd4X6WnZG+bOgkVXFeh
	 kG9SOt2UMViNrH/fg1RmHUVPwlxPDsZEnRCMnJQTdGQehJnN1ij15m76YhLKcYVpjy
	 ANE3mN5cCGUzhWQ3Y8JpZl1csVyqYEtKsRpfyylk8ccfV7qL7XQrrUCPMAg7FSseZ0
	 7yS7FyKQf3bEniruAEpaZG9nVePQdJx03Af1Ch509Tc0fpE+go79+gpDySfKQsMig+
	 uRtEPdMf0Z7RM8U2+teMuCQqcUkCcztjEOiieIQtbSpk42BUm0JQUZtUwXcu3928RB
	 zv37BgNcm/zdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2B8CD8C8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084707370.16254.14331250231734560767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc8447fd1fd7d5ce63fd753e25b6ab05697072cb186a50354ddcdc3501ecd44
Date: Sun, 07 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780847073
