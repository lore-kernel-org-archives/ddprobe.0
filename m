Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86830170F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775982454; cv=none; b=s+fHDboHXVlPeSCgUbALr5ShRHfoNbF7vhaA6YMQLMdpPbWqUdS+82aNCSJFDd3C5UcwD71FRUOg9kg1aL4p3UX+hHriWZVegVqSM26djIqLWhA2Vy2LOquyA/dyPDpzY7VaffcbQwQpfJoGg7Lzv/HJgWBF7Rv1fPoS4IV/CHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775982454; c=relaxed/simple;
	bh=CCJnJaaeCpLZd5jT/05Sg3lrOshj43vSgD/V5QEHJwA=;
	h=To:Subject:From:Message-Id:Date; b=ovNbDWvarIS7qIAn42s5JDCAJEkUZPRj/43/npFujQILR8fxKoJEX7U31Gm6w+0yITVU7nce6LC/kTqji901gbCPrXV20twCaTBCKm4+6O9zzVwTRFtdZUw0Hou5B/ImlLJEFnSE0PqevHWGEPuzNX1LsuDBzZae8MvE+iEEuzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzoaxw3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzoaxw3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0B4C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775982453;
	bh=CCJnJaaeCpLZd5jT/05Sg3lrOshj43vSgD/V5QEHJwA=;
	h=To:Subject:From:Date:From;
	b=dzoaxw3yJx7/DeZtOPRpfupuqv8VPufuEb4TTrvOTNIG/LYamVlHl1WE34/Z+fvtU
	 ws/yuwaRtXsgw5ggT6HtAqRy1MzAYFnbtzeIYN9VEUXuhnoNEhKHtqsjJhXJ9WaULd
	 Vw++G8apieDMI1b06RanDrwEOlNmQz+yi/BIBmXGiBhNigc5+zQTb80ULiCEvHmAti
	 Vh3r6JRRLA+mSeRq8jkFIjtJSgp+6U4fKpAwKz03SOE02R0oFTmVlOr/XRY7oCd7Ml
	 fpuVMmmQuyMEMv93+Fj4UrepBV/d+0OFVQV6D3ASiXRbxdxeriiKMNHrNwf2gN/spj
	 z1DxMZphfuA6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCEFE64007
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598245373.7349.14802860041091216771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b464869799b6eb4dc716de85297676355e2e83f460cb11cb8b6f514a8a905c0
Date: Sun, 12 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775982453
