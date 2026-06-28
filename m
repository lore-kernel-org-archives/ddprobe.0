Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDB12110E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782608914; cv=none; b=LV1zZWd/BGCC+d2acVTyeYY3AzRNDMoYHI4rmJV3A68hpdRf3vZ5lj7vN0SXgWM/lQND4BVpaCkRZvJCmkbKvbKKd48LVOSH+xW4ejCDzyaBZgErnlAwLo6lpHKhOx7BPygPHI1gYNHD6YQQc4Gm92nWXojamU2zZiMrHGZCmAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782608914; c=relaxed/simple;
	bh=lTJRjd/GFq5A7cwpKvG8D04T22naD8Rg+eKLl5jcn1Y=;
	h=To:Subject:From:Message-Id:Date; b=u1h3j27K6R363BbiNaRIPHq3L9BNhEyPSpnYsDX/RjGkNG5w7bJ3zEe/RIRlA5V2/NB0NV1LZCiEU1zFXQQsr5hlLCuC4PC81d7mNv/kLgJfEWELk2jCBVofS1BVApJ1Jnc1gtSCi1ENP6Ylcc6/6KG2MC6mUwK/H39mAofcLsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWX6bf09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWX6bf09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2574C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782608913;
	bh=lTJRjd/GFq5A7cwpKvG8D04T22naD8Rg+eKLl5jcn1Y=;
	h=To:Subject:From:Date:From;
	b=kWX6bf09ohneYOs094jFDGdtFrXqVAlbR6fX/RwOGUuyr/s0XcKsg9XEkGDlRisGW
	 QhwqliHFKjpiB4hWs9+iwTB/LDXUKODieWnAXfibe9x2UedqhgEikyHenc3/Eb0jaZ
	 bchD/Co62uq3Wi34MZlH3C43F+KS0yl0xH6lvqC+QW3JTYRJ1+4xX3rM6jAbV4KQwy
	 opkbjL/oETj8E5RG3VrZzstGKaCXZPrzlBn39WI9eykAD3jqjbir2gYq99rTJiNhF4
	 CHvOmM6cqpudb+trmr4b1UjYXK7Ao4JUEsACID8IIo1gQTUXDHEmsRiXDvWG2JEq3C
	 0ZC1mnDac6B8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20D8C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260891369.24559.11913239988213399426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776513624b9c834c8dce75db031458c0a29bf7828879e57d73928fd6870cbf6c
Date: Sun, 28 Jun 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782608913
