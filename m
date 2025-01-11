Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372B615666D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736586954; cv=none; b=txWqL0USn2uErZLCM1r6su0QtXwoinAsDaTjBFyXl1wrq5TuN0ah33pdH2vXmc24SOsLpP9oMLZPwKreZc5X5x5obw3UpFdMZrkSe3mxXLMwrSofevMTlqbnLDtFmuROMFWopDsD79VrvOs4lK4b7LZw5mDExlwlh8PuW5LJFY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736586954; c=relaxed/simple;
	bh=CJ5p5QMqiW6Ir2PD93hAlW54ud443/0n0qtZR/GfM40=;
	h=To:Subject:From:Message-Id:Date; b=F4H+LeTfpOnF72B7OBFdMylTYp5E/t1JHZrYrN7JXJxuEXjvXE0df/bvIm/W06TO5pD43k1A1jD+L5Y9eIoV0pb1Kk9eh9uMdCZG7lAW+H/3zIY+Ote38EaL88z26Q1GD9TdZD7csnbCLxoxnSLNfdihGHw8YXo5t3/Z7tjSFxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLjMAi01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLjMAi01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E2DC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736586953;
	bh=CJ5p5QMqiW6Ir2PD93hAlW54ud443/0n0qtZR/GfM40=;
	h=To:Subject:From:Date:From;
	b=BLjMAi01vZwNfPbXM+AA6qTb2l9PCLDd0uJGuX7gpcCfnwg00gQO55UD9JeSOHm8Q
	 8b+jN+3j7jIEOO1ij25GnIBklkBkAnsXZ+p9+6wucohoYObkyvIEEUyeBRl4zbt1DC
	 r8b5ZW2VWH4fllk+XpoEnhsaRme9JuyQweupLY1WSL9pF7ig4JyEVIea85XMIs8o+A
	 JWjP9ByxYmMlApQYaPn8+1sjcb0xfY/fGANpIeEqAtJcxAMKTaARhVsrsJgpVrD1/9
	 MTKLg1pw17yWjh5CSr8HEAlycTtONh/jlY4cO+A226UQvgFNntzOL6XSfLpH7fynTx
	 aYx/Zqa1RUVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCE3E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658695359.25069.12929525082658477340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce867def38d3f1c1927b3d4c54cdca7618a6b70ba390ff2f3b9791733cd4cf4
Date: Sat, 11 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736586953
