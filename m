Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D734403E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773046494; cv=none; b=ASU+FSBTjijF/KY/LxlQLtENZQg/JtgY9wDvZLZeoVM8aj17Sk2F0Ci7//5OAMKQxal6IWETFlwYzbKULLdzWIzgt33mrRTTc+Vsu+9dTMuQ5neJ6/xbQg4lzXzz5YDKl9pM22lIq5+s3X5YKkXvHUgjNJ2o+jbjG49WlgVDPzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773046494; c=relaxed/simple;
	bh=Zoi82TfWBtHc4B1qKJiaYrlbm3s3u5ULoUTl2ihv0b8=;
	h=To:Subject:From:Message-Id:Date; b=f7vVrm0AfI1vWVCij2asEYhYz7JoDDQQH1MMuqM8Jvteiv2WAKREOO4o2PurYOJ3sOx67QP2QoeqUx6vMM2hcVmPECaZsWb8HkrdAA9Hf+/rQLsGhxKNhpSqzRvcUS+dppLnMcF3ra92sdJQwXCFsoltyqW+SaTzLZ3FbdJlMNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7jAGC2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7jAGC2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2601C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773046493;
	bh=Zoi82TfWBtHc4B1qKJiaYrlbm3s3u5ULoUTl2ihv0b8=;
	h=To:Subject:From:Date:From;
	b=s7jAGC2cwAyr/P2pYWkxoZoXmGZNvx+bmlBhFvjEaRqgxh9qt6MUWjmHzItttlOit
	 N4SkwW7n4sJjlB+xdN/fGCBuVGsTjzVn1p9a3cDYfSCAtY1G5WmenIewInR8K9w/ER
	 qi+Azo4YoIqYXdpkzyPn2Fzpw6sf2MPWRD+I3H4W6g1ZqcL3S8GC1/yqwuCW9vaPZA
	 05NmAylyxl13xIuTA9PE8sCa42YhGzDuyBu9G6bymudQ3SmjS9G2cNmi1ejIbzACPZ
	 m1PqKtQYeZTTA5zIASvBLt36YIzfIsH1kyte22MbjNR5b5f4Fese/4YTZX2INUv4yA
	 xT5a6FmcRIHwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C8DEF371E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304649359.21175.13760270208451795952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99b7fc498dc589c41187183daaa4c70e9d16d5a9d03c3764d4096457ec1cb95
Date: Mon, 09 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773046493
