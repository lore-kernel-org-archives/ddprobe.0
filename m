Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1041E834E
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768532634; cv=none; b=WqTMLnI49kLn0qO7tvRiw7nXlYIxrCoji36qeGkKVf6PIJwszlIL5uzZa9EhVbTWg+3h3QfzzcYSwRwmjCEzgKCzjH4lfm3x3GoXNTbbbInWeJR9ZQ3TrzyuOnOyRF45HNH2wq9qnzAv6YHVE2z7BfvfoXPBxzNQFBEKVECA8Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768532634; c=relaxed/simple;
	bh=Ad9WnvXgY41JAqzCFYmbHRgcdqLTyJMnRHzlutpfAKk=;
	h=To:Subject:From:Message-Id:Date; b=JgnZ+8kv+Ke8BzSgGR/+jQtHKWFHwiPlHZk6tDgO1G/geJd4NwDJhi3XP+rCy3wvCKedLxeYWfi3AeSQbrZ3Qd63TJHpSx6xl3RVrmCmBh7o0VXvu1KeALZyN8uv7Q0Hb9wiYUm6/oM+JEZzqx9rFueR0jxZC/FKe0TawZFCgJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2Pzg5KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2Pzg5KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F29C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768532633;
	bh=Ad9WnvXgY41JAqzCFYmbHRgcdqLTyJMnRHzlutpfAKk=;
	h=To:Subject:From:Date:From;
	b=k2Pzg5KISFrRbe+X+fNtssbJa+c9udYFLrZOOLgtIo19BYOSgbfQl6eaQ9jvtc1Fp
	 YOFNSIo5iJ4pjtrKKGwlVulym3Jj6DF5QRxf4yZ64N0n/exGpAMbdGVEfd6NSyTDbX
	 e/iBNrLPXRNYradHI8YSvcSbtRf5c6k3MzzL8G/pV0yKn6zQDIaWUtR5J04B8bdQtl
	 GhcplI0SiToBWA/xdUUCXdcyKIgF1NNsVerNmy3qhBKEUjs4D+zCUhE6+Ybnu/DBwn
	 +GBpQHJD2m/tEK0A/XwSKynDi5p5kWyCRFLm8W+UbBV9V9RoQ8V9PngJBbCp6rt00S
	 6V2KJsLZY1DBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F81D4A5EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853263357.515.15334124475154827522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0581fb47c26d5cee8e7cdaa99e39f489483c3dcbc6ca225488af1fcdf37099c
Date: Fri, 16 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768532633
