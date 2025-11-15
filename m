Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355472236EE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763194794; cv=none; b=AFc3u/qSXPidnMBvlYdbFFB/+NvuKriTZuqZlnu72AB2Q9dj2l3y1yiuQRB+JOsZzfo3BgYGlryQp6q9Xy0e2Sa21x+tt9MNa/fevWGhyp7pZtAsJ1gnKWkYfV7KWw6MWp9jwSejW4ly1n33o5F02Y/IOB6JEdRS9tTkZmBcN1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763194794; c=relaxed/simple;
	bh=irV8kNL6dHgQkh81zi+MWyTwC7/8psMIsgBfHF8XfcI=;
	h=To:Subject:From:Message-Id:Date; b=IZnGDyH9fNgEQAz/n4uo3/EjJugUxKnwx3dqOa7XI2ADVeUiFXDzQ3zh+4Cmh5EgZk+M5jdoFSU7Gwtx9PsZN7lMfpvH8fNuiMlG8rXYe3C/WN6bx/05jwVYMNBlX1zjroSk3UX8q4Coz7mn38y/A8SN/7N57WT+PdiDV/vGXI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6FyYPLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6FyYPLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1708C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763194793;
	bh=irV8kNL6dHgQkh81zi+MWyTwC7/8psMIsgBfHF8XfcI=;
	h=To:Subject:From:Date:From;
	b=s6FyYPLhDFqLBuSlpYWdeiXemDnxQ/R3y6O9jgd47pBMdaG2GKMGBMLsrYXmZkTS3
	 d6xFUPcTzsbls3WZpIyzMrXuzJ6v41yAkaMDKGV2jxLooC5UaGdiCpsoG9Q5vt+dMQ
	 /mh0ygwZV75cFZ2VzNtEyaXzhIHEvL4IWBfLIhP7SM+ne7KoHQ24Ts9nmiJ2O4x/Et
	 ZQ+HSl92eko3NuzhsgKNevi66C5Ywa3zPCZZtaiF0VSzbSgle9lX+R8m7FbHdWmhTJ
	 z7HTY008TDA2GxaQbqDokw+mKzxwkECf+AyF+GFcrxmgQmZpP4AxgKhUnj1XUhQX8r
	 i6RP7PLZOCTIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E495CEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319479363.28449.12207761563126286226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864d870af4c6c415e7343c03ff52ab9ff0e7677f708d0be3d5133f903e28f2f3
Date: Sat, 15 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763194793
