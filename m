Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FF52629D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757222395; cv=none; b=dd4+J/mxo6ekibbEDRaBA/xu2HQ/2oHpRYQ7ecO84EcudhWpaH0K/0Dl76ggyEn61bHmDzoKa5flU3p5p2JlLiwn1QL7R2aGud/mOkJsnN8YFYPipiv7E+v3giLFMa/2+H3gW8r2ki7wziIUsF1ilP1laZQPCPbTJ/j1ZlYd72E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757222395; c=relaxed/simple;
	bh=s1FRxhHhQzD/Mm5H3l6kzgOqaHr73I36NumpjZmptIQ=;
	h=To:Subject:From:Message-Id:Date; b=GWFVan/1uW9/MpkIyGxjzCEbZ+IvBQFsxa6liNhWsrGKd2mZa2V8uJeK3UGkBLRpNXM1ahOKT3BHXcxxzPq0N4KcU/LGmAxJHj/+23u/4kDuqSDYf5af1tNW9GMgLrC7QupESsVzAlXY7iHphTbV6K1VznIgcadkA5tkDNP0AEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM6uhuUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oM6uhuUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E8C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757222393;
	bh=s1FRxhHhQzD/Mm5H3l6kzgOqaHr73I36NumpjZmptIQ=;
	h=To:Subject:From:Date:From;
	b=oM6uhuUNxxC0R0cm4cWMT9AXRtg0QecX2Ti/nPsi5B0fZtfPzLOKuoKvhcddMwcQM
	 7udjcUQcfsrr2xBHV99ktGzdNSXzyzSlS3rkMEmWepNz8x7V2A6Zsq0EiwsSa3hM5j
	 6IH4KmDmTxj1PU727zvxHCUdYXxhY0SnB3XTdRsEQBUX+1H9hSUd10k3CqUmzNVPyp
	 j0SjZaBHapGpiIr0BTdmuu54VZ6kQqsqO6sXG0SlPdCepA2pzaWVdbA5xPT6Kibiki
	 P8qzED3KhE48pHaxN+WFVxMXL8xu3R8U1LQeeuQrTAAfFAcaOzUkyiKid8tkFLyiDf
	 WPxkAlwYWO2bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9415BCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722239357.24296.2957795405227905636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f3c7513a7395f6d9fa617dfa80acdc723d281075f1f69defbd3c7fd4c8e67f
Date: Sun, 07 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757222393
