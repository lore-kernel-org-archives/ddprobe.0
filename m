Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A920274B59
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771109694; cv=none; b=eJf0lO3tw3Dsv2ySPKkOPmaPm9/XAzIMoALUHVLC9Hp1LXpdWIq//+l3N2i6osaucbFrynEeHuJXJlRP3i3mtR+87/Af0Hkndth+fHqfeNJD6gW/6ht6c8jtIKXFmbqIQOgF+YmnlvyVYI/EXvmy3ibQaNzL4oXTN9F99Cc9drY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771109694; c=relaxed/simple;
	bh=l3vWAk6tRfD3/WulrLB/fgCpzJjkZ9ZIzjf0mqBrPRs=;
	h=To:Subject:From:Message-Id:Date; b=i4by6vdaNooa6Av7KdICYGeSbR837F/AbiU5sQ1NdJ9ZnKobqCsrpYpo/oqebUNcm+3DotdcWCxZ+mFZjO0zN9Aeif4VLVEVFl2ZOdnjO0jGahT6pNwbG3igYtKi0d4BgGTDHFMaDFP4XcemaURZEmEhgEV+7Mxw04mc2+CArTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0nkmrO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0nkmrO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C148AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771109693;
	bh=l3vWAk6tRfD3/WulrLB/fgCpzJjkZ9ZIzjf0mqBrPRs=;
	h=To:Subject:From:Date:From;
	b=H0nkmrO/wpgDB8kVkwy+lNr3TR35sAEefwxUdhaueVBEHJu1QPQ0h9GJHWPHMMAZP
	 eppOul2mKJUwHknr9FqkZB7W62hPimDP5eewb62IRJdvup8nDLwlEx5DNSWc/UbWtT
	 0OkXW30OxnKQQuYmW6GqNBYlClVUKjoBBxtupM0/mq/Opnz0wGD9EQ5wuy81yvgQhZ
	 Ikj6v2xO9gC8BY40+FwLNRK7BsrnMH/jKTyQ70Ip1PRpxZB0tZqYRn35m2DXxFHnkW
	 bl/+Aj5Tm2HEZy03qmpe1LKRkfrWJTA5Ur0tg8bxXnBmxWc2pbK/EVH1PWPUpe3Yqp
	 zpfhexhL/+JlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC50BEF5857
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110969364.25523.5663694400143920083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4f14aa62cf6287ba2b6e5aa15eea21bd7c5913a09db78418215280baf02ea4
Date: Sat, 14 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771109693
