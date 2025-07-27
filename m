Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A73A145B3F
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753591194; cv=none; b=blqKdZfFeBLJF9wPFgYzDI8O7AVjewAfLXarduu2ELlAWaib8vLKOJQfdifXSpo6ZMpQAz7aGrR0/QyrjEzh4HlaD7nSxe/nrWfuMG641U+GZ+/QcymN1lgfubEZC1AdpVM0J2tms3TaEMESLDhZ2B/5K7VacSLYDFrQOivCOJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753591194; c=relaxed/simple;
	bh=RA9vygrDJeKJ2i+dMa8ddxMbq3t4eYzCOTOrmC6y06Q=;
	h=To:Subject:From:Message-Id:Date; b=IEnk227cYjMC2FEyJOmcgs08vbao6qMgWUsRGfX5gGgZWIn1UH5dDXBe8W/JViDMUte129SkxmS+ZSoPWfcTQdH0njricQsPX5zHP8zmY9f7DJa5WxHghjCLBzcryLxBp1iBuYbcGqtYf7H4NQNy1ebWrfndnWdfDOeF0JTzqc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0qP0ufc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0qP0ufc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3B7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753591193;
	bh=RA9vygrDJeKJ2i+dMa8ddxMbq3t4eYzCOTOrmC6y06Q=;
	h=To:Subject:From:Date:From;
	b=L0qP0ufc8i2nIHY+TVbpA7FwEfMFUncKqbl7Y4XbQ6pr0HnNgRY/kgZwNetVRmI5u
	 PrAfjbzL0n9++jWMpORLp2qdhVwlzW6Lj6qRTnXriSJH+fD1rloA6gh4pLDDnW4PI2
	 BMnTPT64buSxWP1sc6IASQd9IsOj/RXcqAhB1Av9YSGEmDKAvaL+HmCg8kdxmEXEhx
	 OxY/OIC1Bb1io7iRPNvOcaoAuF9WM+Su2iy1BexvW4SqqPpgcPvIo8NSIC9WWNlHeZ
	 yqqhCNfZFDj4FxDC8LuY/a+iHJzpZZThUTfvWf9onGWpt+t5TTXreBASkFUlAr+qYs
	 80vbgaCfkLqaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A77C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359119360.719.4802532569230873664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fa12c9c143de27c60a223e57e4750b705514c1b2702ee696248a9d1dc69ce9
Date: Sun, 27 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753591193
