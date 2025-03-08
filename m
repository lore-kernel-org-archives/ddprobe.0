Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C20717583
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741424334; cv=none; b=eDcZ64sYo0/+5bHOIIbv61U9VkyrzOxt9mNZjG/9/m972dleVqG8FylAgm3Itp4Fh2ath6TlDW+DJF/wMVPVfycivUQDFNneUAIX/WYySdCTICXdKq25Q72sNthu9X9InbBcU04lvGshLOVF3EI3sWHpn9U7upMoJ9de2aLePmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741424334; c=relaxed/simple;
	bh=JMWEovv96dWA+BHGo8GX01BS7WjqmvNC5kiQiw0+ZBw=;
	h=To:Subject:From:Message-Id:Date; b=l4+XFhMob24uBHjAsic58OyaJrJuqFxrSgmZUtEQvP8cgPR33NS+GwItaWz/p3N/P7etRd/wIzhOR+OBqzWcaSbcpbXUI2pTY6q+FlnUs5mNHOjAk3kUaFzXJJlv996MkMsrNy6jFwTGSnvDtg8Fu/yLQJrQT53aIZVHwxpvWG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0JoWFkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0JoWFkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA09FC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741424333;
	bh=JMWEovv96dWA+BHGo8GX01BS7WjqmvNC5kiQiw0+ZBw=;
	h=To:Subject:From:Date:From;
	b=Y0JoWFkzEOPm/NcLim7HEuUTsX1M05A1XP4CHT4xqK1NuZfJ++5oWnh4XlxHyw6aQ
	 DIXUQdH4qazeBLXgO+QcMcP6AIhM4zO2Ah+nQZzzcoOA7BusRIm8okunVraQO5ie4C
	 Aet74LGu7bDz5ayoyPnCLh+++iLax5M5r6ucNixisenpNjTazkSLWtrkW9CD0tIUNX
	 iD5M8cCphRlrBBY46/ACaWR5geWJOu/QP4cubhsRcURGvIehgMlHgW/tl9Yf8SObUt
	 afr+OjVlPY0E/R1gLmHf+A5OuGB1dDIk7AzGE4v9AmHYquNSRjEi69RjCwO8N52K2t
	 EvE1edYtVYGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE9C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142433358.26594.9734250170102100753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5027856b6644e9d3d37fc4d02d9b5e88a08a6ce11388a036a63addac0531299
Date: Sat, 08 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741424333
