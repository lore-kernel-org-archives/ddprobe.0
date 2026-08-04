Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C67D3515E6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785846034; cv=none; b=FhV67bJweaPJacrNTHDAVl9vB/zcjAetrfN/Yu8hT2XrGIdUWIYoRP3b754iO9Z8ZAxT8hZEAhPRvb0zbPDESfTDBiN2jhw54fJ+5weUSC4dCKV5F/4wTWh4y/s57EPHlQxP0FnKNdh3Ov8UMx7dnxh8vErjbPtG0/AhcwBm/uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785846034; c=relaxed/simple;
	bh=QXCdkXgiuK3UWkZ6CIytKTxP5g/lYp6Xb88f9KtfwLY=;
	h=To:Subject:From:Message-Id:Date; b=OQ7EPK27+AvjLP5yl/DoRrpjXuGyTJjEyLzXD+uZxS3HDYaKPiuBVMLQQwo8A2x+sinTuegE+1eiM1bgroKfxNa083HCFwyHnyR+opBlx0MQIpfb4GtGWlkyTEjQUodVU8kLALgGnahSesX/sG2QK7YY7vLXM230Tc27Sm0H0uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLgEVkwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLgEVkwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1514C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785846033;
	bh=QXCdkXgiuK3UWkZ6CIytKTxP5g/lYp6Xb88f9KtfwLY=;
	h=To:Subject:From:Date:From;
	b=RLgEVkwn2TI7tF4D/9ER6QJ+PYX7hDmPXbOGSBnSrADDk/U0DtiVzmSOoM5hN+TDZ
	 vMh8fa5BLBJVsR9elNXPv2wZoY4mS6LHzRn8afGxenvlgJwBthQ7zccHZqbj+CKXt7
	 RwMCibaPeiI3RfVGnIhaKdqJhf4PbIUmB+hIX7u9s7LKzLse4rAApQxN+66K7vD+RM
	 lovZDXR5EwEgJsFdYvXvkyV9jVpsgulpPBIveQe0md6M8+sBhuUX3ylO379eAjDWqq
	 K2eBSa3Lp/79Gdx1J/oFDPKKF1Ttqa3u1X1GyOCwI8awvEbwanoRZUDnQ7jxsKitzZ
	 ZGbs4coXreDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF51C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584603371.13134.3891241166837495975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf8883681cbf941246e8b377e169437b8396096960d99a1f4905d6938ff124b
Date: Tue, 04 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785846033
