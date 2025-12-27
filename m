Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453851E511
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766804034; cv=none; b=fG3cZ1tzHNqiT0U8BlCnNVsQoPK8zA1MymwN9qglkJTtaZS0WY4fxgGOK6TxwyqaAPgCe6WXSWaHQ2sZN5ih07ABl1hpY7QFrTBcozOn/TsiqwlVIz8EmI2xFcjYRLyWCs3EA1z4boNgxVt0+5qdAMw2kF6+N91turayExBOYIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766804034; c=relaxed/simple;
	bh=jkDgAjrphgH64uNs79wv2pt2AzAv28a2B55d8PINw6M=;
	h=To:Subject:From:Message-Id:Date; b=nEIDQLjBdp5+KRzNW3xCW4f9/ojeNBBddLg0aWRa2T6zLe2xuyFOBbEYS15KlkQR/R6uVToRydDYPQ7NowevgcGvenKAF0cxCjmiD40F9Yh/jG9rDd4U5fBpQVAs2MKx1VpgoI/ahUHEZbj799fBlyhL22XNl/QBI45iam5xqJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyHpCvRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyHpCvRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED82C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766804033;
	bh=jkDgAjrphgH64uNs79wv2pt2AzAv28a2B55d8PINw6M=;
	h=To:Subject:From:Date:From;
	b=YyHpCvRzYVsxbILOoB1sWQ/NqBqkNiMV2oD3f/l8WwmS9EEFoGbrgvEw969GaV100
	 b1qdjHbPMr2znM0G2XRN6Qewe85+ZqlnKXoU/odGee+1uo3FqvMQj+Iz6CNth4mTEX
	 azqoY3gqo2V9LcDWYoo+GYP3laAm9Mh3WttiFT1tUnB4TlNMkGBDV8h+wv9FMgM6bZ
	 GOvmJLnhnxXI0jQbomFyH+KdmBEgMo8W+SvTWK0WyKG0ZkFRPYPjhH0yQr40ChvK8o
	 cVr7JO1NAHvPT6+52ONl0ygHe8dBGHWZHws7wAkVKE6zqAUcX/iSIZR7j+a0MlFT3N
	 bFF4dejSTkIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6DE8FDBE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680403360.20754.1895342470439901584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5bcee9dc552a48b94c54bed89d1b64137012757201b9d951e18a200f918fe1
Date: Sat, 27 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766804033
