Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E77157487
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754851194; cv=none; b=ORy83p5RHpKXpyJ48GobxqqNwD3lPoMmfrwZFZQkZUbzB7NEyGv3O9NbynokzMKWzH3xnvr0V3UUV9qJ7ENFDdhW/CThVaR4FQD7CmTG2wBaS30QQDnR8Pu1F+3oHiIDFed11V2Hc7dIIYBVifv7NfdHN6uLwl+XZy/5H6rrIb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754851194; c=relaxed/simple;
	bh=v7DH9db9fXqhrxduBl4rY/Nbui1fmgBpAL8TkyCxjKM=;
	h=To:Subject:From:Message-Id:Date; b=NTctoQV2zb0QnXwifS5Sf8GvgqpMJj/E2Id/QuC79gfxgkB5GXvHfGcp8f82YmyhNT/ShkfWkwoibUfGq0oZ5kH2GQpaDHQb/SFPWGDIxN5khlSeYD3ObE9vdUPvQmyLGgwVga70TYgTFbS6TgoQMq0CZMN/bNPcFGfKp3nc0hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqQqEC+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqQqEC+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754851193;
	bh=v7DH9db9fXqhrxduBl4rY/Nbui1fmgBpAL8TkyCxjKM=;
	h=To:Subject:From:Date:From;
	b=CqQqEC+wN2iz9XFTrFbdAkSSZq2LJgE8jcJJKHPaiQlXJHG9ee+hXjW2aNFmy0Zj1
	 8UQ/rVbBHaQv23UcyrsMWDIZV3dvWI9C75V/d2Ikc/wPomdrdiZ7TE2MtkkreqfzKD
	 TYIk4HthxmwGl3NHp0CGQKjuv9BV7ff7jr6i3vS7PaaWZd3OBjMcNYCCO35ePwkH3G
	 xPzPSsWiIguTd1mA8tlsglxY/zoFZgxrxqYqDdzPMw+eCjW69VYHaCrsGgmRhse35o
	 2XwljvXXv4n6bfVLdzvn0xYBrHP3F3spf21AAm7ztLkX8qFZbbXUf0G5Y4r0YQHSV0
	 E+DMMjiW/ZJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A27C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485119357.8096.5544727866458754363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad37252a6ea3eefb84d9f3b35b40a6a91c16f979ac543ac8c0b436bd57127e17
Date: Sun, 10 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754851193
