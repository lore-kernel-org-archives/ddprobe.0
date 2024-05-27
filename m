Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6852F22615
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716794663; cv=none; b=g3g4d8o1KvgOYGGhxLoHxKo9N4YCx4NLPq5Yyq851Kz3R3zjxIzGtN4IR2qNZ5Sdnbq9f6MFSjcvZGrJY60SA6WH4187yGLquRPBqkZNUYSa8nExB17QSZPEYqWurrfk3Eh3IYhgoqD5Gmt9UQtHy2lsXiPdpFqQ14Oyt46E+mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716794663; c=relaxed/simple;
	bh=lIdvILYN4EQRQbjCLAQKqGklHjnKpfn18wsrOxZ5ZSU=;
	h=To:Subject:From:Message-Id:Date; b=qaU2KP2OXxNHSuYvT9sTYykYL3rbsK+n648Cbchvbys1CWvPzmVSWacf3AbBvdJu880uCBczss34VLkB6zf15slUUd1Kkt+sts33ANPG2hCPzAx719CQLyuzs9a4qlnZFAqDXDf9OolW8pCs/cjkJi43gV1RMYjmTwwcl3Dzk9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM9AK93e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM9AK93e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC203C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716794662;
	bh=lIdvILYN4EQRQbjCLAQKqGklHjnKpfn18wsrOxZ5ZSU=;
	h=To:Subject:From:Date:From;
	b=JM9AK93eiyxUgwHwWfJpo02JeW2MYEpLuJP7rpk+tuojrChHxPOyWq/jItO0EbLBp
	 c7xNmZymscsoz96MTE51RXI3XfDJD+evxr70pRErdIgkFP+k2M0QuYMxml3CBENYpZ
	 pvNvPxgyEQEJP1wt/rX9HiVly8MnbSrhxLBAbzhB/m5x+EnQcKVFy1Rgx3LYUp2Nna
	 maQlzHXQHd9rXiFIgQBK53le8NLa6vFokKquW2gsuE9mAIoNmqo0TW2Kwl6mXCrfDN
	 h/cpHcBN3Y09i7BaC/lRJ0psreyWY2lngenU9UNxEMO1Sggeq/73UPxSDJMf/aJAVu
	 rlYPRF1DznRXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6465C25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679466280.32110.115495777617096952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10861882b7c6d0e08e4d2121318f01dadf2034b1470ef26640de79c400c40ba
Date: Mon, 27 May 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716794662
