Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3997A37BE75
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779699154; cv=none; b=sfc1hWMHNtkK7L3X7h31k529iC4bO6xuuneDVxLi/lLzkSH8RJuPT8bi+wGLXJc4USIf6rEb6usUNKo9gks34rGgLlHqawibKUtUJFDiAQ0xYOE6SR6O7X5gpPotBtp3wiHy2FmjoQC4LvsrsQWnJqNneWSPn8OUF4PIFu7C4Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779699154; c=relaxed/simple;
	bh=iMiISJ1N+KSdYXbgRr2HkHT+x0QRgp8PldZ0As9k0pU=;
	h=To:Subject:From:Message-Id:Date; b=DKSUTslH2jV3CnWWqb3hMQyxQe+ilUn1MlOgDhQzN8t98/XgQW3hwD8NMNECKTA3Ov1l0CT3EyYFSRq1HmXs/FdMfitCjD+cmuDstu3wuBHDXri7KpAkMsZygQK0negbXkqh2uPD3dL1tM7kbQK+1BBWM+APK+9YzneT4PnQ9FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6Ah+AtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6Ah+AtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2E5C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779699153;
	bh=iMiISJ1N+KSdYXbgRr2HkHT+x0QRgp8PldZ0As9k0pU=;
	h=To:Subject:From:Date:From;
	b=o6Ah+AtKWdnMIvQQndZR2Z+sypSvvpA4uqi5wteeZOp8JvbDMyetkjXiqSfgaCo8S
	 S/ZEFpq+P2po5M5yXO8/RwqpCie+bsX0KZuW3Mp9pY3PA43VA+Oqx3dsxsbfzDgzhw
	 3ioW3JIZ7HmZMp+cyyghAbiicVgFGCH7vOBEb0sxfYr74tHrMMhJLQrTJa2uLwKUKY
	 TBRA/9iEk3M4ot9/ei6jDt0jUf7uoRRdUMPRdA9892FZdNMJLCSSN70MuqjihBiiti
	 ov4qqi8mP9jlVzY/BEkBUme822MRiLQUSWLYIXpXt5RLtom6kaqP3Q7N+17tUfDNVn
	 t5l8wpzpm8GBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15A0CD5BCF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969915371.16128.9442751384304312263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf2ea4def11682eeeee9a167a48805bad85ab7eca6a799b7c7fc3ed71e1f518
Date: Mon, 25 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779699153
