Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CEAB661
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759726794; cv=none; b=Yzx822g/1ewncmZnnjM3321/2W5qR/qrcOwRlaPkGCH1GBeKjeh8xuK0KX7CFmyntSq8qN/bk902wzd7NrgcH2iwzgGffNHYrMBFC//gEr1t/rsbqXBPjJKE6vl2IGEFq7BEogQ+azZWDGO7w0/5wbX0tyD9k3CLD1xW1rSeGzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759726794; c=relaxed/simple;
	bh=KLWw4XqpiJnDCiRyIPZ/ndIplM2VHiloWyzcyaRmBIM=;
	h=To:Subject:From:Message-Id:Date; b=Sn52bstM5k0doVNdpv9SV0ayQ2I1IWQg9LIrCHu9u3GlE+3t1EBadCTunyaLTbffTUKanSJtD0mdLLqBxEU7ARfRUTTcibmSYZmilh0VlDz7JfpFHW8Nh68RllyvvjPst3twFwc2hMWjmcXWmB+56MfOyt3q/DL7SQwSUQgP1ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkV80Z8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkV80Z8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759726793;
	bh=KLWw4XqpiJnDCiRyIPZ/ndIplM2VHiloWyzcyaRmBIM=;
	h=To:Subject:From:Date:From;
	b=BkV80Z8J+eg5TL1ySbqTZaxoaFDeYGF4ShK52FQiK49puOlOZfMyO6KMe+xE5tLut
	 DGHf5Ih+73AU5E09dwMJ6wSq8b1Bc29qye6dEllnkEbq3HBsL8EmC+XbqYZ1DVhz49
	 Gj5ALrZmXVQj+OxGMG90t44Pltq19N0LALZpnJoerRu545InLK8vgLEGt6chHeHGLc
	 LCRKGsTY7NSS+Ojv0kt4Vi6GBl5DzxHQnKEBKmpErHTLSUgWnfK9FTrQ2Cl+DH38n8
	 4HUZW/BBTz3Zx59Cx1bA1S9EmErwEkSdV+pwCCgOw8J6ziSKKP5MkCaNO0GxSbULCd
	 R4GGfSh6RCxjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146CCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972679357.9194.5934100021900573886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484767925b3199cbac9a5aee276ddad183b2e64d33271450cb40b4ae4875b7f6
Date: Mon, 06 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759726793
