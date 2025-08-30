Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7D618C933
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756534194; cv=none; b=TogngW7jPcRaBaCDGXMm5nsojN2IVBNd82KbD4LxyG1qgBTFZ6jP59Y0ozXnPtR2KTu/p1LjC6mNLf/XCazK3KTWTU0Vx04O0+ewt+h/Uhunf82YVeh8b6X1TvlUCiXsI4V6Pzw9b+5tl2tbBWIQTAucGqP2fkYRdvzI9LWRYfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756534194; c=relaxed/simple;
	bh=hE6cO5vKJ6v12gpbuyp6I8tQzjPgmFkJ1kKOJM3Mu3s=;
	h=To:Subject:From:Message-Id:Date; b=n5Hhj3WWdOzQiYbUMv4Wc+ICyv1RGKrHZ7FkocV1IpA5OXwfBF4d3JLAnEkyygfexRtfbq4DBDYwsrVAe+e+9gsTsfHcv/tcUj9xfNdsqtEScy+9ECkv34YzyQfG0zJrTxqk4cJfLEQf1gDz/In/+sJal8B4G9h8qvuUuklkh+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awVtUfK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awVtUfK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A287EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756534193;
	bh=hE6cO5vKJ6v12gpbuyp6I8tQzjPgmFkJ1kKOJM3Mu3s=;
	h=To:Subject:From:Date:From;
	b=awVtUfK2dnNYjonT7FTxmp35Ync1+IlJ/NR/3aQkbnPRXRbINGBNYGeapgvBMe90Q
	 hXSJEz79KCJhWK+l+TPD7lY6mxf7WsA53rJs9JOGegYTzOFUaT6WvgsqsSah3SusZo
	 EW7gtTubM9Zhw5BkVM3iyBrnyj1gOFKi5wKvEAA6VANfFupNZGewDgbYIGaGz42NcX
	 or12WbH0MOQX6m2hjCkW2TSrJhP8sLzG9RDpkxEzR4+CFTw9sOuRQJ60OoTzXjrbyY
	 xma122EpbuO13YJQWIuyagrNStgVC97pVwOnGYwrxfAXQDTeeRGIhVmPDwvdTZOcYJ
	 jFrDdnbmiSt7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134ECA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653419357.19306.8804779715574596344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db95dd71cbfb0ffdb06104b0da3c33576f10fc3c773001aae7ead118537b44d
Date: Sat, 30 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756534193
