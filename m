Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F92D46B7
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751630394; cv=none; b=YB5vMcBGTvbSw/uor60TIww/YNN6jVcdn2ICBuC0b12C67NkDFNq4avGulKnYgQpWrCiUmqNmxjQmRgb/oFja1eNeWmz5DskXlUNBr3YnDkBqVf3ZSrwqWPGI/5yc5+EMblAs9wXy8mYs38M5vKSeVE/mRYg2nLg+PZWj1xrdUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751630394; c=relaxed/simple;
	bh=ghuIG+bAdEx9KaW9wmhczfZGeUu240ZUYbR3VX4ruxc=;
	h=To:Subject:From:Message-Id:Date; b=JwpgM74snX+vz9lgwjjVibykiO11EpfmFvGGNXP5rnVWoYhxeiuSN/L9yeCXtX+gI+b4rmIbMyYXm7c1WoUOWnuHAH/vFBr+zGsNYaBDXfhQ1LmbXVEHVjNarTZ50ZaM6TI84NaJLuix3BWX+B4hBHxNmTvyTSYL4ChVgn+Wf+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrdR40BB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrdR40BB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70BEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751630393;
	bh=ghuIG+bAdEx9KaW9wmhczfZGeUu240ZUYbR3VX4ruxc=;
	h=To:Subject:From:Date:From;
	b=GrdR40BBA61OjWCwLNCRDhsH79rLGCCfJ+f1jVkR5DCss5JyGl9YfTtW3z7QFsXg/
	 Iy/J4hX1XTKdlakq0Lt/D9a0+dYgzrt56KOfNP619kF0j/LLO+4b5MgmqCzJMt/+zB
	 Uvy07xmpVEX0Lq1EdR8sNpDNAJYQlp/RWUjlRqipGkt6+XOf/duuGv70RKyVs2olB4
	 9jh6y2hSd8ZjnBem6uXdSbKOouwhiYRGQd4ptjG8/LdGHSPnFWfA8uJdsJucjg+L9q
	 2gj3ul2U0qYt/KSaf5c/7z0VVjzkToCMupnlcYlK/VSZF5Ga4cCyVyXWMJCTOjqTFi
	 hUJfJuciJ9RAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC0C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163039357.22405.15780358666861243256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057f715c921da2eb209559ce43ade7341bdbc1211347a98aff4d2fd94e4d22ce
Date: Fri, 04 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751630393
