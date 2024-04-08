Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC04E7460
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712597296; cv=none; b=SowXJd4Nps6pET2QZw2wfvi4PCzl3KoSUxtgeZdCtQceqMm6PqD6wLGzEkz8Spd17c11F8BpqikO10MGof20GeVTnDq9/lA0K4cMKGELFhJB5dB6B/dd09jXr1d8ENeNGjdxK7KQn7NfAeeF7dAwpnXElyFHjxuN4Sns1b1WaeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712597296; c=relaxed/simple;
	bh=T4lcOGXw5sCDxs1/1tlSGEz6quqZLtU2wUw+6nK0Ol8=;
	h=To:Subject:From:Message-Id:Date; b=K2hgeOUsXkAYoUniIXlZkceigAkJPTLv0D6j3Tybhozq8QlTxLbYbaRNoF25KoS5i/VWMRgsyvHwBcsP1BrW3VECxDwgAPPfYIljPB3TKiJFGmGNOrbuLn2ywt/xnX4pEe7UJFISvQbOsl8iymW8HDz0YxZq17eyX0SPp2It1p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUARkEqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUARkEqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA59C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712597296;
	bh=T4lcOGXw5sCDxs1/1tlSGEz6quqZLtU2wUw+6nK0Ol8=;
	h=To:Subject:From:Date:From;
	b=cUARkEqtwsdG8+hx6ecGL2IU0a+eRYgXB4BA6gGoZUwHJsN0pAtaGLWIxYP2KkatN
	 +F3CFBsH1cVoahvku5Q9CULFzb657kdn29zQUglWCc5pjE2ekrS9xh2JI854WGaF8m
	 6HO4FJIYlTVRSBEOuMDqGWGahxzSQLwBHPUUc5606Ios0EExsv1Y8Z4dThq0cMdV5o
	 CHCku0BWRQBHVKV3jPvhxGx1KS8kiX7sKJhXTvpePkWjeBQ9lSADUefXHtjy9wfm8O
	 OieV08Ja9fK902J2esrRTNiog6NT0l408QfrvJbA/avLyYa8J6i7yzr/F7ydYefNqT
	 MYLu3M8aoXDLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C91CD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171259729641.14411.17000386528535913296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d039f749f9742a79640f348d5277b2e7078cc1b63d0d6f05aa1893bc28fa866
Date: Mon, 08 Apr 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712597296
