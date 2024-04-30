Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363E61802DA
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714501343; cv=none; b=qrwkazY8PboDmqI5uxZUoY80RlScVaT+WPJn1lATwZ1PqWg0uHLsemxjhRM2RZZ+5XdHFivJbYp/OESFZpOueRvyLRaOKJuyT4v3vsyo3RBh2QbLuWooMnOpVbn5L5Zhr1aiKguYbh+Lxj7fxSXGU/vBHDpUAJpoN3FOGgint+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714501343; c=relaxed/simple;
	bh=culQcLzef9+6DrtR4+6i3u48cEfys8uTevt3tX5/+Pk=;
	h=To:Subject:From:Message-Id:Date; b=N74DIgGM3k7DjRpE26mY31zyTRl2Hwy3+IpiYV12D2ghWpnyGWf5gc2D3LzzVKei9k18jAw/I7+/gCth+OdzGercVJPIE1Ym8PuSgmj7rfepxoCNxH1mRN6DWcHYgaafHUdbOP2rrFfwZ0PWpecgBQXvQg8LO08w81Ps0PcLGpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkY4jahA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkY4jahA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D59C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714501342;
	bh=culQcLzef9+6DrtR4+6i3u48cEfys8uTevt3tX5/+Pk=;
	h=To:Subject:From:Date:From;
	b=mkY4jahAgYxorOXulwdCZr4yjVCpA5iaUFtu/ZYAltjWOpc6sHw2jehvLz5VQXmAX
	 e9pf2OEsH3sbxgIJbTgB6wIguwnwXv6KFMBwqOnyA2cosuzZf/oLbiDaYrXu3WedqX
	 9KrMYkAcIlUleHKtRjnaptbtNyMTYOi+al31TcEmxJ9HTXBYAm/Pojk5MQi34Se3Av
	 8ZsAdBlrLeKROYquP5dUVXwQWIUP1zQ/5NPyMrcKzMBb4PqohB8XtN4nr9tjGpBoe0
	 NtI6kW7mxFPoceqG7q33ScB8ZnKR69ph1M5cSjA9PF1Bo8g1OzWhUsrXIuaywFELaS
	 ggC4wE5D8zqcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FCEC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450134281.4945.7997416545127891806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6bdec99685f896316dd091fd42cedb0171b8f7f3cffef93f330a3f10d50463
Date: Tue, 30 Apr 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714501342
