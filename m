Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576693033F2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767998034; cv=none; b=VOOoC5qlhh1QsWTKlVdYZBhM6kAQ5h1Qe1mRsNRU1s4mbC54wFS8YVEkp7/dxdgq8ErSfC1D3okCS/AYikNmJI5rszERstszF8XOXU85QHWPNvHd3LJJO3YLkLKEeDr2wqC+gq6khkQ8qanMUXZ3SmYBum2NWRMn7D/JBkVk0Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767998034; c=relaxed/simple;
	bh=OKijXCpsfMzblLXIrPOfeBo80eOLLCnFa9M/HFXEMBg=;
	h=To:Subject:From:Message-Id:Date; b=YsvOpnIkG4A0ksZ9+DreX/BNVNzUlgLaQ0leE1K/YU155WVmWC9MQLo8AeDLSB0lNHJiV2ev/awtb0h3YXgcZCQJ2xp+m38lzkg7shcRIGngRVNb/Q/U5oRzoHCxu75lJxoTHOdZyBgvnJ5sti3XHs05HYFJ7enoxnZ/odxtRps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCfc1XrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCfc1XrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767998033;
	bh=OKijXCpsfMzblLXIrPOfeBo80eOLLCnFa9M/HFXEMBg=;
	h=To:Subject:From:Date:From;
	b=cCfc1XrXLpp3EteI51rEC+oCQs6PCofAI/GhMH7wg/++g673XbXwCIOjdABAnqfX8
	 JuQ4uNr+5G2KP/yIBsFdnk+OXSDQHHQMZz15i75vhstC6ukxqwxPPeiW1G1o+lE9tY
	 DrQHEU84JAUR8VWapBdT8ZfXIPBx9UPB/t5+npmnUui/CYkz475iBRNHcC3xMsThE7
	 OriI33ODx8gbWH3+eD0yUoGbLGKQLSS9zOB3fQc6wDJ7f4y6sPizcp3oja5d0uNB6A
	 qVz+Z2DY6792T+2D7Rrkg7D2nZeOaSy/iJbQVxiZ1ejZn7xCQQB7G+O1Qwu+/BcI3g
	 SCNo/DJ1cVVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2ED277C0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799803357.15678.12453955230348821093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e404ed9f55df4abdaa4723e925b71e5c73e1d909ffc9cd49c64d99308d4aacb6
Date: Fri, 09 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767998033
