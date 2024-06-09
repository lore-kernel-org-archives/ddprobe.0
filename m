Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7543B1804E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717926443; cv=none; b=S70FHjYaV0tH9f6IewZuq9RjmUod7H3yRAOJNFAeVN3Vs+Fi3m9qECVmBLGV/fJAZhh2OgriGd+jAIZc0N2ISAj1oYyEVkmbW+Qc6A2dTlBuy496ykPActeO9qXLM3iS/XgMKN5TOEZB1//FW3LtsFwSFdkezcTmLoFKf0HquU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717926443; c=relaxed/simple;
	bh=WExRYSYzbPr+QqBD5q2+aNMwHaQS4UA/z8nSKXZ6o/s=;
	h=To:Subject:From:Message-Id:Date; b=Q7OXjdVFRgpdb5JNOsRbzyJ/TZDcQMbduXmFODEbG7B7TsL3dta4dPV6rmKxsanKa+fBXCp2i24haTR9MeHZ4/dgH+vuPwfh4PeMiER/e8ZYnU34tujgwGiHtfGAAM28XSQ783oDO1cI5K60LK1SR2BqsbExBRJWi+PYF0XRGG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq6112EH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq6112EH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F52C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717926442;
	bh=WExRYSYzbPr+QqBD5q2+aNMwHaQS4UA/z8nSKXZ6o/s=;
	h=To:Subject:From:Date:From;
	b=Eq6112EHMM35K3tykVJ/QDaVDBV5wgeJOxm9IjekOJq/8OMB4N4Myo2GKtQEYeqoa
	 2FgSrA401Yu1EUvVEvuk+CsksQ3JvFsDz2ChUpLLE5UUckFjAYl4XXGTHv2P5ra8kL
	 rOOCzxUiIpBT7OdhKmCteL6mcvfxj6XKI93RFiepgQVgx4xqonX8qLPDqeCUEeYOBh
	 Ph0mvH0WydtleexvzLMHrRj92SigKyXMEvuzgzs+DSkWp293VM154pEcp4x3i/YjJs
	 O78Ia9gsNss3SsXwp3KYV+T00nJYkrHWhXr52Bedlv/yZpv6PfbtVkWmkmExVr8ZJI
	 o4YvmNe58GzBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07FFC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792644280.31290.16838567269295127306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e7894a6b2da6923c18fbdf8776933e773f19145f3d7ad4b7111307961d7c20
Date: Sun, 09 Jun 2024 09:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717926442
