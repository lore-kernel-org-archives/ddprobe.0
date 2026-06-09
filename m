Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7584B23C503
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781039734; cv=none; b=aHNW6zHw/s4JiGHOtWNCBhVBQeNKgbBRj5gxNXnKzR/O7dUiZnL4zGwkH9KqZ6y18Blpk58cooj3YH+v0X+aONIFHQ+sRn7+DfBm7a++kqAfKej89OhN54XmxUFRhwEBAl9SIOa9kMc/jPlKAW16Iss0dq3yGY2KR11jYA7pZkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781039734; c=relaxed/simple;
	bh=VQ1dal3Zr4p1JTXHqVEAXO54ecTMj1cOcgk1mhpn2NA=;
	h=To:Subject:From:Message-Id:Date; b=BwCA82+hpFC+697EFwCAJ6bfnwBeCzRvo2ig3fYRdaggEJJm7uOzmPjD6t7j/IOIqFmbl2Uxg2Se40GoAxkIbdk83y+6oRSD8A9nfNkU4cJScKIEZaSPsVENPAPnkoKrPcCNSH/9tdxbMoKHngc3JetmY0E/f1IYUWdGECqjhwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcxSY/f0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcxSY/f0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F70C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781039733;
	bh=VQ1dal3Zr4p1JTXHqVEAXO54ecTMj1cOcgk1mhpn2NA=;
	h=To:Subject:From:Date:From;
	b=fcxSY/f0xwn/RL69zV7lkpbRCYWJfrj1kSGBLdbPXn3uxwzfBySPUTvMCdjooDspE
	 B7komkK+qicyX1mG0iBrl1JG4X7kmp93rswFQuRFv65qq7mTv+/TeNJHrAvDj4VWy2
	 65dOy39cx0Uy2GEj/WBjc/zqYAInJwLeSpnxR9n4Qgk827xDr3eqqrr4oeSpHg+aSe
	 pX68Qd9xTtaSQlC/5p/OGpyKUywaV9AxemqnZVboomHr5/xhFDejvctanLCE21RuwG
	 hE/EtKW+vpAdsawuAQLWp3gnCPPJMlSbPhj96c6BpeCO9JdZwCOL1V9C++mY2tNjrw
	 duLiRr1zT7Lwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3666CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103973371.24068.12365885478687867658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d817590aeb85daefac81edf7cac696bc6d688a8b8e51fd903902afa95fbc69
Date: Tue, 09 Jun 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781039733
