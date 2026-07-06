Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A05B42089D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783361314; cv=none; b=AKks0H6nPK4/tuwd9nulA6C/VwrQgDGjU1DmvpaK5NyHLxg/l6I1uA5Xcb8eNIo3oxpGeSHhDrWbrtLTpj0GZZaw9RWcUifpDVIsp6SVXhn57I49VAruRl2hBUuKxCTL7rw6uD7lBJG/UVRI+iv4FvyLBotN10feSJocXDywCeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783361314; c=relaxed/simple;
	bh=DYzSuQheYOHBIUei224hY/oiDLlhMsO/L/th1UgO7WU=;
	h=To:Subject:From:Message-Id:Date; b=LmzzlCo3ML7b0noFnE2ilfvwCQgytvlV0t4EhQT7q1wafYi29Wn3gpqoFj8E8m/yQ/dnbYz8wmbVkVjXusoL/qemlNeOU+TIkH2jmrra+l8w+BA7D3PI5xDwy6cXgS6K1JxEYQirlUbvLzw7CwN9CCzOvzBUuQ8sn5xBRQgCX0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu5HP/fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu5HP/fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2538C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783361313;
	bh=DYzSuQheYOHBIUei224hY/oiDLlhMsO/L/th1UgO7WU=;
	h=To:Subject:From:Date:From;
	b=Qu5HP/fdrZhS80kTNC9KWl2eLlcqbeRrJ8dqrWryGdi/B1bIhN9LSguWcnF3FAZJs
	 lDu9zU48OE2SSSXz7aT02qEttoESJnJgViWdPVX6a4uxfL37hfP58N6wF8/cH7+4eT
	 FEVOjx7RPEqsk3OLypmat1ZWsc372gtUedPz/brRn4gKCXOWD3JjFzduWMnkXjUGyY
	 JE6HGCE1wEN+wtjXnLvjYEurtHI0j7ReR4d0388H2ZAxM/0FsAU+xUDBMOaI76ioLT
	 Re4Oim7BpWfh4ZSugI7SAz/L3EVmi5FGOGzfHgGfirepttrfxR5OvWYCj3NGmLKcwx
	 LZTjBeNGTmEMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C8C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336131369.29063.13632336128750992317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b8f3a87a03af954360e88eeba1c7a8fdc3387a0e9b3f937b08b1d159df67b0
Date: Mon, 06 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783361313
