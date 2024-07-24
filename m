Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E998158A3F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721835354; cv=none; b=Lh+SCsIMacxlxcRFFyWlCF1OhFOCHq+c8VJv5cnSME20Oub94rjKxqVnF5UK/XV0WR+JUGsJnPZ9Rd1SNBon0gv2cqrvlJdcQE89VrQXoX6n/OOujNe91EygKcTfgHzKjo1RO6b/NpjomVa83orcPOJ23er4/hQdZRptuZIv6jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721835354; c=relaxed/simple;
	bh=dUEO2RpIvW/xhy1shSx7LE0LrDwWVyXdLrJ4INjj5KI=;
	h=To:Subject:From:Message-Id:Date; b=gEdi2K2vCWsoFauFxh9LJylB5VZR0hT/5WDPzZM5i4nGxKM8Slxa5n2+28urHatRgrp41xdkwvDtKEAaOi5bRBEU/iVK0N9HHVnnfs+qN9dRuphYLZZTOsQzzsJq5I8ugXiO1g1zlGEPN8sYQGJs6GpXM8qlvNaqMOW8/iM4q3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9qor3zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9qor3zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A663BC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721835353;
	bh=dUEO2RpIvW/xhy1shSx7LE0LrDwWVyXdLrJ4INjj5KI=;
	h=To:Subject:From:Date:From;
	b=i9qor3ziuN5D69U0522bdc+ZXDcp3w8SYtt76c8WRM3q6SZzRT936Cng8ycMgvNPp
	 c9dj0gsGFnny4y2Js8dvmvni/UlqiU76hCk3JvvKyLK+8MSdj4PZBljuNltKTsWqqJ
	 IlyQ4wbDcCvC3GERWZw/tXmnlIBRZ8ta5eHd4H5URlc80Kf2gWfQvhc5DjOICH0cRr
	 JF1ePcD4pJlNbc5ThJHucgmpmvbzPVEKpN0BoLAsMjkJaUzkOQHm9CtaxbI24i25KT
	 Aq8D2AOVFp+0uXogwiz8i2a36wHiFYXPviojTeCXRt/QMeLKWmDcpmuaSSsoBMXLJt
	 jESQSPLFZ33PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D0C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172183535359.2942.1078132555338249047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1c7f6052487a4468da2e01d2f82ca10299f10a77a560ca50f8cc39fde442a0
Date: Wed, 24 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721835353
