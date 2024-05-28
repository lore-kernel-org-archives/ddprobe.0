Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4EA1DFD2
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716933863; cv=none; b=Nsd4BEqFf8gc9DGV3Gkii1MyfM2ONtvWqH8pI97QQcuujdyDOQjOeuizioatWQXGIes1SAJWRMO671Csum1SE/h1v8NZxjAcjlNk7dgQDXHVCTZX5sme10nOj0mnN4r+fkLl7n3TMv+NL/HE4UWxkSL3vZVzBQ/5cNePAnZUPAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716933863; c=relaxed/simple;
	bh=tDg9PJRNs5KOM7HtYnnt3tsDOLVX0K38EHBAg2aEPPA=;
	h=To:Subject:From:Message-Id:Date; b=hm99qzrliPDvgqBnpCEKwYbZIknwIJ4s2uOXiVs//pNuh8tBAAvf5ejJshoy5HYweuVzlxhUDTcqlU7xC5+NWHMS1BANepOZ7hmXdS7//udkPzleG2HBvlKexlUe7yqLJfFtkKKDX1SCMRqCAhiTAGtKHZXvAoF7eJDK3AuhreA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJSsukZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJSsukZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20E2C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716933862;
	bh=tDg9PJRNs5KOM7HtYnnt3tsDOLVX0K38EHBAg2aEPPA=;
	h=To:Subject:From:Date:From;
	b=LJSsukZ4+xaKIvcD7s8u3FH5uSH7v8HyD3XLG6Mk/EqFUQ8GuzXK7tufXRsTkUYC9
	 Vh03YflHFAmh6/c3wmBL8NvaWMeyj08hXw0BiwxGGShWxUwgrGdrEYuLVS66PzAYF+
	 Iid6ju11V5oog+equ3B3P7QJJmEU8SjqzLfNpwZ6by7RV1isDvXAPTw9bJ5mw78zly
	 /okDPbMBEszV3M3nHOk2q7rLxoPcY7EVmLNIsJbXIJTYLLT0BWwQFY5QSarUsOTL9r
	 dY4Fd6dP1ZCPV5BdQhGcUU8sMZoKCVmEY1hB/kQaQNAFNu+yAhNHFi96IdY4HgZOMe
	 FcWMH3P529jYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7E3C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693386276.16868.15200200205100813322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a9376d4b70800b523ee28893e86bc9d1354c82b29bba69ddcdee924b84704e
Date: Tue, 28 May 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716933862
