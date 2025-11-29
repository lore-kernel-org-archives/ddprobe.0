Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C733101DE
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764424974; cv=none; b=RZ4xJNm4d4cGlBEyrJTTThpp3hKi1HYLNntHPFMbwjyDftcAmRQ4+1uhJG/sDn2mjHdZemrmG+uSazYocEQiQiQJpHGVFArgNmb4R1C5SD7529DUV5K3M9Sd39vQEzoep6KB85ZTRvIpWj8mUhMDvzz6tfvfg5CX9cKUQMY11Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764424974; c=relaxed/simple;
	bh=tNFbQ+M+19+g4J5RYWC+2guFjlOP7RxssPJ9+onCmuE=;
	h=To:Subject:From:Message-Id:Date; b=JzG7RXMh+Txv13gM7Ks2ohY8AnQPsVj6yB0gJSYRqXK1nuMA74pqngRVz+Rsw69hMKQRKjcYC50JGKl989YxUS7XQhIX0Z2keq9OpAChxg/hwkibHNMhJWtqTEMnrYYZ7oDsM0RjPEVT1CrLkuEhstl/N5vQkMWXivWcc0qZM/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF6csvwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF6csvwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAB7C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764424973;
	bh=tNFbQ+M+19+g4J5RYWC+2guFjlOP7RxssPJ9+onCmuE=;
	h=To:Subject:From:Date:From;
	b=gF6csvwHGRxkdVPbJnWuMU4idnFT5X5iuWbkN43keoNOTXEoEXWHoJyGAy/qneSz6
	 dXK7c9VleQsr1msA0RPfRKIKFHNyuYPBrzDm6nWxhtLpNBtfdleijDg/y4btwAJYUY
	 iWkyA8AN19rHgxvb1gMUnBHssazBbsrlkrlIxIs80x/FLbat3zoXc6rHh/ClVwX8zE
	 6m3AnQIUMviGDpN4I2M4rnL7hfjSnBheBeyTvY2rA6GFYBqspqQLMjoneqrkzonj/W
	 +WdVHbPPcXQsEXOkIAZ9ZVAkFyXmjXpXBklOhyQQA9Q3cnv/uiCKLah13v40VCxCXA
	 CpltLpf5YdH6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9983ED116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442497358.22023.13052526888333176779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6311ac7e663c9f047d8ff43adb85d2d662516b2e5509ccd87d28dc9802e8388b
Date: Sat, 29 Nov 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764424973
