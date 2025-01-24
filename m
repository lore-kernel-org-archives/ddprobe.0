Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F83923A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737711354; cv=none; b=sd/K+C/HaLwNVMKT9rdlnRk+4okAks5EAUnHDEJkxvhducu0nKkuEYfdxoMDBsGpQ01xHj6WYBhMegd6lQjVMQD4N5buDvaqzhkLHClL2WTZDUNNbgD10U5x8Gf0NiGw9PRiKqoY39UMYpt8BFAP2btNQI61vDk2TPmjX09PAqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737711354; c=relaxed/simple;
	bh=nr6E1oSgkZiiF4fhu+VNqoyozlEhflTKN3x1RsNuAXE=;
	h=To:Subject:From:Message-Id:Date; b=Vs09B57VB0/N4JCbx3isCS3N4wcYiH9bQgcTWziRlZYpCA0jPFl4gRc1s4eL6Xt5W942fyNsUQSex/k6/Qr+edn39BT9ItZ3wSeS22YowkHszFh/QdDKAQ5pXpzSCOL6UuHrN9xZQznkPepLcTWHau/oAJrAh1/VgcJ44nLYdKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Joxh87T3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Joxh87T3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDDFC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737711353;
	bh=nr6E1oSgkZiiF4fhu+VNqoyozlEhflTKN3x1RsNuAXE=;
	h=To:Subject:From:Date:From;
	b=Joxh87T3ZQ/wrtjeURdc3W5OJSmmsbgaFIijF4VUdLHCy2fByaqpRcN94At4PMSni
	 B/fzw1WZUPml4EoepMxue7BfzujqR5QWILcdoYxYo5pKcbAjn/GxHOCxBAqLy2kZ4F
	 oW1kJQfLKNpUElZgF5jWt2hl5EPRAk7BcO0XyxkrFOkSz/CY+qWM+ZHQ9KRhQwCPlc
	 SOKyD2Ivmitw6l9lX+CvXlP19yP/i2EScejahxRaJ3LEaVLpG0uiY8XmC18Zu9ZVpl
	 f/lNDNh4NqbR9NHtEwa+ssdVl2AA4QeAprD2uhrt03zdtakens9hWc0Nk3fWdNxaid
	 0Ghh0veErcBWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51E3C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771135366.13654.6577322018658747210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea38168910335964ffae0bc1394c377766afb4ff995a9a44215e64cdbd7cf15
Date: Fri, 24 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737711353
