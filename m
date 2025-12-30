Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7FF19E819
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767117234; cv=none; b=OpfUIQYLvHf9Fl83fs17h/6FF79tFxcQbs2hE41EBRxOU7NB3YtNRs8vGJEp3VqP2Jv5ifg8Bfo0WjbFkuq4dIyoxT6x61c2DhFMYK4W0vxTpb64VO2/hvOq8B1QUhcNyanFR8whkSERULhyH74rLEILed4zQYgqHihwyNw/iXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767117234; c=relaxed/simple;
	bh=3XvkXSkPYN6v7fzQBiUDwGZ4K5GZqvLeL/Z0VAyanGA=;
	h=To:Subject:From:Message-Id:Date; b=M8ls37LVPEY1u30P/W9l+tAx9WXThwfQJiwJqHq83/mXSWP1ipf1eTJ5mgxheSKH4OOTVngQjVLgeWTAxc0ADuPWRQ2HGG7t4jzBcZM6zvyeYdYUw9OJy6HQRrx5Y31sG3kxDDAffoAAZKWp3rra9wgxeZzdjHgywQJ2EINV90I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1/pusXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1/pusXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8B4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767117233;
	bh=3XvkXSkPYN6v7fzQBiUDwGZ4K5GZqvLeL/Z0VAyanGA=;
	h=To:Subject:From:Date:From;
	b=t1/pusXHFBSCE/X3ojXy3Xf0fR3PrG8WJldEUqUmuKr/W8ZUrB7HyLBeXqD6KFkie
	 9QzeKUI7IllNFxp8gLmAfQlU8llJulRyh2zIa5cA708J0vuvhQPRDhUSMdyzddc1d3
	 MZF5PwAeb8cgxEUWrgJL03DTfrR8f3Mztwby2ooHDu1L8ULapuTS5LkMVN3figqbiK
	 dqVBBeS/IxZ0krpkOsMhkylWU6RFOkP2v61oksUX9jEw9rTXXODp9l7bmxjomYHMYO
	 IMBpAIZxNjQz/DSF6RA9z98gQQHJxsImjTNs+Z8ymYs9Xr7Em5I7NocCRWYjSKAM/v
	 BYICkYpWOA+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E962EE4992
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711723357.17951.14893073980739829147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9ff68655a9419845f088634542dae795f7af301641099a9ee52d31da7a2156
Date: Tue, 30 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767117233
