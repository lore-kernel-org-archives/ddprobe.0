Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7D224169F
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763380314; cv=none; b=BU1Y2jHwMaffqecZM2IMAKVakHkspdNPilMlHcqXW/FqR9iXlsEO7RxPJdcBHYnRuIZNp3Hx/CkwAd9PmtbxovB/+6jjFiaGih8neHdYCHivrYDiohRkDIDu4xKLkh24/veIIFZaaiWso1ZdRQPLwWGmejDnDcvLoHjy3GTt9jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763380314; c=relaxed/simple;
	bh=hph5tt8T6/F5WTwIqVch3me9AU0tmrgF/ehzRcYbwW8=;
	h=To:Subject:From:Message-Id:Date; b=clbkv4Z0xW6X3HvxU4/b4rSBU6X5IiTB/KW/0nzcJCUS3POV7DCDsXiyyIixnkbtrAHmy4yilyk4SITgg8Lt8DXCuAROoCZqe/WluQSryz3TzOjXznAd3dZrDvN95ulVSsS3FbtZ5i9SXw9d7MhE4Z7bCGShDpZzshTGjODC0Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnT1kyTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnT1kyTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF6CC113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763380313;
	bh=hph5tt8T6/F5WTwIqVch3me9AU0tmrgF/ehzRcYbwW8=;
	h=To:Subject:From:Date:From;
	b=AnT1kyTLBMuY0NEtyxq6S2mesoGSrpgT5U9Yr2Qr54hcfa9yhm/YxqXAF8+UdnLvC
	 JT5YT9cKytZY6w0nRNC3iaprZ4TSp0djGqTbvhTKm1M2Qb8PGgiCWX609llbKEz6qL
	 hUWRKrCw7UnFNb8UuY0jtDDxPnH71lSpJWJjjtrPnovtqkKdWvw1Xsui+sCukfRK3T
	 GOh1koMlfPngoFR410jkuHt0b8T01FHyuGGf5Qp1wZp1HilgsqRnOSvxZAffFLqmaS
	 8TbAQYRfz4L1PnejxNNyf3tPQ6L0oX2EvfnWy+HLRcRF649PnvDeY8fF/TgVKKwc52
	 Kp4wseQCAKXxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F9CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338031361.24429.9876547382045532662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495bd204b52e952b000bf0b5a690dd03e52765ece3a7960dfb36dcf89d68c868
Date: Mon, 17 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763380313
