Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556A433A6
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732610154; cv=none; b=sENDsBXMFoEPhOxH48YFoBBuuYbSdqjoUWh+TKtOsZRsUfFXin6icaZn5rd4TRWwiaNrKmbbPaZezRpjkGt1PRWcTVUTlfErIzZzZpK0YBrCRNUkAAX/Utaw5zcVLpVrx/MOnOzPca8gtIr2++oWej/JR6HFBTn8A5FeWFZMxs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732610154; c=relaxed/simple;
	bh=zh/z61zwvtoX1fzjIFl+cxbHRQt83ByodqI8QnUpKJw=;
	h=To:Subject:From:Message-Id:Date; b=R+qqBCNhNA+t7nFHguZlhS0Z0iy4vIQYn00v1cIWv5X/Q3CsmrYtG2MfPG4YlpM7mGZnnSEPFBK2prcZjNjHgqqxwETLVq+mmFAgGnSTyI23SL4h7w3jB+l/EfjxzJ84d+AjAFWm9NNtOyC9FOvo1dufQaqm6MJbkUZdtbE2r4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mtr7t0fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mtr7t0fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97D3C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732610153;
	bh=zh/z61zwvtoX1fzjIFl+cxbHRQt83ByodqI8QnUpKJw=;
	h=To:Subject:From:Date:From;
	b=Mtr7t0fgwAmwsNZ5ibvmKw/0Lmeo6OoXZImjDo+6lJ5DEZa1KxM4Yopfv+zomva4C
	 QC3D5QKEOBpp6RJHydfbR+vQEx/Tl0+mWKRpEqjEuvKVGhH68ueXHD/KhUbzYfJKgS
	 7jH057rs3jVhaRZKhbDSARrXow8yG0NZK0s1h8kkm1jYLdSNa2qlUPJrrt2jgNXWs0
	 iGsRBw7+nxShLtDCsNxn45qtu9w9Oj/9lCZSpX28f5Xp1Mo/7iWcjKg3Kl5Ryxixcc
	 pIng8UCwdoNMFVGH6NRwlDSE0y1e8bNfwVUseuphQuU/vG/+XwxH4ayccKX2Av9SjL
	 obU5KTzmQGOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95972D5A6FE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261015360.21911.4727960883473313923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459b4afe2ced00e25ca0bf76021e9573b8ab1b88df0792ba338e27a991fbdac0
Date: Tue, 26 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732610153
