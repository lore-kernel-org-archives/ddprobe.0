Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C99257AF0
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753703994; cv=none; b=Rg/FaFilmfspaFcSMgE2l9nNxu8ei3zNcbVDrwUTz9kCj/i2AosNYpM1/35ex6jthzjGq5lsoLM3MbxG60I5cVWHVjAMUvumI9tnoc1yXf5po9KyEpx5jFzrJSdEXTR9lFgJw6/o/3s44YNNXeHCN5oINxtbonzm54C2sj3l+CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753703994; c=relaxed/simple;
	bh=1TCcOZwiAM8C00ADqTGTso7GCUKVokazf1KIAknB+Tc=;
	h=To:Subject:From:Message-Id:Date; b=QcinJodet8//0CaijPeG4XBQTPeMY1/E8YQ2NasH0magz6slKbia21lthMkFbDx2jx6uJ07ScBjaw4u6BOjJveX2t5+YJN364cTryH1+bxkmXBhWj1tOenhXOA6m1NVIqBga0M+ReBgq8I7x1R8/WgRPNZwKThrvkD9J94dg5rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfjS+TwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfjS+TwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B7C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753703993;
	bh=1TCcOZwiAM8C00ADqTGTso7GCUKVokazf1KIAknB+Tc=;
	h=To:Subject:From:Date:From;
	b=AfjS+TwEus8G6g2H4T2pccl2z6NdoH1O9KkpPMYufpV3xlPL2hcO1JapXE8/gUj8r
	 ie5DJLYu8hugZZ47ddF1ZKCZ5kBdVIERllpcQr2zWYxNPkF528XiS8qzYQJWJsfyfY
	 3TE5TMlf1xeyTsEeZ9iATJyQRTLNIZ+Wh3iSDKjjkbdnhrip4tYo6eO1ZakxbZQtpZ
	 czZhtHMSdUZdy1b6koEhYON7Qzn4773yuoDaOtgkwioNV/YQdKtJcbz9zZgVFhbsdz
	 0fRIof93Cd5G2tqvQieCTANwZctlOff/SPvagYSwIbTLEr5c+AOQ+8P6hgC9OYoOKP
	 s/0o7qvEx33Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB7C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370399358.30740.969635644459545577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512a8464d450e62298be440c42a8713a3e94e5dd9cbcb5287f730b9268912dfd
Date: Mon, 28 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753703993
