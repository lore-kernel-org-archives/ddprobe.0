Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5740E331A41
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784839834; cv=none; b=WfC20yt3XRBPTU3oDKBY0ftgOxuiRzk9B4uiVB7S+U8Xdu4o9xpD4W2hPhJK6Ap8vyrZ8D0NceH1m5V/O9yoYRNrdefkaWjr4AS3TriKhLTrGUw2S3mPWX79YinMtw+WJ05CAaA9R/LEjWcenSQYkYhXXrkgkEsV0kjkxb4/3u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784839834; c=relaxed/simple;
	bh=mBNT2d5RaDoVZpQZnoWG3ztRZLsXJK7CoW6eAoHnsDo=;
	h=To:Subject:From:Message-Id:Date; b=gaCkF3D0NAxO66YdVcQW4aCXMsdubmYWqErr2Sgp3q1ASR3HNa1uHiCmIFVoi/nXDPaoCHucxYfCDQBifzw0pTsM/QxZaDUwAPdBSy15HBuQ/i0GB+79IBH2OxZvL/M6j/lDXjLqLwuOK1Yef4FeB3mYaDN62ufMrYUhH4iwrLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiIUyfLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiIUyfLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC22AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784839833;
	bh=mBNT2d5RaDoVZpQZnoWG3ztRZLsXJK7CoW6eAoHnsDo=;
	h=To:Subject:From:Date:From;
	b=QiIUyfLXnsx3QV5gwJkjNcaGBF6n1FUwQAkhN/ejZYmSogtG879+4SAbILEP1SajN
	 gVM3uUy5j4YTiVPHe5gqW9ixpN7A7EnObN78F8KSmgq5yZKyjr6Q2X5uw9f5QmU/g4
	 A4gltvGRYFup6fuDfd/WsWOVlTMBzuq04VEElY+CbTx5HDDPhBAaIM0arCXj8/4U8L
	 KaV+lV7C7dDXzKQJPea9UtVYe3PWTcPAPNbkstncwp+yH2Od0IZ0GdPPIPvcCnqGn3
	 +yNfBW5ta6kSRrVYb0ao3IQF84wsIdvty1ps5k6V2oCt/1JzeTtBWDuwBK+TDO5FRA
	 T4xFFD4OPW/rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7592C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483983373.6709.345385494268050139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d853f74f9693cac62eec46ba039ffcdd17779c56a23d238360ba8536d8a8340d
Date: Thu, 23 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784839833
