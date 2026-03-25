Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304CD38F25F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774482894; cv=none; b=uY0iadgzwrd7XvQfIfXjIcqvtOKAXhl/81Pv1vlsdm8nIFome4D7/MykEQPoxo0A/muGOjLN6mhmiPa+g7TLF5OpQ4QAXwykuT74Y2lNrfzqypQ37G0AgCPZ+b+DcYxGyk0ZDaT7N9B2rLb6twlJfpWMRO6XQeqsrRa3rVpMdnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774482894; c=relaxed/simple;
	bh=0m2K5y2cJtFrHCwSJKtwvzSm2OjXA705zXZo/O9E0os=;
	h=To:Subject:From:Message-Id:Date; b=f6HKjwVMawm5TDXHf2FDugp7umfuuPJU4qWdKb60jrFDTorVVsU+ElVC0/o6iwtz+Clq3vWxKSLLjCcXPmgHOUqyTxP50TOmcPHA5tSU5MWd//SuSPS0d2PK1E+GrlJiFlZt5YMLvRPG0rjRCxjWyCm9HEkPOiEmqVIacNUoIpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKbMB6u8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKbMB6u8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8575C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774482893;
	bh=0m2K5y2cJtFrHCwSJKtwvzSm2OjXA705zXZo/O9E0os=;
	h=To:Subject:From:Date:From;
	b=BKbMB6u8ab2NVxztOig5jzCvkK80CnVAjsdsbqrXWg76/asB9AAqQNO0gUFI9RJs3
	 3nATDds4LDUNO8GXzhthdP4FI3l1yOTuPsl75u0FoRbgMzdt5D9p3mm8NFKdpIaRuc
	 l3qohufQA77Yue6T2QKRaeTizZXkgEt5cJuh8LVWL3jMTYM20hBD9E7VsVO5fYPPrE
	 05PFYkrlIbQIsul9Rwj7bM9sMnL4dOgKV719oo3XYFJBHcLED6Lmd0GZfIaDrYiip5
	 cSVp1BI4BwVk9bIJIu0LEbOEZ6+LOKUQEWi3Upiy++dC0ZPnH97kTibj11/9g82BcX
	 F7qd24md67++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94590109E528
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448289359.26155.8054011540211161443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0074f14cd9546ada027a0d0a20a23febd63439ae67e2e778e27105bfe15af2fd
Date: Wed, 25 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774482893
