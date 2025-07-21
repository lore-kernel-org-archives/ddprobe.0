Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7D42459DD
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753140594; cv=none; b=NNEcj/sA2ybBpMkryebxhHHb64BR19KOYi7WKFxc3GgYnvDRy2yoE98S2TpSMFmGeXb78q8QbT75o94LcYFPCelEaB3MxwAZPNf4Jdf6oqTjNYD7eiKa1Se4aWIfW/6yZbRmS/ZlExIi4dq2HY9vUAhAPBvbibUNfVAOfLMPULg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753140594; c=relaxed/simple;
	bh=7NdOH1GIBoi/pJPS572Y/ZcjXij4BuIwOXK60jMbXS0=;
	h=To:Subject:From:Message-Id:Date; b=XOkDderI5mqfqdH2nY4CdOraGoz9IozqbxBpo1z7Cg7W2mW2JCGTonmtifi3E2slstHiBlU0e2b1vRIGZ5ESiqBKV55UR2xiwQ0SCjt9GEFwFP8OJBbcu7tO+1nKx9/5Im1JCN0RjvEX3bNG6yGhZ2F68yr87ZNLSBWj2u4YR3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/4+W0X1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/4+W0X1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFFAC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753140593;
	bh=7NdOH1GIBoi/pJPS572Y/ZcjXij4BuIwOXK60jMbXS0=;
	h=To:Subject:From:Date:From;
	b=L/4+W0X18v0GWe4agvvQB5CRkn0nbGWhh966GsJ0aX0BMdsq98Yj0peOGbJua19TP
	 aDczaPdtDExDfFBH1Jp09gVu8r9DhPreAJgaIPKdhmZjWoHLbSlZS2+rcnApS1c2xJ
	 NXXJezuRrQbRpITklM1pBb9PSQcYkCz74Ek97WF3KhdhJaURsNMOJhLiooQw7TE0ds
	 AW8t/8QZfEcXItqXUzk9iU+FD3IpdlqxFBp0iAxtIH1lp/V82Loh6++5Vs2WW0+ivL
	 KMtu0S4fV6iFALiKjDatZ3wtUqcOSsnnbYlgjZ5NKsmv2DpjrF9mdfwy5cdO0295pq
	 Tj8gP+8ddYRSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F411C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314059357.22030.2927844110099293797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433f54fbdcbabc07c0055138a3f75e8dfbcdd166cf7efb48d0d1306646772fa9
Date: Mon, 21 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753140593
