Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE621C84CD
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746653994; cv=none; b=O3b16hztbOrTNIO1PKWko68CELkubY0hCTapeagZMjJPEySqbgJD1wMH6wWdlv4LNSWwdf5RavN7vfDcEeepUtSb9fzxinq44TCTJEsInsfwobIIZ6XzYVNFTbeuzsqI1xFvEmy0eq1NMztIl6sOf63PYZ60l9FssUXSTP8teTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746653994; c=relaxed/simple;
	bh=m0gY/Qf3hYksyO2xokvuaymcw4OGaBybgwre0T1/NRA=;
	h=To:Subject:From:Message-Id:Date; b=Skhd8GHoaraJMBFYPTMn5pKL7EwXg09aOCqONUz2SBn1f7ydzj958Ov4j8+Rjcr8B/WOO1TOLJFAsJ6IJCdv0gXawWefhErqNViJbkWAUDlEpF7+ZYwcAqHNAo/ZAEacDlk8jwj7XnBhQAXf/wrqKlqvaLXhxuEfG6sjxCoTG6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLRFESBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLRFESBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2389C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746653993;
	bh=m0gY/Qf3hYksyO2xokvuaymcw4OGaBybgwre0T1/NRA=;
	h=To:Subject:From:Date:From;
	b=bLRFESBqbEEteEt+DfIveRbQIaggFWJrz93yRfBzq70L2fOwELeDNHASvMhaXgmkm
	 K8kpY21XGwBH6jaENdkRSFv8kmOm85Rb8ZjTmXDwcK+/YOs4rnm8tOhNpUGtplMLz8
	 dgVi4xWS/ISA8R+QnvkMau59vY2Dc42MijmIb7gorfcbYUsYwlR1uoGodQXoLMbErx
	 Zsze5PTFvxi2xMwN+KbvLzprnqBlzDcU0zCxS97oIJ+GwqvVX3I5/5DHBehBpYcHb2
	 z2YHVH2U7ZW4j4XKDKx5Hb8J37/FxluMcbnkDa448XiciLmawnDvHSOT12CIsBJr/x
	 lyNjs8ariZzkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D9C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665399357.10614.17917504338081794681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bf7ea14881147ecdfd676ee1d623574dfb54b198790736a55ca49f493d9ed3
Date: Wed, 07 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746653993
