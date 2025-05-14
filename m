Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4540F1F4623
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747253395; cv=none; b=soT7/l8hJhNrb8a6ugfz7pSEUFX/K0fOU2lkcosk0xCjUU8/GA99NYErVpjR3fwRb0TuT4Ed5iEgjFwG+qTNeTawDO/E8QERfLAFNcnGaGzcpg1ztAyiGwt8lS9i7+TgJ31UZp6juDjZ5h9weCo3+HJuoH1IfB5QuwOfMxyU4rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747253395; c=relaxed/simple;
	bh=7A1wUF7l2XbhjvUGn1TrfcMxFdm59TNhQGj50V2IzVI=;
	h=To:Subject:From:Message-Id:Date; b=Eh2LdX5fsgTFFuobP4K0YzC+zVnQT28sV2RKCBASbUIInGtkzFGu38EO4uOqKlPtn9/I/Or21yQKy+EabbS7d2DPjd0/e3aLQPP0JCxYRmwiPwJoIBolVLDvR2lQMDht7wPNXGAo8yZMAhu6tChFJbI72q8nCYT029LDKGGa2ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THe0lOF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THe0lOF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB53C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747253393;
	bh=7A1wUF7l2XbhjvUGn1TrfcMxFdm59TNhQGj50V2IzVI=;
	h=To:Subject:From:Date:From;
	b=THe0lOF+HWksykYGdHHtNmJRnInI3/vysBHTAf19UMvt3FK+LtaSg+D+XINdqP3yc
	 M8zRjUZUO7Lw11axRoMDJgqilKRGFjo999Br4dB2iAvH0ubMv7s2GitUp4MBjdr2d5
	 Kb1Vdyh3JyHvzFrJlgG+dGVwxIpiRPGg2RKaKuofR6tMMXvQaGcsRwnqL0/h54BMD/
	 XNMvXVcmRF6XXF+wnBBhVWJZt8Msll0tI3PVa39vcxjSqEH5htKJJ13b0ULrcunIL7
	 Si5k7JP+2pOWDvCYgwuHbcpTucrUexWbaCtquUyasMgFvR8mcnk6svaAdJCujJW7L0
	 mNUgZrgIPBKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB65C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725339357.9781.8881826744860755171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7ae6e70780c41e78035d68fcfb51fc87b29022cdecdd96938c78c0bcce9685
Date: Wed, 14 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747253393
