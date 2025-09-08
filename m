Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA042E3B19
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757332193; cv=none; b=R7sl7Z7YVCvtQIm/PpZzFrepMjFjHqnkPEm8HhZPx0kxSrc5ps18Oi2LTUQz5EeVsQBen3ceb/jJw2JrjgAflYIpPlydOJW0dq3JnLChpHex/2Apf3z1gWlB9RYsx/A4lY9sBpxmwcqxylPFk5c4il5700zNzqY/di0uX7L6zPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757332193; c=relaxed/simple;
	bh=urghqyvIHCp0Fl0jB39DRLuPfL62LRc+ndyXdeX0lAc=;
	h=To:Subject:From:Message-Id:Date; b=nxKM1OgakQ/wiy0eP4tuR8+y+m06KseNJZVeQsDOIf6ZyF7mezkAidoPlxbbNakI/EcyusrPenHzrbuZpvWPwQGuYadJ7pxCAFU3s0xKG3/+LadMAkqOWbL9nqbYPuhKmUAGRTz6drfFdr7THGhG1uOPeKokkXnUJode0B6d8g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0X77jrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0X77jrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08DCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757332193;
	bh=urghqyvIHCp0Fl0jB39DRLuPfL62LRc+ndyXdeX0lAc=;
	h=To:Subject:From:Date:From;
	b=L0X77jrExuAbakrtq9q2zMyvnKvMh+TL+FnGa1W+0I+ToOsBfMsGIlwSK/eju8g7f
	 CRCwEs3Lz7nNuw2tHuuHo7/25Aex0j6Hh7HizBzrBNxTMWUw3VWezCfvshEWXeTVxW
	 NAal3Yed3rQ5aEcwbvn3hj1Xh52+zSD6fVX7t+KVpdSKJK+h/6s4h8TioLpTNi/7GZ
	 bj91TN9/7DQ1R/UbM1XRU2mp3raX0Rmm0bNMEinwi1R9SKh4JA71g7UzCrtCvj/GBl
	 3qylsLbmjoBP5cA0MrvDUiluwG4Bbe2oROgt6cHNCtXt+xdGoRouGr1hwT5vQ/gXgu
	 qouwQcKYmKxyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A3CAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733219358.24861.4914667439297108095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa04657db36c3874da57cca35bb16d7c1c614dad41d821bb5acf10ad92f7aa68
Date: Mon, 08 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757332193
