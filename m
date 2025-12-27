Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBD6331226
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838834; cv=none; b=esXKsQV4ktIgh39ZtlIlx9O4TfCWvnpRg596Z4Yg/EwtAe114mN1N6NTZmeCKg+USeK2UdSSSXWwV9R5R15mYvo4yPjit67hSgTqX/UDUztR6wo5Ismi2wEnYxa8ttYgYE8qDExW/I+p8KOsyiRsu8jTDEddiVRYTVfcAFUIVX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838834; c=relaxed/simple;
	bh=ODxIUI2DpctKtA4csUxzy1eSehpzNvXgaTTdkoqYYb8=;
	h=To:Subject:From:Message-Id:Date; b=uwnnrCzhIuJN1uNbZWczW5CJLYFr6KFyylAhxNppoD1qvisNK12skl8ydJ+i0J7p6WElri1VvhOT9V34s4iwIkE/1wQsvLUwKj4tGv8v29ZaYvUa/sFFyz+bDMvpYEyMvUShFat7j7d78mWLKcy+xXfKsnsRBglTpA9WUyU4KUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0qxJizS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0qxJizS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A407BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766838833;
	bh=ODxIUI2DpctKtA4csUxzy1eSehpzNvXgaTTdkoqYYb8=;
	h=To:Subject:From:Date:From;
	b=n0qxJizSerijEckdF/12CTdVa7piyFSqkwozopcKdc1fKl6tbjpk+akaCxC25Itvd
	 rlBWjx7e55Pdhi2risrbeNGCd6IzSRWp3TbqQj5IRuOsKw3AS40Ubhtwcn7f67xTk7
	 aGUWdOzm4+fR3xnz8uMoX81nACm2k1d9FS1KP4vbwrr2bzCeaVQTkoXocE+awwBPFo
	 hgkYMjd3f7lUthjOe46a5Zl/idOz8GSu1H9QT14omyJ5CG7M6m7neY09e5gJejXKlp
	 Xx1aK9tbegos89rQvmHB3HxQMs3nvglpOQkSmk1Qr2DuWmMIo7ajpf98ued040LlNz
	 UN4g14YtLaEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93469E8FDD8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683883359.19342.17113454432571542930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c08c99983a0297c95b5bab4f98e4cd6ae4fe25346c63e57245cbb4db6ffd08
Date: Sat, 27 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766838833
