Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D6921FF57
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751092194; cv=none; b=c4nAgTrqttHXOPqJkZ7iqfcDxWmAQRiSifXJrkUwTifx/msiiN/MFJbzHQnMpVCEshR9GnekQvn19aqm9KiKbGF915YMDZEAEBFPFEWnAX4sx4MuNYWTdPai8ZzZP7umZe0TmoiSKv/G48OECzrwrcA9FTTQfDn9u1jTk7JVsYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751092194; c=relaxed/simple;
	bh=EDbfqo63kXhz6EnoO/o5AuYfmEvRrRNvf1YtZUwvPdI=;
	h=To:Subject:From:Message-Id:Date; b=D2OvH5SNiT+Q2784kuaHFoJBNNTTHC8b2vxeiO9qBDsespoGmpuyyE8+c+rzYa/Jn8JTnfDTdhUnl6BW0/GlJORbhBDf2HmPzmm1MBbio69ozkdDi7HAfyVM7Hp8hgmtRLkm5MChz7H0DMb9CmVYtdnZ3sxeDUwftILRK80SDPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF/QOk4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF/QOk4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39ACC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751092193;
	bh=EDbfqo63kXhz6EnoO/o5AuYfmEvRrRNvf1YtZUwvPdI=;
	h=To:Subject:From:Date:From;
	b=iF/QOk4rUBOHiXvju7/pg5pHDrgCoZ6OP3YlFOMHXgFsfVgfgqblMrkW+KpQhoIjH
	 h8C5n0yit3q9eNBiPClw8cJGRP6aeSmtWLCvHC7GsbeLIm2LmGMF0NsHl9WQOEnARG
	 X5nGxlIudGBv9w+fh8NMMd9fECB2RcNgnFx6aIXsfqEfuKWPayNi5tw5EbOojofmip
	 WKLEzDhfbSBMr2Kwfcc0zFvZqA6+Kl8xDkgaCgp/i9jvaGV8pr5M8e5Rfu95HZmzCZ
	 zt1NOokLgEVJi+c286ReMjxmw1gYAv0xiseAIvC5xAR/O5eYngL67NdXDkk70YtMZI
	 x5B8rOdp8O1/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4DCC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109219362.5396.1913495060053638039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60659d9282088b912faa6e71880a217a57695d486a0738d3fc94a6988d0eea7
Date: Sat, 28 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751092193
