Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B48222565
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785199834; cv=none; b=UgA+pvgo00DMwwRkKNs44IL/KmUslhL8MwaJ5NL2ktEfT+TXI46KSC3yH2gnLF9Yh/QsAevus3igpvXVdZDF2dNZHcwvRzreOlgWCTV2UJ8H7Ax62aZ1yLoCdC2BMKxXP/Wd8Gv4ah9WMgYkLwWXRdOJGs102qDGMmlTLxiNHAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785199834; c=relaxed/simple;
	bh=MXl6KE6S7tZ4YAO0JQcTqymlN6lmU++tpZH9KBQDHpg=;
	h=To:Subject:From:Message-Id:Date; b=Zz2uVZ6y1auDSH82/O+z6DrNd8LOOpauuxYpAPS56zO6L1wlRV+tDx5gsDxpJTEnQVvQ1SOvW/JbsAhqYv/ywuxd7THCH9yn1s7lMqQ6yNqPNmOkQCK2Ru3lWuz9eLkasDrBbpxf6OgntrX64+Nh+mE53ocJ37oNcQOYjh9aO5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y25g2w32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y25g2w32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC91EC19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785199833;
	bh=MXl6KE6S7tZ4YAO0JQcTqymlN6lmU++tpZH9KBQDHpg=;
	h=To:Subject:From:Date:From;
	b=Y25g2w328Qcriqh/dNhQmf3Cy8XYIUFLQW6k1kaiF9Vd8lo+ClMf1u6efYKJHSHP0
	 +fw66UOo2svDBEZ1MiUTEbP6LbVqfFzQpmhhxR9FEutbAMzOD4Avqvqyd6yaRXuaPH
	 DHjI18mq+vhbPBAB8ybiOJDkqKiz+ts3Gs9EqmOZqE0aqSIERFpCPy61olBf7r9SJl
	 R1NeO7fw/wwcqp9EbLhWeDmqej2bC1klyymdUnaTS5+Hf2T64Q1678PU0aI8zIRHU/
	 7+vQ2asrdWciO1OcJnu8vxounvC+sWBk3wWCpWxu7E6jITx6VYGTm1o7W54vzLcTPU
	 1XIbiIqa22oOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC4C531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519983368.11134.13764440039776295162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1f2b1dce7c2f0362bbc01919dec5bb1d6c5cd5a0f63353e78605cf5156d50e
Date: Tue, 28 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785199833
