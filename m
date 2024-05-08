Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401CC2747B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715153543; cv=none; b=BGAULavXAseC3r261MZyF2vUIN6OwyReq2g8/ssR0pq1rzj+HTVaM+v6AKUsDtWUyvJO1AHmBXEDucb/fEAZbejkZL3J+KlLtigOnbJNyYfSgaNgKl43s2V0RsLC60j22X92o4euFJ88+GyFFefxGGVzTv4D/RJ4yRcCbbKnc8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715153543; c=relaxed/simple;
	bh=Us0d+LNjrOze7MuL1pYRQGDb6WQG5LpVt/y5RP3YTGU=;
	h=To:Subject:From:Message-Id:Date; b=mc3/NfAbNWY0BKo2WkAuzJrduZeTH+zKDybClY2c2TW0CCHGmq07aNXeVdOZ29hx2jnytgKkONiPN11AcNjDPNghtZ9jzsq26xYb13mNRgBa0ZktSup1gAmu2omOaskA6VQ6SJakpDsEBIpbhhZ7ewiYUiSjWZdwTpjhgTn0MNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVX2Hxx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVX2Hxx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A90C4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715153542;
	bh=Us0d+LNjrOze7MuL1pYRQGDb6WQG5LpVt/y5RP3YTGU=;
	h=To:Subject:From:Date:From;
	b=hVX2Hxx4pCZaVisbDtSbEEBFzREYCNJij1p3IbI5iDhmCfdA21NLjfueSXdUJIRpr
	 grXk/Vtqr/O5KE/vXh9rI5ep3oTT2xEf+WL7X0tdvM2K3PNmsCtCgezQlzkOy3LyYd
	 Z0t36uceDaAZIBvCiaMNuP30TCth23opwNVJrUsVBe12wGzllXzB/8pML2ai08EI6a
	 vmQ0nTsuaLoBzjZZ4ALCF8hITaV4kehVz+iQBINpM7swMv/qynd8kdkHwDXMmbCqpF
	 nwsMjvjRDLF5QRV42j98s1fWocgdy4sHUZ+elggzC2FxuQk/+Q20l9xP0sUJqP23r8
	 zTb+YpkzM2ISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D5DC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515354279.26213.12426398639548891422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1ba05e416b85828e5c806eec7568b87da24f98d39074df8018cb263b9639d7
Date: Wed, 08 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715153542
