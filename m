Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277331922FD
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773620694; cv=none; b=Vp6/ITlZa1BaoH2efbFk4iBnWn9eshDRBB2UKITK+7clvlx8VeoPQIi6hy63ht4NxlGxy6nbJ4mjoW4tVeiUvHsnFVagGNkqzDS4AA4PrkmEOjNGiEW1GZMuU1lmCbj9jwL+iU9BCmederZ0DGS88DSis3PXSP/2WGTUaoxWMZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773620694; c=relaxed/simple;
	bh=lSNH33SX1bcWeBbD73ss4B6Fjcgh/n7f9CdYNAyzzfs=;
	h=To:Subject:From:Message-Id:Date; b=FQHz4jhK0LPvHaBxIhm4Zu1GDNcYyC3UGok+ABQD7msJ29xlUrjna7iXEwgDPFeTYPndbEti0mH8YiQEodIOxgfi8WQyKlDfWITkj7gA21d87UdNfWHFuf8iMbT91zSEk1tujwCBOhc23mzUXjOPIhafja85H1OI4syoqHcTGIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzVRw2Ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzVRw2Ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26F9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773620693;
	bh=lSNH33SX1bcWeBbD73ss4B6Fjcgh/n7f9CdYNAyzzfs=;
	h=To:Subject:From:Date:From;
	b=RzVRw2Ig71ZH6E34xFBKGdPPqy4XCQ5XtJtCfgItjKTBm7ZvuV523qaXfTo5F2mUo
	 7UpP6CqIPS0mP8aqVKcTkGWFFAr2p2pGgQgTF1jE8Fz6RasxwRJj1ghBLcgnE7dwUa
	 fplab0NVO7FGYq327ilTYHRYxOqy1TfKXGKxWP5Snvu9bu3eTdTgHhlYrsN+ddb8Wv
	 6oya2sqEVGXfJihCm5tGUzuI9zKCCBcHQZSTwWJn+yvvTYc80EkWNdp3JPYnCLB9Y5
	 HlPGagxysJGXSQztNU4YrxF8JdMxeoJ4os0IR2NvfDWhkWilFdt6bIePHniGp9DHec
	 b2NxH+UmWxFUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAFFF3027F
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362069362.8549.11397028155436026474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f36f982c7701e5b554f5af5fdcf1b7335c07c29f4e9b2946a655953a81c3501
Date: Mon, 16 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773620693
