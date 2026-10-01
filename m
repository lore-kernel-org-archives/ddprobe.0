Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443BC435514
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790887235; cv=none; b=dNKVkd36+bWs59GBB+8GhcY+jg07hnSjWM7gBGFHddSlSm0svKMuyNm3Izv1cVCXgaeOVXbxxdXpaHJ694B4H7eEIvUzTVsLFYci6nPFne4cMMyViF8/AAC32CVSgrxLRw0lwmCC8f+XV+sjTc62uO7b5pzdh8x4WQu2fl5wOuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790887235; c=relaxed/simple;
	bh=gMib4+VgmDOE3gEnBssSrlH4chHFyiJQqenHeoliaxY=;
	h=To:Subject:From:Message-Id:Date; b=sPHdBLsPWAq4j8eBUDrNKixZ/kFb+c2bf2rcoRIWfGIFrgNgn908S4wqx8DOk9T5jfBEjJo2Gg4BEqSF4AZraYA4WDc1spymPTOOkx0Hy9kdL6oEBKYJSCsduetmJre23L1Vw9178dfScqF7ep5YsqQ2QIu+J2zuUmP/ttP+FwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOmDZgNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOmDZgNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72BAC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790887233;
	bh=gMib4+VgmDOE3gEnBssSrlH4chHFyiJQqenHeoliaxY=;
	h=To:Subject:From:Date:From;
	b=BOmDZgNcrxOFIJpUBgelnLgCafxx6SfeMU+P+i2TlJhtIE+GCwSBTlY/ZAvZLjbDe
	 VbUuHLJFPJeWuJLxuD35sZaSmvj4w+jMc4eGmYHunhE2c0lO7YxNQ7VhigTmFO8wH0
	 JB5kPg6J3LdqDz4ei3prvIPXzTwTzqcGnmEpkqaOas8WP0mvRvpkYvC1fDFQX1QWv7
	 oxQ4m4peZR92xicqu16pC3vDv6tURX86nT1Pf0Pn1/ExAy6cQq1mx5lQrpB4XI9Ymz
	 0d0bWBQbHtWnzr7+XDFngOLlRfU/1HZZxpRuf7Rs+mB9W+RWG5t5KXFUarOSkZAVIn
	 NOMdvUT6myMlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36ABCA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088723372.10520.4087958751730776998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49938fa172baa459b9105ae246129c31741c0d5c3856c3e961d96219876e928
Date: Thu, 01 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790887233
