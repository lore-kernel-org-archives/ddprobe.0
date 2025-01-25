Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AD6482EB
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737778554; cv=none; b=IF/rC8uPv8U/hGhKG4qs3/wJIYAm/HUfXnyFPwOcqcSXxjJUcq70OOMD7j2yZ3s5wmiFhQYuH0g45S/7UkCHESk3g9muaaCdb7iwBe4AKL1xZpg9wV0UmNppD5MDzdUcQFgNHQfp+ty96NGHCtsWHinCYdDuZv2dtne16JZNH6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737778554; c=relaxed/simple;
	bh=0hRwmjjCbbYQvtk7j5QMGwtYUhxXpC+VUhzEN6RWayw=;
	h=To:Subject:From:Message-Id:Date; b=OwZyKEhmqma1CMIJ4SysRXQ3lRHsASvwP7V/l47qggGOUGfuCS6gk5tEMxevigRPUCIK4DS3x1XfvQ7XZwVQqpA7OCPFgoAPlsEISW+B6XvaOCuWbDMX8C4Xmw6QrPA2FbWqXjxyLoqxbe+YTagkouVnFCr/zLWLptGR6lim80Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7Y+8DaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7Y+8DaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71C1C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737778553;
	bh=0hRwmjjCbbYQvtk7j5QMGwtYUhxXpC+VUhzEN6RWayw=;
	h=To:Subject:From:Date:From;
	b=F7Y+8DaGgpgeBQrFqLSGQY7ZGFlu3DIvrZ71zL8mfgy/WD3bVPaIlBq4258kCdSAf
	 OqBI3BtM6sAnIwTctCoASrhVdjCjABmilf2bs3m1fM1iE+UahATNwKjIrb0qttPfBX
	 Cjnd3zcaIi8LkjFLzdmeKzjH4UPUzz2APbkgTqFJ/TQsuxnLLXYl2Ig5HWPTM9sAN9
	 l7ktap4ovQaOnUfe2yLNh+x5w4ifxglLlnnM0Zkc7Rp6v9Jj0/a10+/+JWh1q0fdy9
	 cuonXSQL9w5j7DCo2LXpgjYu+S1goM914EuSqUdSqzDd+KGxwyg7hlT+dN4rBe7al4
	 eGwY6oLTBZWhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A30BC02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777855361.13425.4519913065936260398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0776a06ac124622543cac3b0d929ab05f39979b2ec99f2dd1cab46e3fff7aa5b
Date: Sat, 25 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737778553
