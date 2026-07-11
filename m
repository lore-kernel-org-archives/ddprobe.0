Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595BA3F9FB
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783736314; cv=none; b=Fr4AbkCtsIR0EzPME8L7Hsj2QtJ60hxUuu8EUt2w3ftRmdGp2rWWmJlb0KHA2Zx2lY3GbgHKwkV60V7KRIte9DXGtMpnPI8I7xy0oYWUeTvHI5PkwJSSXpoRL5bHkL/I09RwA/eIRqJRK6BmtR460uta41cnmmTeFw9aW/4cE3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783736314; c=relaxed/simple;
	bh=m1lfGF5Eq2DOe4PLPO2+YAqKnikX5eThTMKPYtyTMZ0=;
	h=To:Subject:From:Message-Id:Date; b=Kx5VBQbidlNBhH+xFn7wJUUm1NO9APXEn6H3kK9yPWwq6ck0uAWgLnazz4jNVSM65kc9UQQ6NThf3TxQaASPi1clJJb5yjrHPLtBh2tb5cRQmAAKFHPS3lb3s0NfBCfBlwmCyA5Rj7+0/OvQ53XJk1bnGoACf4GoLP/1ZbDsQ7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+fS5Sfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+fS5Sfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36AEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783736313;
	bh=m1lfGF5Eq2DOe4PLPO2+YAqKnikX5eThTMKPYtyTMZ0=;
	h=To:Subject:From:Date:From;
	b=F+fS5SfraA3PeaABT+uKvXxZkLz2KmOjEhoE7gD6Vq0AkJE//PJDUvA1zeZUCTm/j
	 SxK69kSdjCUgvYXJTG1fQO3kXJU3IE5avMrlZ/L4fDgngFGuct8bPEKa9Tq6ZGApmg
	 uAC+1teCZdDr/1iksvP4ZqzoOsm6JSNcH0eV3lzxGN9b3tWMl5yP/nXYyWZQgApg6N
	 d5jRgCrkjtwYpEBOHZacghqvPkjVGXnc0MfB5nR6DLK5x3p7glZcZVEMUvY8kI9HQd
	 qGKxEycsHi9zU50JZ2NQ9k0A1sC9atM2lgQqI80GuSBubWToMvbnR+GeO/ZBWxYQ61
	 mzGu1h/7Y90sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD1C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373631368.27912.15602054498783981993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8158ac0bcbb5519eb59d8c74df1ea8badea3d5e4d9406dead842859528ea5246
Date: Sat, 11 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783736313
