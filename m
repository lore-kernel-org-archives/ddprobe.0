Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0126D2C6B2
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711828697; cv=none; b=TW8c/0SU3WbUA9ot5OwXeidP6t5bnbfdZBFavSoAuIXXQ6nakEqCNdDpMI2iaPqhc2WQYbHNyF4BFoOHDVCXLYMD8eeFROmIkBU2XqZMaZXnPlZ0Aw5GTLOlg7sn8kjN1XSGYg+XUCJ75k5fMRJ982BWzJquaOHHK9fV5mh7srY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711828697; c=relaxed/simple;
	bh=j7KvTCEOFKDbU7KW2sqtsVdx74xqJd1EGaOEnzCA1gI=;
	h=To:Subject:From:Message-Id:Date; b=Oy0Alm6SGHtMk08CCn9cto3PKponXG8Uc9pXh007SuHdBflFEnL3tAiZrEUwHm4J/Js7Zmp1ox+X0jHl0Kucr1NfCwWbvX6yKrsMYwRWugFddMKyREgRj4xHpyC35FdtYrpzeh+dAMxdj/EM3k4vYKvVceZ1pI/7RV+aUTNf6sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAMxiBds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAMxiBds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71969C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711828696;
	bh=j7KvTCEOFKDbU7KW2sqtsVdx74xqJd1EGaOEnzCA1gI=;
	h=To:Subject:From:Date:From;
	b=iAMxiBdsekf9hp7hVUApVLQQxDCk/8/UztAZApSO5OMe0alPRtOHcx3nYZYbUgQZu
	 3nLTNTSIYuy/8aCUC898wUaQxhzW6B5OSRylXOUQbtmyH7hOsA6aWyVZ6loBCseh76
	 ZDib5gicviaqSh4c2zzZKpVawRai4LKSp4Ys2uEF1FZV1rMjd6ZXUptvAoPItxzJ53
	 OHf4psAqqWdbpfZ1olkNbg8ATn+G6ukDV36cDgPdEYjwMZYnSCG3QpiEwURUenc5iH
	 GO2gfnazp5wdX11f6vaAv/7dHYivqSwcaYgyhabZ9xluIPGWXqcFJb8itFt4MJD9Mq
	 jgV9S9Vp0LDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F92FC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182869638.9781.15148129217300304651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a880efaaeff58d3689e3c1b8415b2ee819a52ba6a733ad10b2690ef20bfdc2fc
Date: Sat, 30 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711828696
