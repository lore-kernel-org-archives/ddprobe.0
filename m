Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3044628152A
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761688794; cv=none; b=YF/87fW1xl9VLEklhWv0md44smPEOZgX7Y9dtvNcGvkGXIqz4+lttOiChYuR57zuB7qoIHVm+3Ghqf0WxGkcS4qdCB/uYwWckzjPtTqNsUCuSfeJSrWoAOMf54OP0FwgCM9aFxmEwM6MOLYjefvxR/t8KqGaWjR4/wWPEjD7XaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761688794; c=relaxed/simple;
	bh=YYoLx2AjZzBU7uQMcSlS/8O2X3j2nPzeMz4NrqfWbm8=;
	h=To:Subject:From:Message-Id:Date; b=Ovz1e/d1P3qstQxHCrW40L9/2tjprP3fUH5ogfcgOBpAzvCjVuHy1OGtOnvQtm7DG4T0Oxy3abnOWi/OhhHMnS6ogP9SRcDQBfAjChx56QJ3dU1yfi4TT1Gkk9r3oxbNf9kgTyexdzIWvIt2yWLoK7m7adfYYsYyGc/w8vio5uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kpe9Apga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kpe9Apga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761688793;
	bh=YYoLx2AjZzBU7uQMcSlS/8O2X3j2nPzeMz4NrqfWbm8=;
	h=To:Subject:From:Date:From;
	b=Kpe9ApgaXTncrVJ+977mzlanVnZe5yRloepxuDiPaWLXEDUcVpu6NQh+Xg4HNMzy5
	 oyGjEOz3skfKfJBttKfdQ55+wKP+rp13d11dtwr01EbZ4oaVpSJYB9asnwgjLcF/E5
	 HGW3wTvnlJ/dnNy41tmXJHJNzIEjUB9nSQqC08LbtQ1ecCfnxdhC7flDg+zNpNR9gK
	 g4koAmmR41fz4gI16ldvPSBx7tdOaa9QnzXVt0l4z0cT0kHZ0cISSBqPNZZYe/uDtw
	 gQk34ZLDVYimZEFxILUQvjAHnYEIDw6ohpD0w9YlA6mmYLQGjRJ2eNfzFKKPbp7a+V
	 17tltUvNSFiOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F83CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168879357.13504.15006937919106253642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ef89a405d3dbc812edb308fc51c1729d55dbb48090491f6c625d5ef772243f
Date: Tue, 28 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761688793
