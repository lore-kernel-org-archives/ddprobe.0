Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281F319F487
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746984594; cv=none; b=K9KDR83ab80YuvPfusjCpglPhkSg6SKLbg/D9UxIKmCOlyJtcgAfE8PmlQbo8gkf2mI6Pg26PXMwsuUi0mP8MBUqiXudzgtx6eODwOJpcZmyU/NwZY/rRSVPJiGp81qNbKkFnT+ul1w3BCq3cjJIr1DBFeImIk61p/BH5XNIcoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746984594; c=relaxed/simple;
	bh=QGoOStRoFDtRgw/zThMlgA0OOuT5c6uDh6oi4AjzqxA=;
	h=To:Subject:From:Message-Id:Date; b=YZEnn7d1wVHSyeOM7cUbMGsMWOIWVJRE+RtPl8TblpQva/QB/YRV3uDrJEW/gTvBrSubsSRIbdz+t96y/Fp1k8tKauDuOHFaQx5zWm/xCOPPOz1MsAWjV/D+6CLIy4H3REity/0ay/KqTLwtKkKVgmLu2IT7KJxpzKDWEAdu618=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcGTiAqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcGTiAqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A134AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746984593;
	bh=QGoOStRoFDtRgw/zThMlgA0OOuT5c6uDh6oi4AjzqxA=;
	h=To:Subject:From:Date:From;
	b=PcGTiAqn/YmEoE082j6Sv+9YNMaiu0eMoT/89mxevtYpPNfVnb5kliC97TwL23EPW
	 T5B+9X+r103wPgjxGW0QiitJ0fdV8856fzVdumogXK5tO0V900GbLcd1D1ny6YmnkR
	 hdZpWHO44Jp2HYTADXtQ15YIxNbDOdD1JQQF8RLd9WaAMl4gfnswo9C9dRit7yXo8I
	 dbHlAmxAQ0QrICnSgQXcr33PPGWOk8KY0KTFyUSNGKVSFi+rDVC1q65Nm9WFmoXUuj
	 0lloCQ801t65DXuvzkIVPBrL8bUMHEYrL7oO8/97MAeHnYEmrerrFTrsaq+0dlEM8A
	 Sw65KaS0WnqOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91988C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698459357.32471.16117858633031702190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cce6d845a7518e7280008949a04aea7334211fc8338d8ddf99dd06acb25e96e
Date: Sun, 11 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746984593
