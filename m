Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EBA175AA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719393803; cv=none; b=XItQ59FlWR1MCUwtzKqMIrAb5Y7aSOZaK6Um1Pt1DjiS8Ads5rK5S8mtBDJAk1mERc3sgRFJUyQencQZp7wiGf1yERhI1wchFJ4Ou/tBUww6WR53lGl1XkbK8LQeKtDqwotnRAtPLX9Qj+XxKIrjl08FMeBcIHjGlusahV2TkTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719393803; c=relaxed/simple;
	bh=hLegzoQkJ8z9XVhiUynkxdN6c2my/gKzV/QdUw4ZEjw=;
	h=To:Subject:From:Message-Id:Date; b=a8KBDjya6Nf9qapSC72tb32ipzzMm+uRntEUc1PFQzT4zWiWHZgrx2z0HJXJpMLDH2A/LtWsbb/19MKJdxZUDlE3+udtyBV+14AVGPOuAqydowR8e/zalaR60qvsy6fATEKFLv/x3YtelG6v+SGsfD15K7lx5daA5cNF5k+EY30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpwP7yMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpwP7yMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6754C32789
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719393802;
	bh=hLegzoQkJ8z9XVhiUynkxdN6c2my/gKzV/QdUw4ZEjw=;
	h=To:Subject:From:Date:From;
	b=IpwP7yMhl026Om75EVfkf5uoSgiMsn2zwEOwT5lYOC3pJk1rNyhNjiVmEAy9J3jGp
	 h1FM33g+Cm4AR7TX9Gscffzkl5KKawVdhrq3us1x+Gw9nthg6FtTgdDnCvm0c2E8RE
	 TbsjTKNI37gM/OzdBrHxP2P7mAPozVu+/H2ImcGg/WiJMhNeJCYpzUQGS5mR35eZ34
	 wZqkG3bHJp6t6fMmI9C1j30ADDLEcPUSuTSwssIMK1OV/aKnAciGdejBbdj+fJfrll
	 rYZXs8erdZDbR5B+XxUV5yyNme88PqCwh2oxmZiAXv9p8hRQmnetH4ZNbpZ97TQlR4
	 JWqWxP20M80og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6862C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939380280.3048.8914602082753952958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebba3bbde4b7614606d09d50d9d277c131f129afc1e223f015bd708b235d0367
Date: Wed, 26 Jun 2024 09:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719393802
