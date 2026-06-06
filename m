Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5758B78C9C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780775074; cv=none; b=JVnyjX0vJli1LsrpXv6SdCodhpiaWM/uzbxLJW3baRG/Xydx0YulNcz7dNJu4rxIpo/YWxTyp22oPWhTgCJYyS00hr/ZComzcCavzv+AyEcMzf6QDLlEHErRdhCc2m4bQ2bIddOUv+bbuosAV62Z2e58pEOoEwSd9VwtJ83JFQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780775074; c=relaxed/simple;
	bh=Suh64Rcm8DIe0WGjHGM/tOqz/DzT8PjcBUyKQbtdImA=;
	h=To:Subject:From:Message-Id:Date; b=c9ES58QoJZLyaD3hNSDWLal6SRoSETkHLbyS+9Hkk4H2QmFrz+0eadthDXKuSSmQSR8FLdw9GUvYqT0z/SjLhAh+NG3QQKkhmepwpJ4aKY0QMoa7ZzphznEjx3wHHLuf9VaJJzlUW90yuqCxgm1GjU9d9/lgLd4hZZ6be0TDp+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwL+mSA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwL+mSA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD71C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780775073;
	bh=Suh64Rcm8DIe0WGjHGM/tOqz/DzT8PjcBUyKQbtdImA=;
	h=To:Subject:From:Date:From;
	b=kwL+mSA27UXLXJt7hvbNNuOdxrpu7G4qrCgwUSOJzvmjnGfx5QcmbU5Y4yjdXmbZ+
	 mG6PBJaiya7DnppJ2Ac4IgUYANaDHmwXqbfeG3DPe5nl46fd2Tcg79nM00YIj81UXF
	 5FmirSlKoenyF8OlriS8VCOFqfNeO5TkxKdSjwJeKO0buLHYbaGQeXbuet0NbSYcgG
	 6QggADOakHUHK7vQPAvvwTDn+CeY/b/zVAkBvoRuYZW7BSI/SepID3u1hPZwFpDt3A
	 n6RBqpgYNCG6B9ZGE2PqOYy76vN3+TgdwZcHsTBF+ETRJE5h2q3x0OaU5sMk3dD6V+
	 2knSsmevvvodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4CBCD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077507368.7678.15828554695498056019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ec4e5ea6a25b671da565135780fbf19afbae3869a24a35eaafd04f74f8e548
Date: Sat, 06 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780775073
