Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4D443DA26
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785431434; cv=none; b=LJjqmZQZ+gq+Fh1XfHulWOEDG5HjC8GjMtpN2xzL0DdwBRYHmHafsaSWi4oZK2hnXB1xjXE5NS6aPBP2b3jjV8fAYFEfw3Gj/kYweOhBpzS08N6nfOPv0J+Pivg4GCJymi/GiY0cb1vzr18dlDPgqWs7TZWfMOkq1+aKP6B0Z3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785431434; c=relaxed/simple;
	bh=G9TevoCBrLZ3PWwQXhORbRfy3yNq2tIrKf8IHenmyTw=;
	h=To:Subject:From:Message-Id:Date; b=aZRrxkc/6iDiJBhOW3NcEKgpRO7UfP97tBTrYr6a1I6WxL3AY6wpS9Uk/SiBGf6WXZbhIk0DZjkihmRAW/5J5ZYQqVdXu4eBmEKlc5hiuh4VbLGfv6UVxL7Srk/2C/HpHodzj2arJR5rdTAOGxcIrjZEzSrRlNKvkqw3Gmp3NVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+PSkG1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+PSkG1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED320C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785431434;
	bh=G9TevoCBrLZ3PWwQXhORbRfy3yNq2tIrKf8IHenmyTw=;
	h=To:Subject:From:Date:From;
	b=B+PSkG1a6SprBfzA37eYYaOIP1BC9pCXLrTGW4Fo4XmRzBDqENJEJ891JVxOlVrym
	 Xr9Z3xiQp43D1GkNORZga988WmFbLKmX3eiUf+KhfVCbyuVGrb54Agkz4qsE7ubyXb
	 Cs0p9P0On4wWQh3M45t5Mu5OS/vdvg8ir7+BL71yJZq3b4BiVJ+wWLZKVKT8Ml0XEk
	 jrBseRw5qONeLDuXN+1j7NbYrIm0j3I2XoSGLaJ1Mc8mDLuAQjeMyZa9jJGetZ6qSX
	 gpDMCksZmJiJ2BBjErOoZ2JwU+AYoot8x693YxflT6RmGrr5g259lh++uHFxKoCvmC
	 h2Kkamd5QF6tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE176C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543143373.31932.15746059130198009186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143ea1b812caa23ce1ff1e3688ec33b7a89ba55e6593d0e850602403d9d0fb33
Date: Thu, 30 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785431433
