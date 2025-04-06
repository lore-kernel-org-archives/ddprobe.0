Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D603F176FB0
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743958793; cv=none; b=VfnRIvghYG5UP3dQV69IG108vSn5I1912AEDS2DGCxqU/1eNnrPTULTHVQsnl79yNYhOEOZ4uhaka+nZx1RZ7ctepulsOheopQQlP5oBSN3BNaHxJXrU5IR2f+UVsY59jSXEMIZ+foMlxx+x/D3EEjiK9wtMI2sfkhRzrbRsg1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743958793; c=relaxed/simple;
	bh=5ZlQyr/i50WVYUoX+295oOT0lsH4EaxpcSDENPV4aWo=;
	h=To:Subject:From:Message-Id:Date; b=tmhbH2JRwkP3JF2zRlakeGcUi5dRRb4/jZ0y+KKbtHII7KY2pZG5tPHGna5yx2+jCVWKutvj7Px9hKoz9DQynBe9vcHOVemQr7SSvBDf2XSnM1OUs2i2jBZ2o/dhjaF3AJTY/RjhJy8AW//uzHEbUN0/s9kkcpQxREfZUw8zuJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0TYKQCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0TYKQCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B588AC4CEEA
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743958793;
	bh=5ZlQyr/i50WVYUoX+295oOT0lsH4EaxpcSDENPV4aWo=;
	h=To:Subject:From:Date:From;
	b=M0TYKQCkSmDiQqtaMC5OSPNZ1Ydy7hdgYNPoCfqUfbQWcMI2df9WyCDuDIccIYql2
	 w0jz8sz4UoEhYPJehlxBvA+6PMT3xUUp8YMBRs8pav+zAYNm7iQKWZ6GBwxxJ46L+v
	 pI6YS1q/uPdn3bDwKCIQI7AplUfkcGFRX6Z+2gN3AqKZ0OH5p+R1AejANfJkppstBx
	 eG3fJDBzHU3HXfFJ6jvREZAIIWyMm36wh7HyRWORsSSE7s5dDTPiO1+uKbsc9HgIhe
	 dVV2CBURy1HYJWFd+nX9fMSSNHjC08GNM6LXlUPTLT6DKpG+iBL7vRxv6cH5mcs+M+
	 2iAxI/cH0uwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A177FC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395879362.25379.4393700695795944681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8e4cbd34d904f20dc0efee5b6ef97ada015594b5f486f3c506280f2ec6284e
Date: Sun, 06 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743958793
