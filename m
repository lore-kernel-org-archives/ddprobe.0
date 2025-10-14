Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C6F2F7457
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437194; cv=none; b=CWDDFPEsKnkhxPxLWRaE3g2eHdcK0CJ8u+K68QhRUyGBHMrn1okRMJ8J53PgHke9Jnad/WP5O8SVFx2GLyKexcroJLOA8f/4Me39ion4pg57bnOerrB8VD8ByqBk6lmgrKLRf8oJKfUyfgSo7Zd7kx5nWeF1F+N3CTZnw7tUMBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437194; c=relaxed/simple;
	bh=HFgYmw93R+fzwfhOy0WMtc2pV2D6XTKlzwSBikq/44A=;
	h=To:Subject:From:Message-Id:Date; b=kbm1wKajL5nFNnpLoBsa8coxV1sp/FWgDY7yaKRuOLrp1E+5cFymP7LdsL4tcNV5MfK4UMYCDXOCqkjj13fLYdkJ4YLCl7ec/vfAqxg0JAx3wRHfiwZTzJjlePHz1cjV/aYjWI1VLpbUpZUReCTt9nXEXobvDiLbj8cSkfIwbMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYTRtxvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYTRtxvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF25C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760437193;
	bh=HFgYmw93R+fzwfhOy0WMtc2pV2D6XTKlzwSBikq/44A=;
	h=To:Subject:From:Date:From;
	b=TYTRtxvm0f9Lr/mvLNFFdDSSKHbTnDCgVxnXNaJJY4aN9+818eec/H64cfUKMnNB6
	 KfA+40A9sulqa6LUY4S7xGEq74hYW7jXlB602DxRGZQvL6KwpJRu70ZCRZxixpGKvo
	 snWsYeqjL7F7x8v464sy3GDbcGz8YIDfOPooahywfmDcGSJf9IMm9G5svZ/e21twk9
	 cNJAO2HSvnKQ9Qm8APnuoTIbsubrvTwsrvoTxZB3mHwgCuXChiQHvKgoTe16CuuYyh
	 9/PXC1WhCQRhHZ5ek+QEr9vH8AHI2ODMGFVGUMaFkJx3WmGXeNwpB8h7jCf/w1oJaD
	 S71u8mk65Y62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FBCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043719357.6860.17134731250161980777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36913ddca2001b300149e1f93bde2f6746df046fc33b33a9e2da88a65e84ecd
Date: Tue, 14 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760437193
