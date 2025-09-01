Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FF1134AC
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756691394; cv=none; b=BUoddaWoeQkvSTE8XXA6J0x4JHo/yVRQagdJrohOVOQrxSGiDOfToq+mwsTyuGarKrFW/F6/jSbmA1T17kFkPn1sJjr5oxh9oeijyO+K4lJq7j+o5JglGBhlREmfEFTEG0MmMRL9Nf/VeYIwhyLzP5u+EYWoiDwPLeUl/37tiAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756691394; c=relaxed/simple;
	bh=j/aTDz/HETnEsAyg1UUJ/IY5LPYMCITKxwqPuvdS184=;
	h=To:Subject:From:Message-Id:Date; b=HgwwSd4v3h5f+bFRGtFkWlz89gMI/N/urgu3ih9R8kpteEwp/vz1KM+1paficJoOP3OVLpxuzBGKXtH12Ex6Vivi12x5cYmmiiDCfhalXgT9m3a0Ux3A/0p0dDJJte6EHf6MrtmxNnlZRycuZDEgMaU2zucce46UxXB10IWmVgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqKXxXPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqKXxXPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5DC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756691393;
	bh=j/aTDz/HETnEsAyg1UUJ/IY5LPYMCITKxwqPuvdS184=;
	h=To:Subject:From:Date:From;
	b=oqKXxXPyu5yJsAIqy9u7NNcQBwSRxqOsEXw7ZZ/wIktwHeeQ/kUUkiFfwdMdDTkPv
	 dCEOud88dxltRUTjkfshI2FPQ+D3o97j2i3W2aM00E2q4zOEGhmtQb0u4WM1mpMW+1
	 rVSsEQoJj0ot3jcONeSQKKj3iZO1duetbZYaWPGbpA2MknGGbPYmCFEodoNb93axM2
	 VMwNm3bFD+4bU/SvBq256wJpMhQws3gi+GsIVeah6NnI6mLbp/H17VvENQJ/RTTPdT
	 7VbEBEcgHtw3sEn2aNtEeKZxrAK3w43I4OQnTuUvvme1qbOE5dcJCrWXw89F/0IcRj
	 ntpFpq+sOPa7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C5CA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669139357.8246.7100988991753659007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d265e37d5ab6c933e35ad894520222d734bc4a226274a0d95e9928892fb21c5d
Date: Mon, 01 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756691393
