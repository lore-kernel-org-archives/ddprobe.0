Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF4E2EA73D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781360194; cv=none; b=OlOX7revlTw7gatukRigP65+qFw5KvXgst+1OyB7lqkPEmiAFdhh7WK3cKvnvM+vC9rOhX/ouRCqgy/EiQNef9EsJkMeVtpLAxKhoCfGGkaam8kqTeS697RHZeWDUjSuAfVNxM2Gsou1A0yNHEdq02uiVBbAkAwcwGWL0S9ionQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781360194; c=relaxed/simple;
	bh=ZL3TqRCH6UWm3eMDZmjrBhf9VzlZq9hqOXBL1LBCazo=;
	h=To:Subject:From:Message-Id:Date; b=C+PSmaYjLjvRx/3/l73BUkeN27KhyQ1X1Q+pNNT+59KF+bABjywfMrfvbSL5l9KvGbsVXHoow7Qd4Gisu6XNoRgU57bcFCVfdMaOXQ1FFjQIZlJZS07aRAsPWOL6KH37Z+zPiG3Y0yZOEjYw/GSnJl9moyxlf9HP622m+lYbhD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOcUfxkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOcUfxkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE41C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781360193;
	bh=ZL3TqRCH6UWm3eMDZmjrBhf9VzlZq9hqOXBL1LBCazo=;
	h=To:Subject:From:Date:From;
	b=tOcUfxkR+8vRBvWhyahVOpOzya4jCJbPqb+2YPRJaz85/9not4OFTLvvwS0DAwWp9
	 2O9oAJTBD6UQ9lj9kvtbkg2oi9C4Yw3zJn25RCOdPtMmZ3qoK9UbIFuH8c/Tc5YZgm
	 lhSM4mvQHHVMjL4ZWSCTjMe++y5Mie8Me+4GhnYhvSbhO34GiJnKsPHY/tsp9yyHRy
	 /qQRaceE2ulwaYAkYaPkKdmYSCNpgEWz6PugCtXJnayhHlGzNkDmXSyekv6vnYa/3c
	 dgJ1V5N8pIzwZGyHK1UN8p8diZJO8RoB0WqarfdntwmSvPdZow2xoR+gt7RMfADz4J
	 QvCVJdYHSkzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF363CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136019369.30947.7510975039456427286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6314d978c95adeefcd306c868ddafcd94ed16cab21118c31655ef78cedbd24
Date: Sat, 13 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781360193
