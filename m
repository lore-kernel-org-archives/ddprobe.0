Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508F4388E50
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781004934; cv=none; b=ZsJTpq0JGe/0p466wkcd0aS18SvD0+4V2RYIdQWTWCO0/YyrlLhQZ6DyKgokW0DqmNgx1wyfF8pM9DIddGc/EVYluT4PrwtLpChAxalNpK6FAjBZF6z6tjo5YQNVMewtdRqXzXmy3WbN4Kdlo3qgvEnynJ/wpqhu/gI/vNE5Hng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781004934; c=relaxed/simple;
	bh=9lcfucEFyU4BdPr6+Rg/2q1/PQfqdEZ/am0Txgq5Eks=;
	h=To:Subject:From:Message-Id:Date; b=Y8ryC9Lu2agBaX9U/8kbnxYEUJJjkkhuhLhFuY/IkS9V53N7SxFIQr8TxyOtn8am7h6hvuWs96LjTYycSrav1EXM1M/+Z6aoJTnFbcD+SyFMXsFpM22GPc9e6FQ3WjqpWVGsYwFudAW91P9zKnrqQl3Y/gWqSoUyTVVOKN5aUUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJyKcdB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJyKcdB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D157CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781004933;
	bh=9lcfucEFyU4BdPr6+Rg/2q1/PQfqdEZ/am0Txgq5Eks=;
	h=To:Subject:From:Date:From;
	b=mJyKcdB4V2+MiYjFuHPieJ8v3CkEpvIa3XnWMXp8/IOhGLgHjeFtJAz3ZdclMawNN
	 ZQtZwmgVGccOFdVnPa4stZxW5S4zKCryFhuo/O0RqKJetIzl7E/LDC5ap28GFo5MHI
	 14D/e+W3YLA+75nFkB6ChPYr5ilvkJCRBnr3B+0qC0NJY1/unCkiKtOQLe+yzdeZ5H
	 cM5bVKf2n80Ad3/gxvo6NFDBhNB+gbklvsyRekfYKZIPJQRUj1L5uJwPSRqhzUFewa
	 fXB99TCLF/RQks7AsnmWIp9L+oASxyZGfjmZt/0MinECvqyetQfvxFukGsXdEeH40S
	 y3VpFW8fXJC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B632FCD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100493370.19522.13030727556760538245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac8df7c26c7cfbf0d992e7cbcf74fee3af34b5c22a6a87879f2d43a6493a5d6
Date: Tue, 09 Jun 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781004933
