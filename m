Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189B423AB98
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765555974; cv=none; b=AU6rkZkdsumHCFx0fgLvX93Zg16JY0dLsHVxIBP5w1YKAz5fi/PYhtzSJpfR1K3l477F66TsCuajqRVRaXn3TLjzdJcJ8M84RYhTRWW87HvJgqByTMEJZwExH1kodCQ4IHUb6z6rEzyusqdwObjFvTlP0pewvMfLp2gIzKy8Ypw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765555974; c=relaxed/simple;
	bh=t5MxWkLpdz1eclH/AvYDVHLgltIXDIOFIH4Iv8FXog4=;
	h=To:Subject:From:Message-Id:Date; b=j9wTAEQL4Xs0D6JOYjHfib9wgx81jwXRFSETpFiAS6WGxDo1/Zj/UUK08etI/WtquZ1Dy4+vDYFb50fzCjrOpzYdTpCU65do/pmcJtF4EY0i1aH+CrZ4irWxT6kfmiwVNPEitcrvwUYKgJnzcltqTDm5TEYDz7FE0XSy+y3Hcm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+wY3u90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+wY3u90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7491C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765555973;
	bh=t5MxWkLpdz1eclH/AvYDVHLgltIXDIOFIH4Iv8FXog4=;
	h=To:Subject:From:Date:From;
	b=u+wY3u902+KI20C95EZlNFW2PAuZgpAjDedHsu+B9qndFFX+Sgka5IRwBWfDWsT1R
	 /G/olE2gxzNEq5HnnqXie46AfU7/q4icp4p3eP/tsNOYd6UYWnE4XQggvxd0Me86ZW
	 d+jtfJgmH2vm+X2+CttUJHHHlAUgc63vAFmNuqQVlVN9eUVJtXGq9TSckVJ7be2Fdo
	 udOBFYblynZmsKCvcyjyJsrmHPQ6HjoNVPJnxa7lt7kzcniRi/WKjT9USIr8zBOOVk
	 y8H+8Wrv8ashrwTaVH/kRWQm8DCy9DxEySZMShErJKCp7jDhGuppGHTWNlo5/KTsel
	 wHD4TGZoR4wmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF7D59D77
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555597359.13175.14406484571477397109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b37bb0d7c0f4b1619dd85f1775d9762ff1ee35e879d8d5f637b10d3db63a27
Date: Fri, 12 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765555973
