Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0A328F0
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714275143; cv=none; b=M5JAUJyI6V4ddnNFJNF+EFj4ox3tM7PpBcQyrPUKKH7jINpXAgCReyyuJ3/E4UVXiWde3lebSyumO2kyI74dLSF2oYDBC+Imh/vuKqzkAuzjFPvHbRu/dqf7AvtnmBB9CU/WqPCOE5c/XgyD5Ss/t9TyN1Nh29tA/tLqoo7pv/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714275143; c=relaxed/simple;
	bh=p+rAn85n0244jha6N/KkTCGxaCEkWIYnrQGrGdUB8g0=;
	h=To:Subject:From:Message-Id:Date; b=sH+Oiv8qA/RC3xqeF2SfX9YIWL6zGexu+QJdc2ZF3F9FRlGn7ADosgMg+o0nKUBa1+Numz9Chvd0UXBuBHN3kJneDI7IzzI9cuaHsy7qUQjv7oqxzbuNiwIUcs5ZjZ5e1WaSU5zepBuBZ/v361goz3jhD0XyDUXrO5hjdSFB/1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KE29O7XQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KE29O7XQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F57C4AF14
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714275142;
	bh=p+rAn85n0244jha6N/KkTCGxaCEkWIYnrQGrGdUB8g0=;
	h=To:Subject:From:Date:From;
	b=KE29O7XQraUNqHwsoNNy3HkpW7/tiwWL69MXbVUIEIvwaBHC8VBK0D0OXqVweH2pW
	 EARxyXxNQExIBbsBdO+2b2WG1zhbCYnFRtyTmBl7Pn2CDb7hl/q7yJpKzrUz7RdXpY
	 8sl0MwBkpAamwzOTOBmtqGod0nrG3ujuWnZ2VMiRBJd3nOfifkirx79ICxteKAbWKI
	 PJx+79GVIkfIUMk1g+HzAl8TO+p/mmREb7ncr10as9w6Z6BIqTQxBRS9en78nIR2sz
	 iJ8J8BbJPZsmRcujq7p4Asua6W3urynN4cdXceFVQp9pkGb91B9GYtYljFF7BHu+4N
	 yifwdDDugyy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF94FC10F16
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427514277.6206.3384334753377026190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd374f6664774a22d830a5fdd314f31ebd8c09e3bc9495077fe0d8da2e9b5e1
Date: Sun, 28 Apr 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714275142
