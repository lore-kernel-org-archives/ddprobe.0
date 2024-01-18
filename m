Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F4C4418
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705543698; cv=none; b=ehfQnlovSGU1EsUqjGxvldioT5cuD3WsMTVZ71H4oGuZuiCs0r5mye/wahsU/bzpMdP3+JjFs6hdCb0SDDRu9nOdc8NOyhb2jmNVYj9z8qPWZrD/eK+RmBsswunON2hBJc86ZQyltiN08IWQF8aAdAgo8Qu+8u6utOTucYpp6nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705543698; c=relaxed/simple;
	bh=t231EWYLPISNWZRDoWjhk51yLFcvdm2aEXgh8oK/1zI=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=edi0Pf17WRZmjFyFZhH3Y1dVvoIbef6a68wLoLeZN0s7GnwdUiwpqH5y7Q5+tvTi7/TQ2cPv8VSF0pWsa9twdHj2VfUQ+hfOwL9+AlCm5lw3v5CMffiIScmKPoEZzsejvXwelipf2/am9Eh3g1rqKodOlImZNk2QpXC3tDWC3zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE6UGxd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE6UGxd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7654CC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705543696;
	bh=t231EWYLPISNWZRDoWjhk51yLFcvdm2aEXgh8oK/1zI=;
	h=To:Subject:From:Date:From;
	b=AE6UGxd7cInZBUP/G0zgb04Pyy3MACmkP+PoAcxn2HseSZvF1i446WqorZpnl6q7G
	 KcNfseFPlD+5AT6mpcnKTXLiW7DDEGct0rl1qPuGSP0vPqN4V3EMDDujWzwanHZBJc
	 rZL+iVjeV7/Dl1BCHVvFP9/r3Z72sJOhOe+08Gh8TVohd6gaNmP0XLL9jIaoY2/xR+
	 Z1oHTKq1DgYZiMiHY34R2qQPOPzVtblYfg9CYnM1HYVHHUGk732v+xbLegqE+hwZKo
	 oNhUWR2ZtpgL5ftde/ch92nEwKk6wItEk2TqffN52Sv8AFSl1/aa6mEfnXXE7NRiZw
	 8TEv7vmwb+ekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCE3C47258
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170554369636.21347.9327336099023797809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4092bf9c8c4a800e5fbc95fecb32c42d7284a4cf262e768a0ca3e82ba7bce705
Date: Thu, 18 Jan 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705543696
