Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AABC2AD2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748777994; cv=none; b=R7zBpM7fyKXLwzQXC2IJ2Odv/Nwr9wlvtPSqDpEV1qfW0xN7GQn5xrhL5mVcnky/xfh407AW9T0hGu/6ncAdwz2kE9V7bZoMmrw/BLApCmWtyBImxvLU0Yf/uasLYtHbkzhigFyWrgNIx44OEI8rdEBVPCFpA8cdZOpsKJ2a0NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748777994; c=relaxed/simple;
	bh=WF0FjXWqOvIp+cFW6y2Y5G8kMa/gw5T97z75VG8QP3Y=;
	h=To:Subject:From:Message-Id:Date; b=Jrb7KGABkab8IgOmduUj48r/YT8W3FDd8DDHyKqXFjSzJVDQ+LbeI9PDP53Ra1DVsFOnB9OTgjZweln2QM0bn/D4OvsU7m6FEpmjMjcODs7+8BONMbKV1JHf8nSyTaxHjbEfuSYwWgEU3xsUPnj2G4BVJFAwcVE19ZDw8V4SNVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jb/UNDrK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jb/UNDrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B79C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748777993;
	bh=WF0FjXWqOvIp+cFW6y2Y5G8kMa/gw5T97z75VG8QP3Y=;
	h=To:Subject:From:Date:From;
	b=Jb/UNDrKvirEHilJt7NUWlER1Q0HS9d7FbNrICpCmdeqD3GQ1p/BRkVX3CUAV3+aB
	 MHAZeaDZiaEIalXOuQMdvjIIIq2A4gtFZ4fAGnFVxuG88OZjUM6DP4iSYWl47K+Yzb
	 C+7bkxGz4K7RnBNA8PhtBla/zZzxqqE2iXT6jXq1oyD9HQAbnOYQIsUeol0w9qEM+A
	 H70HYN8j8YEQEDBO2ZQDxe+oiHwOW8ZFk1BocOPrAXtflCXKeftzp1aXKHCib78F6v
	 nXbcwINzhxhMjEqzBXTFgN93M3+zcrbO0FC1nkJBoSK2Ui70vPaFY3ijz3oCM1/f5n
	 aXncy/QzJyJig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B40C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877799357.11221.13296354297831632441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2ea2c9608b76220e11b8fc3ae429264b39cb542a42760fae04b021992c2558
Date: Sun, 01 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748777993
