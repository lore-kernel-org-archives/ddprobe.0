Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DD8127E37
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719735863; cv=none; b=b+mNVFbBPJfX+pKgr6pVMWv/VnUTSp6YR3b68gp0E2m3M06Tl5wOCO3uZgyO0gvnRRyF8IXDChPz0BG3EBUjXncX/pD5xpt3Gg5QAXoFyA+yD4+qukTqSaI7jqJ/fsqVgsDlYYHHFcghI9xnZZNq3bwyuAdiqTpsPvAdVyQoJoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719735863; c=relaxed/simple;
	bh=sZD+vIXK75TXa1Lj6bED8W8lbSecX60EHQMte5kgxDA=;
	h=To:Subject:From:Message-Id:Date; b=Mz4I7AYoZkPPkqWoDKoVRDhp9OT+D5PpBgv/fhhnw2zQZRIZ9PIZQq3zMe8UugAWQ752SlZORjrjQpH9JjdE29zirxZgQGsUBEDG81yzJrszI8YZEHehG+62E07BdRY8koOg7AaazY+0ko9LwLl9vNDA24asIrd7Vuie/6Qlv1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ewxl89rE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ewxl89rE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE548C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719735862;
	bh=sZD+vIXK75TXa1Lj6bED8W8lbSecX60EHQMte5kgxDA=;
	h=To:Subject:From:Date:From;
	b=Ewxl89rEBFQ5Ex9TDuaM5Qra4XAREHzJgSgqM5HjOORYKLrgPOoCpcGFMSS+I6E6w
	 ZQnhVUQbiuMxbxi4/DOFnV5SqItsdURewbcWmEwOUSd3eM75J9ELG+42p4YifOn8CR
	 iAfGYsqA0RyuWaK080GJ2e9XZnz2s+9aYQgoRyd/djSsam2I0OFF7n5JfvVxdWodTe
	 FlMUFW4Sv3zJoRxjxS2QxHojxkOPTMnLWOrKRvMjLdCdO32YeDdan8XuGlo0ydceoi
	 Hl2+o3Q60zRalJkcZSPHMWsNDoY+3kAzHCXuYADubS2E7UtRzHzmsajOEcesA8hVMW
	 Bt1CObCiL8j2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7717C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973586279.10581.7412533991190553162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bcb21676537c85a945a2376fe119fa190fea8cb893f1b1c2ac0e54843bf66d
Date: Sun, 30 Jun 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719735862
