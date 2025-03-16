Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E898145323
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742164194; cv=none; b=JqplePDdSrXqUoXZaFZb+JCTMsbVw/4+2wBXUK1OI6j42ngJsqaEbiOyS/WBbBt4IS6tcXIRVRSEDfJc6Y6sxEtWzNo9+z/13IUfEMpBGSBrXbEj6k9FjnwE80r1fY2jnu6+Se2zfx+Jq/eaYODL2kZdiTRp7R4OzW/8n+IdLKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742164194; c=relaxed/simple;
	bh=lGwb7gl+Z74yBIerOTyGh1n+H2xtydOtp7pTz6s7S8I=;
	h=To:Subject:From:Message-Id:Date; b=lyzQGMgvytWnx4z9orRQQ4yC/mxkoh4w2NsqdpcWR4V87N9ICYz8xZhtfYeBYTlr3YrntSbUm9MX5MiUDSyI6IS7pEh+kAAtIkW8KhBErc7gRkopFVrj9qJ5ImGg2jAYn2tYIzlfMCRpT/UqQPAAem34Y4G/Zgg2U9ozIqVFsvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfXz9xze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfXz9xze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C38C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742164193;
	bh=lGwb7gl+Z74yBIerOTyGh1n+H2xtydOtp7pTz6s7S8I=;
	h=To:Subject:From:Date:From;
	b=AfXz9xzeS2Wv+bTVx3A9j806gIAL+dpf17F/zEemJLZuAA6+T+fOM2NPFF9FGrA72
	 SZOeq0B47UDkDn7vscaXMeNCQTmVkCJnaGGAUJA9dF16yeLhc1WTDf2SYBccWXMQPa
	 LGcMZwBrhn8NRVhbkBy1zWRYA6VIEnXl6ZeTBnBfKNfrddCcsVlLIRnZ1ob1RvYzLQ
	 sL5lldSx2lp5y8A/1bLAmz5qYG51+I7v5B3P+AdoZygI73K7epx/xKVqu9SecUE6fR
	 FdSBL7rQf8VWcVcX30kUN7peTIi6v7yu6VIEzNxF3WS+4PDxqneD51M9SOXP/qClqX
	 KxGq0szDd41gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3DAC35FF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216419361.437.10755460227553283533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deffa5b90ade634da1c19d52779e62423c57186e71a2650d2fea0272e22a2bec
Date: Sun, 16 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742164193
