Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D06A4218A4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784751574; cv=none; b=YjSYkZfDvfGUs57I2t/K9xmPtMFDcoPYcrjPgY6fPSNs1VL9Myu0f/3+QTpalCGFpqzrkwN2MEI/NS4sh0mWlgXWdXKTX5CB9nCOtwnJ5bb3j1sB/0hmx795yKvU1adwotYCAzRSoFRye2soAqQTU5KYo3nFIvIkqwDS8TcRqeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784751574; c=relaxed/simple;
	bh=DcGYbJZ8/7aAE76fuDSWxjuaVMRZdPd3VEhgYASSr80=;
	h=To:Subject:From:Message-Id:Date; b=Bn0yw4Hs6EMWZFndowNK9NMCxeLYjmff8L1ax9aiJvqlpozXTioJdmHMu9rFhKkSWBsD8+8aZTcD3MKkcgqKbLn4+NhjsCop65MOEHAeWadcNRr1Rcx66x9iFuwrEeqXzZIXF1ynXqRY724Mt7h6rH+uVckKS+o2Tu3UjkBkDGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaziLZqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaziLZqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA06BC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784751573;
	bh=DcGYbJZ8/7aAE76fuDSWxjuaVMRZdPd3VEhgYASSr80=;
	h=To:Subject:From:Date:From;
	b=DaziLZqUKXE9hYtc08FhHdBfSgA0/AEaQoq1qq5WS7Hq3Gj6MPjtvPXXw2LAyaAmL
	 0f+XyDIZc9/RPkYCBUG6xT0nAg6McF/Ci3PJcAbLULAgSx+YSi6GikQheiLHw5q2kB
	 r3TjrgZL6JFrnY2qsJSULW/mbX2UTPiP8u0UveOl5QWMAMsQrIEXpEICPk7NkAiP9p
	 Rh4b04UvthyfFgTQUc5BZGOhkk1HbOpu4GluUGOGxdNZgKeaTx/z0Vv4UTGmZhicVA
	 yojcbso48V6OB9knOHSYUgTqlbLQvFyNWSPjmIpfkt2pzN9Khnl9I2gagbSMnORSrr
	 OIhadyWASa2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB3FC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475157370.31060.14735051756009239254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ae9dd222ca17607f3976bccfdc9fcbd7b3721765f4e3439c00434f9f5e71b3
Date: Wed, 22 Jul 2026 20:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784751573
