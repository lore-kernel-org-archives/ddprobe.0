Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2964422C6D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733524554; cv=none; b=hl2Fk54u5O6OVjdvBNuEbn99l1gaOeUZJdtxmKn3UQP2Q0d/gCnSoKJngTFcu5t9WPOzeEOQHoTxtNDU+x2SaiQm4WFJBrG/KQK63Wcx3bMVYlEJbaKJSL2xh55iGBAR2y5k4yfgr/4Jcn4T8AY5M6pfoDEvJ1N70uiVF9AbYKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733524554; c=relaxed/simple;
	bh=u0KC+CbbzvHFjNEcl6+nnPYBIbdWKZj75r6SU44GL/A=;
	h=To:Subject:From:Message-Id:Date; b=I8R+/V2QgA/37aADe8mr5h/J+MsVVHW28JXSqRpQ7EFq6QwO+J6hxTpCxkPMTMq734NlG1VAy+v5iGvkLjwLgLLQpR64Mxd2jxgwPfmo/9/YhUxGpmTFUH/08AK15RYSAAio9Mfr4NAg4DgcYHKCgQidoF9MaMKVNP4mV+mBjqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udKRjIA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udKRjIA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A687BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733524553;
	bh=u0KC+CbbzvHFjNEcl6+nnPYBIbdWKZj75r6SU44GL/A=;
	h=To:Subject:From:Date:From;
	b=udKRjIA41OqfA/pNGFJNqvNKGBi5PBjqFknlYaWYooqSDUOJvjGv1b5cmM93wBbb9
	 hM6HV1PPDyFtw2WJR0JElAaYjS9XddJpdGqzTKfeqFgUb1VO1OOXlV+p9bZocqA/ud
	 KK2zrVEUszA0ypfFVgRbXuz7NkS+NUTxYBG1XAxj8xeSdo5ykNnt34X9nipkNLpGBu
	 QH77MqCZP8DHDsQHZmI3wpLZYVztMKBpgy/Pb7CJ3Rifi0++ftScBdiL+dzn8/EOlq
	 l+0/9VUivISFRqLtoHKaT9tGZUA695adksgUvkoJorXAyRKZGGNV07FSvxlKxEhu8z
	 cuiwilgsgHwbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DBBE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352455360.30850.10804105060348244672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd21155abc1ecb321266770978703708ea202c3b5001f7471736e512332bbe4a
Date: Fri, 06 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733524553
