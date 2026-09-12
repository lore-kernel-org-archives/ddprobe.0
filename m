Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534F341A919
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789205434; cv=none; b=C1lfM+otzIFx/zWeSKu2UQ67yVk9NL+zVTqlalEkUxV3eK7xtqXThQsGEU4EV1aqhcPqWBigvF9NJAvV6geChR6jDMyP1Gc7TxrZItc1p0TtB0I/ZFNevVH4/vohd45khGTqBV5Cn0fDXXcPQhF5ULXPdTvxuvlqv+U5drltbc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789205434; c=relaxed/simple;
	bh=JVaWAX7FzEkLRKRxUivjBIieGA8fGWKg+B0zdKO6zMQ=;
	h=To:Subject:From:Message-Id:Date; b=PB/JZLFP4r1BKXxu/ilxiGUOZDkdlCW7Ybj/80sC4ElXQIGso5/1GAA2yPl3kUeHQOnWHX9h4TWSib/oj0HsuCQsL2M80zt/oCl684k5xlktWGuKiCF59de7xvtD273jJ5ivg7uq8VMAZ/KPS8N6WCbOFtwDwZlMWt9sT28VCQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPrZD6le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPrZD6le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF35C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789205433;
	bh=JVaWAX7FzEkLRKRxUivjBIieGA8fGWKg+B0zdKO6zMQ=;
	h=To:Subject:From:Date:From;
	b=iPrZD6leopKImZbvMWjNfcgOXCEoN8G26Sg6lPpqTQ9Pngb+Ql6tNMaBu6liz2EXy
	 ds+iBFcJvWhc0jJ3ubbNtDBqbsSGsUJ/zugYo/pPUvIEixZAaNnIza4M8kfWw/Apah
	 dTivL5C1o0x/EIM9tCiZlMcOozPYlgi0nyeaorQVYzgyNnNpRBLgivPcyKUmwu7m0t
	 8jnhvitx1HesVnTNbXfbjcdyccoq9cIQ0ztalDHlKnQVZOHS9H3xoNe0QGhtDoecr+
	 UIkDPndJqU1F6BYTAGANc2gUvbVV/eiqT0dLnY6vNI1r2q/HAJokH1XhVBRDiEsdg+
	 0XxauIxih67ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971EC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920543368.16866.4327702827302343301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c62dc82f492b46e9166210f17f1578d6fe5e5c4956ec1a55661de43d49dfe04
Date: Sat, 12 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789205433
