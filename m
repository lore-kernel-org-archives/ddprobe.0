Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C162726D4EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756453193; cv=none; b=dm7m4ratLFsm8BVCErUwOXt+s9IVRgozDX3m8U9T7ZXAuZyvG6xbuQ5yQyy6YjiWYOmM27XIY2XJSpbxbYTwVHRCF80Jy5jhDToH5x/sPyANdvEbl6/lhuF8rlZFv/EkhcvLssLaLRQJPBdTBN++3+6PK+9u3/Sv1n55Qlcac68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756453193; c=relaxed/simple;
	bh=1K4rRteEWhlx9NRaKrx+FJatgbB0NYWIIQsx2gCzSS4=;
	h=To:Subject:From:Message-Id:Date; b=Csvg8BRpzon9q5nmL4W9QrkY1epDb1Laf2CDlpgbDO3PLX6MrMsVaPiCQj6JcaB4/TibRnamoc4GJWYJ8dUmazSH+kuMcBvuaj4yHBqVpAALvCfnjOWe8eCHjGlU0QsrpE4T03Fyfudn4xp5Sh0b86x6ulx4uHJHDOms80WZhjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQQMLaoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQQMLaoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1560C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756453193;
	bh=1K4rRteEWhlx9NRaKrx+FJatgbB0NYWIIQsx2gCzSS4=;
	h=To:Subject:From:Date:From;
	b=XQQMLaoZXpjIkFr2khH/oR0G100vPKaBhWychI0aNBZk4KV3DGYYwcyIo2oyHPxBE
	 VYeaYDTcakDddnKp6zajrHWkkfcN6AvbETXzpprWElgYikp/VeH3pNjRfSg5zJY4LB
	 wer83TcE2d2f1TPdPGO6YZXOSN+10WVtFmdxK7Q7tpZ2Mtn6xSzzvUiGwnox/GUq/E
	 OhW4fxebzKxxKoqbZ5mu8QyIULvWs7+Mi64C88NDpk08WToKnMzLwU/+O0cGHrMWZM
	 V7awcqBR+gtwS4d8WI1MvJTUPne9Jw574WYMuwrbb3Hc8Y70R77scuTd4/R6uwqh2Z
	 vmt/UrPF/H++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92288C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645319357.27219.13048948431472196732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb7c1ab211260fed212ecea972fe1c8c8181ac09e7771d12e33775b1234e131
Date: Fri, 29 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756453193
