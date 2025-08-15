Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9A814A4CC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755233994; cv=none; b=allh+4/NtwRNoh66Bm8pQ8V4w1QD/5dMPYnjSaVuKOogbitJyazPVjCBaO7QR1y3yedpLAh/63YQ5W0Pw+/6RGa4yxA+mX0fa9trZhJANAL5XUeFYLxKgGPnCCPJsHBo/GbgAM5yB3F8ZgYzT3h0/2M5S+xJDo4AdtH4jWGZtLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755233994; c=relaxed/simple;
	bh=pcbR7Y2fbwkkSILMt9l1z+r2hOD750ryZGiCX6nBtos=;
	h=To:Subject:From:Message-Id:Date; b=U31nPRqBvA7gU/L0Ug2v0QH2+teqCY6UYTLWrF5p3R3zFhiB3kpZZyulDozw5VXnANtHVWQOyB/pw4XoR1y7n+O7vdoYz66BgY5cWtjpMCxYCH9rrRo/AbKRHPVzqdBE3cZ82KyJtYWPkp157lG8E2N2LTHiU41f5eE7CQ+l2p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqDT16II; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqDT16II"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755233993;
	bh=pcbR7Y2fbwkkSILMt9l1z+r2hOD750ryZGiCX6nBtos=;
	h=To:Subject:From:Date:From;
	b=lqDT16II0N4942F1UZSWeUXkwjjkli4w+g8ff7xZu00MJo/kmWAq9CMyEOUr3HG9j
	 CvkAyDJKEyXCTdwpMb5GvTfU6bXU9YksysE50ePzK2z8f/YQbqNAVbcrRzeuG+i9SH
	 Bwn6uyBgG8quywc3zSyQo8uIkVE1StWSyt416rhJTGJHOY9Bx/dCpvSDOxq2PqgsPP
	 k6iGN27H6sF4/NnWnHSvzmlZ8AIzwMtLpp9V3s/ZhjEEtzn7zolashulIgAsAjZnOo
	 NO76AaoI03h5MA3BqCeTX9NA2FXXc5LZmNTgIJoJOKO2jEhn0mfqiIz6W79xnsNTVU
	 5mQBdxEYd0P/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B41CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523399357.3123.7036401131989069870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e916bf1344aa2776dff26cce2f7a7d3b63cfc9f68e5273190f59d1a5a8362599
Date: Fri, 15 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755233993
