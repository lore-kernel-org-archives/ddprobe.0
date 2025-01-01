Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B96F2942A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735750554; cv=none; b=PgbEdG2QaImjCDh6FRO7ejG84BXSlUeVp0eLXaT/oU+acU7+HgR7pQVQgoYSMS4wHgxh2fZ9kfD7wMw2RjcxTNdwOvTnJPY42CpFVyQ2ALQorKsuZEqgb4P/IMRUe2z4AKcpxEDwnNZZp4XjVMEUd0e9YGGIgKt6pne1xqC7GBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735750554; c=relaxed/simple;
	bh=sA+xYBCMtWBs5OovCxDYgpf6RclHI2n8ANaU/im4A74=;
	h=To:Subject:From:Message-Id:Date; b=BOpl8wSvP2n4/rF0wd34659nzvXpFAl2rAse3o9yQWl3EPbB6P6AK/5DX/G++E+cXA1CHisA1W59CQtLC1Q36nsGluiJb4kaSoZUgtYamsINX+epCSu9g+9YUqSfUtzCGvgoEB9/cOqRqY0FlyXHanDumaeLemJAMztdKP8SGdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+mF/3Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+mF/3Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA098C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735750553;
	bh=sA+xYBCMtWBs5OovCxDYgpf6RclHI2n8ANaU/im4A74=;
	h=To:Subject:From:Date:From;
	b=Z+mF/3Yz0U+fHoaOxSdPx1QjPPnRDtB/9wq4VepYMkOospCT6hdDCkSuuLI7ueYo4
	 nTPBZT/j/aIy1pkVChLV9Kn3NkQ49h9ODXAfBZaMepg+ZXZGp2R676m4qNQTHzt8ik
	 42I5deE/jiKREOrxemslwsdKQ308Oo+Rln9brn4k2tVVB12eDdvN34w5UFJ3kGNPnx
	 tEzUDEqyhiBQ4a85IBexvyTzlpgKLB0CDnEXdtA3CTMOzOinXOOAUQPUExDhxAD0ex
	 jNphd3s3fqbZVsmXj3geHS1r0QrQuAhUMUh48NHnFcyoAQTiTNJM6dHZ50++2HrBZn
	 /sQoL0FbliR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E767E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575055361.9290.9885586431897286434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ceca13c58865f74fbf094ebe0acee69e416e723069eb114fc46f66666e7a24
Date: Wed, 01 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735750553
