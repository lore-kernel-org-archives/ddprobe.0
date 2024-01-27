Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E0C28E2E
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706370497; cv=none; b=Gv2HR5T4AQWAZQYjOFsiF8Z6oteJGKX8PXnfL9dSoc3WG/Qe7V5ibBPHe9LW4HpN9EOCkz1GCTYg3I4PITzZdTuGkEvVHTmhIHMhARBkvwqDS9OuUO7HIELsFTPddTFr8TbKnmOlIRKDvGJtWxsNBiZ1wF5f5qtpcK40nevK/gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706370497; c=relaxed/simple;
	bh=Q83noSJItKOP7dIDMvlnIfdc2G9wRzh0XxNelIluJOM=;
	h=To:Subject:From:Message-Id:Date; b=G8IoLzJeW+GtJtyFDQ1zbLqUhW6xDspx8ChhrMlXGFmOcZfVncftbhC7SaJz11fDSsI9bc7equs3uA+SpXdagm2UyaYbl5p7a32EjIG5aRQ3dnZF2iaLAHFImnBzNER11dF0DJf0s5NojPGuUANqL4PVuR//crU0AJlDdjPKyCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3NuU3dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3NuU3dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCF9C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706370496;
	bh=Q83noSJItKOP7dIDMvlnIfdc2G9wRzh0XxNelIluJOM=;
	h=To:Subject:From:Date:From;
	b=W3NuU3dTk+AQ2Ms5It54AAMZi0GxjVy/njnEzQ1c+W7XNIrZUrotRWRM+od5x4K/4
	 74OZgks8rnII7Pnw+0JfoIRWg/4ZUtrLUrYSL6NaSK5ETimC3KHlcB5iQL/yv5/g2p
	 OSuxkV1TYl1NWlAff0F73TcO5wP4tmPCxSXU8fMOy74qzOj/vMv1+yZ6X5I5VjbNLf
	 5KBIEjADauU2dMr54LytLRDvMrUb2PfIO7UAmcv+xz9cGuet/m7fk9Agl6zcoQDbB/
	 Pv3LinnlzTpNh1wULuxvpPRqAlbHBT05uFVrgQXRPySoSCpE7nHqbyIN5bBMJMazbB
	 RFhiBuH0ZNVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E514C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170637049638.14326.6430563018315846263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352eb3ca2935d361e50fc161b0541ac02cc79fe5e6a2866f12b05c070f306f16
Date: Sat, 27 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706370496
