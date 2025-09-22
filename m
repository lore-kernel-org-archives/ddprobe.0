Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E64818C031
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758531594; cv=none; b=IPesUFf8ujm/TmDLqrn1epn2TK0Yxq8otfUN16/H3RZxV1fjKZ6FfZzIcgR35BVENqvytx/YNt/G730sQoJvjBsEozOiZltr/A+9QsHXzLHAhgcfsa14+ihlv8Qvzl3IixFvgoT9U8gZ/uUk05mZDO8nQmoQxoTI4HVQdrA1qiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758531594; c=relaxed/simple;
	bh=KP6NEQdsFNNFY9U1l/EXGJyW+vNvVNT/fYm6dKc9Vm8=;
	h=To:Subject:From:Message-Id:Date; b=HOJK/x+Qj7VF+bUK9QbcW7/CrgZY3SDrezbcCDIuCurq7mcmu6t3JwotwLWuVZxi5SH6Ft6MwfNnewtIIkd5HleEhnRMDswCMa3G0WmlbJZR5MmfsgHTkVgSOeeU9KGHfaw9ukS+YfNm4JpXTy9TmkgTnQd4EDUTsXEGT98nl0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6qwv/b5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6qwv/b5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758531593;
	bh=KP6NEQdsFNNFY9U1l/EXGJyW+vNvVNT/fYm6dKc9Vm8=;
	h=To:Subject:From:Date:From;
	b=n6qwv/b5BTX7Ypa5cEqGx0KP8v1Uk90i2VrV5J5Tr4vygRXkIfcYFl+16ecqfKdL+
	 /qdrUIFs1FVatc0hrg5CXl29tCxO5xBm0Rg/KhqhsgSc4EHR98zE29JshADPEceZPG
	 e9SdW6rtBU7sOqxBVUfwLBiIEA+5A2DPJhCJn31WkZ3Lz/+vgArP0lCNkRaPTMmcgj
	 4HX9ItKMz+DUI+/tmWFZ+I84mIzYv0ghNj9+t9iYqU7VeGWkJCMOxuhEroAT9l4/3S
	 C4vxqxc5D6T6LgBa4Tt5zZdvNPyHyNsaDDRYs4wmKo6+ROlE5y91xsjgpCwS0XVSy1
	 xA9c9qq2BVI8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FECAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853159358.21217.2041341679376253590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b39df95529c1dfa1fb3eac45ab7d72852f8034afccb50f8aacf4dad3c154c1
Date: Mon, 22 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758531593
