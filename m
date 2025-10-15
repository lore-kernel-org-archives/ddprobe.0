Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229A82D9485
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760516995; cv=none; b=ArVRrZZhqn4kXD1wGnCdBeUVtQkmJpUHPWrBrxCO0iWHxurM0EUeHY7N1n400kCwqMBO0UYAOjEtn/uX+duRbacBVWkhP8nlCBndcst5LUq0MXhk0jjSQLhcsrhrbdV0bJmSQNn9Bs9cOkfUrOQ6w32PKjFotBebjIwOiLyGL2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760516995; c=relaxed/simple;
	bh=Z2LrBMXPLWsKXvxCApxEcFA1Pll8O+Gtzh+kp5ZYKuc=;
	h=To:Subject:From:Message-Id:Date; b=iNKQfFfu56C6gBF2WBIMoIFqfvrLCKmGSLQskb7wwcW5879xldWi8v0gpGyXwaPNv4J05mAB7LeYQGjMrRADxlTPJeC+ri66Noo4U+lz5dAXKMAg2jSUZXXMtE4eYsOxL7RqQZoHKLOXGW/bJRZSOvG/CIZsp0FNyPwgJE1Luqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeKRbk5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeKRbk5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C17C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760516994;
	bh=Z2LrBMXPLWsKXvxCApxEcFA1Pll8O+Gtzh+kp5ZYKuc=;
	h=To:Subject:From:Date:From;
	b=YeKRbk5LMK0QYTBAksBWEBDPOHXUsSW7qUFX2XLOfDNbC31HRzWqY91ZNUtxrbOSz
	 3NtHIccMD1QpxOnMYiDcHarDZF+TKSBps2reAyB1IF6JkhxZzFdnOu0z6HUJFx3p4A
	 AHLU99zLZKW5NpeI2M9x0GeihIZ5NcuIffjM0wVLP0nLtZDtqTLYl1O/Hmwog2X606
	 bsFB1NfewaMSvvR+bqhNIVLxIpcnNBNYV6h6XBsgduio+NyAJjnnkHMGGWpAW8ZuVt
	 LdN97Lh7Yed10BaFQndFqxYZ08MM0+HsfTpENDTKO2yWU0ti/Nnnm71AIivayoP86V
	 ZI43Mo9hLUm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C51CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051699358.17746.4520160342487485932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ec105f0c763b6108dfc08dda8038ea5708c9c4a487c03f6221968b1e9e5003
Date: Wed, 15 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760516993
