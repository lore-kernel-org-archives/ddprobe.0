Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CD6336EC5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769670234; cv=none; b=tPnHI+5U+sGM6eiWNsVE1U7krlNkyP8OvLWihz6k2Jlr1UnVkF4kYzg6ND2PGLgSVvQiOxwYq7cpg33qu6EnAbUiqTldUwtxge8m/qtZ1ytOM4NHqbBfAblZnS0hYlVY3Yg/HcWT/2ViPY8ONy8C11pCpFLdd9XIrY5Cx0qEuy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769670234; c=relaxed/simple;
	bh=S3r6mb+zNvWLiCnDDlROECzrQTg06vQWHv9g0jCZehs=;
	h=To:Subject:From:Message-Id:Date; b=BtniSmi8XNM17OYbI4tovYu7BmG1zsa6znDNNgrYzyTMd8rjRSGeAR83813So0IIT+YRKrDGvJpdZ8c+DSAmn9fnIExhWXCJ1bnm8Ox48cyB++o6mdsfHCC70YvyBTD7hF4Ms/w6afcTeDQN+GqL+rDff+Yr1cpbGYhuQJrMrM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTaN/4/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTaN/4/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0333C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769670233;
	bh=S3r6mb+zNvWLiCnDDlROECzrQTg06vQWHv9g0jCZehs=;
	h=To:Subject:From:Date:From;
	b=KTaN/4/79ogQ/xLK2AEbZyOFG91sLqRf2JLclqIT5Q8DmLQXhDVuxO44Teg3JWJIB
	 K41QWXRLaO6SgoZytPSNQ6cAn/NguPB2VGoU3UCWit6wWQesFNRq7hOXFuLiedL0ql
	 XPHNCKazFXn5Ga3BXG0zovirTSyg8A+d5PoFqmjsWjDVONq6XCtie4k7JHfFrIPWZ4
	 oANXCDpjeYckuxUNeIgDd9drMDZado7dTZg3biVpQv5Ul3DyHWwOlcZrjWr0bCYCRO
	 Bh3QDrOHwtPrUY5lGCQ/LkHK96rqxMo/LIQhawdrAgDc6xzFwP9p9/C9Gw+pMsUyEK
	 2onHZP4MFdOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB59D358C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967023358.30315.13207133780235510402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392350fbc63e50226aed067831269369fd4e042d65c4d59a9da372a46cbcd0d1
Date: Thu, 29 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769670233
