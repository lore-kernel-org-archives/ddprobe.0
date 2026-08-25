Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6631743E08A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787696434; cv=none; b=PEWZdmrmZNekub0EaDZfxVAsWEe/AtnKxR9q12jngBU9BiDPLQs45a420TNjTB2ITnL1xu1Hbw4AZr3t8+KikNuf/nX7l7mDOMu7xo5Rc+aWhbeS6cVq1/EtheA6vkv5vvKgqkJw1qmakB/IO2F0DDHEwenOi9EzqqbfxCvVOM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787696434; c=relaxed/simple;
	bh=LIvtnbCufGuU74NtnIdaHClO5S0AqJlMg2jkbYn16eA=;
	h=To:Subject:From:Message-Id:Date; b=TkRF9LuboLGNZHbWN88Dfk6Oqp+9yNCimfoPM6RIOyZt5gPY/8r+yYkjTeQUqvx8YCtbIgro8vjE4l4dnB0eIfxMVw7X0hFr9ae7wPbwIRkQvS3+7/3V/x+Lb1E2a1/JjD0AONCvyG1v/2VWyR2VzRs5wZbX5CM8aUm8nmVvbfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1/FpLM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1/FpLM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C2BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787696433;
	bh=LIvtnbCufGuU74NtnIdaHClO5S0AqJlMg2jkbYn16eA=;
	h=To:Subject:From:Date:From;
	b=R1/FpLM5fIgSlcUkm23ia+287tP0dCgl42GKjIUlx+3kbMnDJuYgRK5L8CpoC6dq8
	 OBIgiG9dZ2FOZXIA9GB2f4bfWsmbVPgUtozrG0R1++I3S/u3Pi0ZRH3PvNgxSLE8rd
	 gp/0Bx5420jfYqy6AbI0JovbGM2CuzwOkrSOmhus5LYJyLu2frpuFl+ZDagGm39dDG
	 DXZfsajpdLyLiZ0CdWDa59WGtGwpcN08beJIV6Zs0reJCmLhHdxrwoZoFPCg6QGBqy
	 FEBIl8WnbqMxhTpPZbsp51M4QfJqKaieyR102BDW7vcDdk92D6aT+qVy9DIYrNsA8F
	 UAml1OfWkks3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2501C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769643369.32510.15093467754553951659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971d07ea99124737d11e33b9351bd26c41d0a063b478272e6b6edd3e478a900d
Date: Tue, 25 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787696433
