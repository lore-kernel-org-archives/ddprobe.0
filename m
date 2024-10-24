Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496553C3C
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729739154; cv=none; b=ujG737ZsPO9UNNpLiwX+0Yl5b9Tl8yP+i6XqqlWyxGrtsmTzaPkBW1500mLvAOR1OvjS0D2WHJ16uYQGlTcHyXZ/0FdxWF5gBbGYFz3lhvYSqFBlyknM8Nj6XvICZ2uvZw6pt5acsvyNfrZ4KYQ+8AH/PyRIws/D47OXhamgFqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729739154; c=relaxed/simple;
	bh=AZANJz0zxeetLqbHgZtoZab0UjixA9UxoWbatbJxmwg=;
	h=To:Subject:From:Message-Id:Date; b=YgSDI67LPP8nWqXENDObU3FPokgp7T0CZBHJeZElxAG/RKz9kBsf4XG8CA241M1bBrejxkRhYoRdZXOAFsB6neVthpRY3qyj1hBeXS/KAM35qZyOGmZJvX3qevuubPD++LmSyY//w/Hcgfx3kM3fLRy/E2L19Bt7loPFtVCu8Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpTCkSS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpTCkSS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45EAC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729739153;
	bh=AZANJz0zxeetLqbHgZtoZab0UjixA9UxoWbatbJxmwg=;
	h=To:Subject:From:Date:From;
	b=bpTCkSS7HcEUChYD1YtcK85Zes6EL+K56uMDp/xyF/XaFdjxF3nrB2t1tpr8h8A4E
	 D+D1O6J/LFc3sQuIQpyEERHqe7wXj6SEZGOGPb3h6YJom9T+6+rPmi3QYx5E4FrzA0
	 mqXfQ1yEIQ6WNaBSJTyQBABR9CHr4r4JCgA1kcN7tugeQ/KHL3EArbPkXVvNPZ8rYb
	 izNXDS4r4RvX7gDN49X1vnFIvrM4lN075D7oCpkHZevatOThWh5PXlehwM+5DLLle8
	 DrzXb/Nid8mwuEKAEYeTlNfPk/WvaA92N79gfcDOlTxuOaA7pVyZYpKrvXWqDuH7+B
	 xCoCb2npPzJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2330D0BB4F
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172973915362.2237.4881063357709542630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54aec82179d6a3d66613e27bf31082943df9b09e799a4306b11c669f8e8704c5
Date: Thu, 24 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729739153
