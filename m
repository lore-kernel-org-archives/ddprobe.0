Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494C5149C6F
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779689554; cv=none; b=br09RfYTXPUm/FCthto4nxIxenXEhNYhTXGzFlpYaqkkHWtQpzqImzapwGHK/namiOxqiCTAq+d0ab0qp98hELz0aWoKcCwkueLdthQrC+jU2rLvR5tqcw5nrd/qhLRh7QG6CfkL8UXcZT/Ak/ab/ZOS5Vkz1X9S7d8Qk07bYgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779689554; c=relaxed/simple;
	bh=JmGbADYxu5LsijqqiDU6BLTxKesH5uSQ5mFdr7xxDAg=;
	h=To:Subject:From:Message-Id:Date; b=oxOmCYMXEofgKBNHN6uxfS7GYE3hj5TEgsqqoc36gczDk1AmG/XDVK7nQifXknHXFPjx1p9GCLb0bo8nreSVIy4FCYIqDDEWK6DKCtlxRf9pHIFp09BTgNbIP9c5gx7l8Jwg3nknapXohH1OlPzWqpbidn8r2I5IwFmtN8h4Cgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgg6dfIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgg6dfIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50FFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779689553;
	bh=JmGbADYxu5LsijqqiDU6BLTxKesH5uSQ5mFdr7xxDAg=;
	h=To:Subject:From:Date:From;
	b=bgg6dfISCzocLlt1/bto7rXa2+G+vrBftIvOSTidFuWn0kjkcgcvMThSexcR5hlrR
	 46+65bKRZJjdvuG5E/OSbjn73xO92Lf4eFqJbM/qhOJ4xyBDdjpBUnEqoEu2lwuvqm
	 44I/ytQu65oP1Yv6V5sXE/t+pDHAMWOoAIj5eKMZp/ocSimvKRVI5uNakQ2ORfcoeZ
	 MB6FCQMGYtTlKMPVAtYxzLy0XgZ12Z6uhM5lSG2xODjMOG0D08zcfCRulAwcPS9O1R
	 2IJscX1Lt0zus3e4Guy868J0BLk7rS2sLbIA0VVVik09dS2pPqZwibSVuyR5X/WS5H
	 VJt4qDfDd3z2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99A4CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968955374.27531.2579879376417256192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3663ebc668e6cf3da45a029a078200bda9d566cc97703f3f7106caf653366620
Date: Mon, 25 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779689553
