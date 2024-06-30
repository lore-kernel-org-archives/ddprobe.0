Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1026A1494BD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719756863; cv=none; b=dIM4by97/jBl2RdI/MzhHN3X62XXm2ByphlB/CCYbcCeCJ/XKWanT2mDQytGWUv/i0AMDp1GDxI1DJkAPDmEFsbX5PQv6Y99V6/cArr05cd2tsOQB6Pldvz3YT4hPkpSaI4CHw5rQ3QDuzsIwjxNNPMa+awP5OOmSA1bQVwTQkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719756863; c=relaxed/simple;
	bh=BX1cdqBfqhF8EdCfP1Wds0kHlWSbyaqHgalyDEkWdOc=;
	h=To:Subject:From:Message-Id:Date; b=TwM8YK1ZYGI1F/HaOhMhD3Gau/GTIrS2hi9KOyPC+7EU9eBlCOSl8ksNHshh8Wb2Y23gj96hmg96N12Rxl1+GGJTITzRyUJhIElUzsfcGbYq5upbr31ooETME2W2Qi7yitrhVyze71nGjDBzoexAaswhNKR7ESIIFwifx5zZIoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sb+sxRIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sb+sxRIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ECBC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719756862;
	bh=BX1cdqBfqhF8EdCfP1Wds0kHlWSbyaqHgalyDEkWdOc=;
	h=To:Subject:From:Date:From;
	b=Sb+sxRIPckejjuNM295tjvtzdwAHrxVGxR/fPEmE2dJfq8ws3dJn3F71OuMXGRMxq
	 CBgRjYVYNJRnifOXbXe3zfg4LD90YwHjxqXrStQ8/921O9s3oH6pd/ek3BkW8GoPnK
	 wrguolc/IkqGueEplgYsE2Lbbg97kOkL45KI+qcfd0eLhGSw6wtyqoDMY+Yh/hY1NN
	 +ADa7T9rollCX+vHME+TaLm+qhUGg0UBLD7woFk2fsfx9gtJlotBHYBC+dsKcLymtR
	 lGK99cFwQlJqiqR1ngsJIxafi+Yf5lqp0aCDYI9dt0Yl1bD9f9CITUlYiWf0oFVtaE
	 qSuT1CQUZOlZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F49C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975686276.11525.14475582598283895999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b8035e3a9a5af8ecc89cfa8b4a34daee5af4aca68d63da3f26775819832963
Date: Sun, 30 Jun 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719756862
