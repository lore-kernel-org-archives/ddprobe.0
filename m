Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5541438C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713660023; cv=none; b=VNjH4mXnwUiKizqWOSeBSY+hHKO5EMpuXs7LUFqxY56qgt9zcql0ltpvbVeamGnHT7JgSTEyM3mUgxmX7L1I2zsLCIhTCSyz2iAsOGSLO07OmlCsawrsBExCqggUrNqzaUtnYWHGqXzgAH3+9me1RV1ixaG6EIBMOnKmNhZjHYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713660023; c=relaxed/simple;
	bh=lSRuubpnTb7GPsVaIdaHsTGen0Kg67zTeBeWVft5DAw=;
	h=To:Subject:From:Message-Id:Date; b=LMHsl5lZYbKtuM1aZXndB3FHNQb7NSQMr+SbWgVNmNOllzxyEyX66IpC9lAmiTMN/PNpXgBOoZHGfBn4GFA6ccVwh2biiJr0MWRR/0eefkxIqFI3QsP+R9u9m7i5OxTRgcgu5nASJeUokfnTrjsEm7p9pVcIQ3qG+t26zeH1JEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsFH7aMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsFH7aMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A2DC072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713660022;
	bh=lSRuubpnTb7GPsVaIdaHsTGen0Kg67zTeBeWVft5DAw=;
	h=To:Subject:From:Date:From;
	b=SsFH7aMihsga8gGV7yNhDWSeZe+Jed744NSNn20HOB0fiY8TSQSP6FZMSajsGGWO9
	 WFse0Na3I+utSMqZ/gXo8kHda0O/bBFJaNP8IsVDTAw4RjYOrQKmEUr+gSw3NSIhtI
	 0E5UkZHq8PC68D2xPAR+W71sUS5g8YDNDYMcbs/T4RtN9saLB4VdsB2JWc3BSY8lEV
	 vagX4SkEcgigb+oNcsl7Ss9MI11BzfNB1WY9xbqJ1kXcG6ldtMYiacoeZPoXWCpKqB
	 1nYhRsSuSLZUzCKD4KyxXTCnKRY5/TRmP+Q8nXYRo3x2EwtrTW/i9mvQrwFpSDL4ms
	 DQjLgpVKELH9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C55C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366002278.10170.13426534909129140068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fdb18a261114499cc922a39cc4b2ee78c2105eac1ec586756ff9e9e80825ae
Date: Sun, 21 Apr 2024 00:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713660022
