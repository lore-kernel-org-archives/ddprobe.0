Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F3836C0B0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770045834; cv=none; b=JOM2ORVoforjrnVBrjNFeLiQVEjaOBkemvejcBdCGVnAsJ9gWKzxftszjSbujoTgjt9exTfwXPj14ZWspyWOFRw3Hio/eG42/hra95DuEOItWOW3f6pIHVAjBGDnuv7si+6NujGrMmmOZ2R48qdc8W0JGBvK+3gRPiSTB/gGC5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770045834; c=relaxed/simple;
	bh=flPvODnS2xACfcjw+3CjYvUkdAter0cRHEj+vbazPXs=;
	h=To:Subject:From:Message-Id:Date; b=IzN0zC+3qM9dfOVvB67mYgayqa4LDbb/VhUOu0u2dqmiYMR2/C4yUV8rdGPogNd2lCXvWqSh4DZCUu/XRtvJ1SjFKK8yqcwTjWGkh4LNUbNGBKs8PKD3nHBHLez55kLy+RZiaSOmorytQmI0eoWutk99lflVbwDiXPB8tDXT0Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N74Welsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N74Welsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C96C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770045833;
	bh=flPvODnS2xACfcjw+3CjYvUkdAter0cRHEj+vbazPXs=;
	h=To:Subject:From:Date:From;
	b=N74Welsi5BpLnoJT5H+W6Yk2QP0Q0SKD4/Lmt+y+dQg4UNeyGbwrAWjKLZVhH9eWP
	 0XW5RN+ll6F7Rc7y3FMY7jMq8hVMDzgYZeeLXoT2QoXtWhmxFV6Gg3mRZoRGV45Y2w
	 48gExSBMXZhcb1BR9HEpZ3q2f+TUeBrRXrhcQZtCz/PEZaJHqMQ/bOR+SO7LHn6JiN
	 cTD/2PrUR4J/SKVgvdV7DaiylgS/nVbfL106fnkDhuOAPvKg1bAPOCcGn5GkIB3C2n
	 UwUvNtsw1B/Y7mL2PN16VXI6uNyNoGw2iw0RdzIwkyHWyDxvQckVyDPd8bCWsSTMxZ
	 dnpyUus7uUtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9335AE7DEF2
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004583359.9543.187920481928736782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e2025706c6b47391927d519458b1a20225bc5d125c5249ed5466339bb4a91a
Date: Mon, 02 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770045833
