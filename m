Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8450813AA5D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721303123; cv=none; b=fGmHSH1VwF5gbcw1syWgfAEw/jewtsGF2jYiW3snTio0h3UvLowhr1dbmzHuZCwNWM5oXRG+XDTAwMTzQOGAJ7UDTsRYAMrtXFIEgAaqC9+HuI/bWlSrEzHakMmpX0tB3wzBYyFVyRx0H1s2ssiDS6Vtw/TcVkLaW1AziUl6Uxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721303123; c=relaxed/simple;
	bh=lk3EjOlsLrdlp3t/gvR0qRQ3mlZFp6cZyaFnaur4q84=;
	h=To:Subject:From:Message-Id:Date; b=JbuYzSQcn8V8Crpfv93W5rj/pJTHZApVwI2Ll1lbIqwC8i6pM5flEOUIGPjxw4aejYKGAIQJE7jT5zDFN+IxZ4fJT8v3Q+BT7vkD/NmaSm24uQ8NR4CNJK/Cg5bMZfqnMTLWvGXKpuEgu8qUKJuOpE7HBZSYby43EwAPvuk2yVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEOSj1l8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEOSj1l8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E88DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721303123;
	bh=lk3EjOlsLrdlp3t/gvR0qRQ3mlZFp6cZyaFnaur4q84=;
	h=To:Subject:From:Date:From;
	b=fEOSj1l8x8DfiZviUGiunAhqy28nNxKXvKZbWup1MpdXoe0eVBEq0iYo8U+waEIJ/
	 dFpwwKax6vytv3KZOlbYZYGU1Q2jTF9LkQ5rh7vgTRbqH+J/oxuXicqozJWQmKmfYC
	 M9ftz4j4jyDStFEYvIPCKHAOazegoQxDl3rAwngZS5zhLAYj0yo3DPLu0J9sWMW9fJ
	 qrAvpBrXlzazQhMSyKwy+a6iTBRED1T2jqySb8//+0UV68IPgGqC6XjkpiUZu12J+Z
	 PiLVsYQwv0Exqh7k5d1YggE/jY4lrLNpR3iqyIB+RPfW88AZkJPSG+h4nN5xxrt8DG
	 pi/IGuW9y+5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA4C7C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172130312290.28451.11514244118832993969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df61bca15a1e5bd3a0ea6ce5069e4b31d4fa2e05b8ce7878f18630699aa62670
Date: Thu, 18 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721303122
