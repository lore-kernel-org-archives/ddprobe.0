Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414434CF483
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792203634; cv=none; b=lpeJ57BKeu8bjn9D9kCrXtVyqTfdxctqX9ZCck2v6Ex7PMcmXnJiUgD8AsvxhCNRS3ZTraD7TkwySOMN3ZKn4GUWsMztUAFF93SbdkHSIQ5wpyuGLxo+Jz1ESLdUDi+KA5J4C4Z0mUgFA7+4K/N2CStwhrTxtHHAIFIypP/++eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792203634; c=relaxed/simple;
	bh=zOcS5Is88uleWQ1F0Z8GEcYOKM2ZkGUSTCfsgTdSELo=;
	h=To:Subject:From:Message-Id:Date; b=oK54Ab6ItXpGzb2X6Jrg0DYs3b2bkKiux+co0cvTpEKmNp6zvGB2kF2QmhQ7a7mnwpJBdMVi5wa/ulucsU5s+YwQvw1WYoBerunoQ/spfJvoavf2jjT981oBi/c+5/03mpaY1Sfv5CvEOo3ZVanWLlu4iKIQObgdoXttT8xNDDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBa+e8dZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBa+e8dZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4820C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792203633;
	bh=zOcS5Is88uleWQ1F0Z8GEcYOKM2ZkGUSTCfsgTdSELo=;
	h=To:Subject:From:Date:From;
	b=qBa+e8dZNN82CARQPAJgQwmjBU7nyLcKDXwVfmVRKWq5OpwUI8lZ6tPW8ymry3u3I
	 nqmEvjI1qms0/hsdRfVHu8IfbUfHnldiIwj7HRRGL3g6OIMVejussjyNA5iH2JLg8F
	 wcsf7H5wdibOD0UqvM2Nu3KQM2BpJA1bVSZ4wTgYxqHtnRFoS+ySk5X1zmAn4B6wMQ
	 uLjKen0fGEV3AyGHUZ0plRuHepIcHQHKBgad4u5chzZPL1PTjmLGDoWBPSZkHB6tc9
	 bjZRv9foSt/jmBKl68DPdM/xg7Xv6+kWUpAwXTqjhWqLbiaKzLvmK9xtasD4IZwWSe
	 uOYsKRni9/2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B129BCCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220363368.9359.102203595087153198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07c6b70ef28b48dbff9f566f5057b7d155cf2a919f34966750a2a2b68205608
Date: Sat, 17 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792203633
