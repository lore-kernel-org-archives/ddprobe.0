Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7D627C878
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746295194; cv=none; b=IQ4NlPEBlFydvh8EPExzUNkJS9fTlNmf8UUO9sfC4Zoz/t61BBelyYMU3jFtaciQMqaviEmJd0ObvpyOnj7lrV0oR5XazJ1caxWL5pNovOfbV7RsI1ZVyn4rezHmSxaDDIxUfslvgRE9PL39u5tqTEwHSZbjgCBmR7glFIXDpkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746295194; c=relaxed/simple;
	bh=pNTSrR/jFwLrmTn/cl/Ew1pISbQ13lpQbk5aVBphR8o=;
	h=To:Subject:From:Message-Id:Date; b=JqLirA2SINUZtE0oDvBfvmpXE/Hu/cqisvHMWlLRc5B7QRr3IjpgOEKeTHJ+Cy69TTVeRvfj9xKj25LOaX8rcbiu5gftX2pvBc5dbTFQdYD7v7VW4GJoBSOo2oYBQ01YbSBEnNG8cnFxIH0t130aBnkwbGw4M7Z1ydRrFEOmwdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbfIGYDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbfIGYDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C52C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746295193;
	bh=pNTSrR/jFwLrmTn/cl/Ew1pISbQ13lpQbk5aVBphR8o=;
	h=To:Subject:From:Date:From;
	b=QbfIGYDmw0GSRsEwIBQYuE7V6HfakKPteAEP2CJpDHwMUjzDNruk5XwwlQVwjyyrn
	 Ng91GX3eJ4sH5evXJnh4Z8xJbCrtdiNXOIYSXaHkyY/urid6nJkucUo1n6MV+S9myK
	 1q6paQdMra4S1/vUScSBNhY9xfNtcL6znTof49vOCxnop2HAAQvPoHgv2GOZxc/Jxn
	 N4y3SqXhjeK76dN5FDCZpNvYzivgctXOMwUNYweYE+xCRHZ1SXZmUDuGUjv1F81gIb
	 KoKpxKheiM7g2BiUhll/sbEatFnbShk1MLTog9AATLUm82HuZdYF1FRTbgtL8CgvQo
	 S4yhmQvPseRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E9BC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629519357.10697.9743997068291939507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ecdb8e40da2579f60313ac3b4f4c0dc697608321f5e1f53e0235a6646967cf
Date: Sat, 03 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746295193
