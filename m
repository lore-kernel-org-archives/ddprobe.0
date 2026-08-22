Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBE0388E7A
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787383834; cv=none; b=b5e/cS7J3cAkPbIJ2lpnlKOh6MSmj7w8qv7rTZORf8KQhBk4P5wojxi+aeeGNOXX4g9vde/PrUfFgtZCQACe64ojjjfVpx9nBlcHlf/jTxD3PNunfr4MiDNH+BBBu/dH1WBhTehn83ECHrSCE/3s48Mlh5b84SRMR9DIUmb5R2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787383834; c=relaxed/simple;
	bh=53z0aNQuu2xsCR+PkRpaye0+8ezjJ0nzd08ZskNw3cQ=;
	h=To:Subject:From:Message-Id:Date; b=pRQ1asdp6HfsorO2/ARDei9XrI2p+FTO0jJ08o8hAihbnMZn56jZi0vsb8XARx2B90EkFJortp1btq0FrT3ADG5YIIMmlUYygUvtJOkgfy4+0uJwE4xwyFzxRfg2FGhmecMWN++ErUeOUd3qtDNdNxrY8uEeEp0HhEzroFiQ7rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suYiuxer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suYiuxer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC333C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787383833;
	bh=53z0aNQuu2xsCR+PkRpaye0+8ezjJ0nzd08ZskNw3cQ=;
	h=To:Subject:From:Date:From;
	b=suYiuxerv6KsPOHH1z3C82TkNLNF+txeo3lSjVHz82j3GmHIGK5/QAK8VKAl7mFig
	 tLCEItGDZ9IZwoTDi+jG2jqackN08AEBGbrFYsJYeXhBoVbAqA+hT3tnRTGDKUhVH3
	 hkavMCJ7TPvDF4WS4weLLk25DNEK5vic9aJkdoWZX2qAjFDq17zLTFo0Y9DM+pO60x
	 X9XoMrpdmg7TiJlH1yJklGhcOKloh+QkXYjO/k75ry4Cd7I2j6ef5OgjHZQx/NuSQN
	 4OLF/T3a3pXRj2oWgU05CI1Zm5EumNUhrg1UPKxJv669KSTFQPZg4ckWOSQ/0OhfIJ
	 bgHpiPhvn8CAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2387C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738383368.24818.6850912896042030891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa2af4be4b8d533dcc8d3d306d9963b73ba842c4fc5c2629bd9f950f51a1507
Date: Sat, 22 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787383833
