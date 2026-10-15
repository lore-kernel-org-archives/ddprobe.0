Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401DB4749E2
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792103434; cv=none; b=Me55EFKpsmREC4C5PSKGAoJ2tNW7n6+QzxeM9GR2n/eKF0b/Y8I/tE4pOcJWSZDnmWNs54haOhNzQmrQ+xxDOLIH0tDvJn9xpW/sy+xLTiMl/ToIZTXtTrinmzvr4zUJyPnWoGxJIQ2jnJJ0UftAnCmPGOY7pjZzzMHUdY3hbHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792103434; c=relaxed/simple;
	bh=edh0K3p9NZO7KXtTO2Ed2xlgjh7UFUxDjd//M+rSB6E=;
	h=To:Subject:From:Message-Id:Date; b=fFSD0jZ/SGZdAYMBCske9SqR/UbHEX4N6L2ZlTPL27kasB7muxY5Xd9Ew+liyMh4PAGtsZzhmtnPfRqog/qh86M0XC4I6lzDxMGdAY8D5CYMQdjEy/Kq9gmFZID6mExS1qM3adwIc5dFQkDD+JK48ziWs06GjwkCJxLLPSiGAS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy1rsVsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy1rsVsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE00CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792103433;
	bh=edh0K3p9NZO7KXtTO2Ed2xlgjh7UFUxDjd//M+rSB6E=;
	h=To:Subject:From:Date:From;
	b=Uy1rsVswOiOZ75C1adgaz8gzANWX1UIWSWQYRqsEynCDL9Poz7lHImrKDXNQqQEpu
	 PqgV4H+UW4CC2AhEGvJGXpekzlzxJF96L2XTUhEW5ftmPrDHqK55bPvG8Q6E4+abpQ
	 OSwJqe+GPLXlcxE0xTlQS93ABgMVX/0ogDgLaJoXZGXBe5IJ1JEmxX0GyuXwbbCO97
	 kOfeiraDOx/C4AuR6cGRX0uh4ihGVrA9mmbOuPIuorDn8OAnY3okXjclRo8DSO4MGx
	 KM3XofuSqqLM6USD1XuTyt8m8RO/kWqwgx8374dvHYDTAyUYtkcHTL7zgydpkRm/hM
	 2ULLOgquWJM1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D3CCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210343368.11768.12423962200228824378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0fd545425ff651d8a18a032dce421080e0b8e96ceb9d865263ad23f4f89438
Date: Thu, 15 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792103433
