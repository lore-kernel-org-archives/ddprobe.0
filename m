Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AB323A993
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746811194; cv=none; b=HuI90pQ2N8mvKHLvwphKMURArtVHCyyyHBJwIlXSftxzhPN+tx1LiucULPok/rKxkIr8r64m6CkXTZ/pu1ypFDlVN5wwJRSYV6mHgTpDiFmU1Vt+hateWsoV1VfdUQ9fMi2FU7fS0dqGK+c4m7BYoMpuIo0MZb+Qwe4L1zBytYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746811194; c=relaxed/simple;
	bh=IYmV3mWiVH7ZJAQQAHl6l84n5Of9GoJMEBputti/zJw=;
	h=To:Subject:From:Message-Id:Date; b=P3mUlrC/WPkpzhPj8AyRzTHHzXjrSl3rfx+BokzQGtIpscHUXNIPi1g6DozNR3MI7ZL41/avjwXmYJivN/08cTl+ok3EONKvNZlF8Iqyi0zMXy1kbX1kLkVuukI9hGqR0PNoghPHvlN3ie/TTeDeFF238MgkGxKaZS/3QkhR/NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGfLDQR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGfLDQR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746811193;
	bh=IYmV3mWiVH7ZJAQQAHl6l84n5Of9GoJMEBputti/zJw=;
	h=To:Subject:From:Date:From;
	b=VGfLDQR+3IyNMZAgEKpOPAtmFn+BjK6mf1RJvSSG+wPcrLvQPgYfuwpc4nuOSF/Re
	 ndYg1WGzZwsQ4IqGPVaC002YedTOrngYRNqed5quddfn3pGL8HZHox4iT0xxMA5WdT
	 8QTeyLdptP/14jXOIQlhZILyaVf+bc8N7bp93eIkWRH0et8iHQcrIY9qIGYHj9zKTJ
	 YKqqz2+tlNFmyT8yuGvI3LBFg61ea958LJJuFNMX6D5A64UjsqUiHnHAjUgd5VECXB
	 MsP/5pi3nP45MOfG/LWRJ1MRyarfnHE68ubk8ZSsCx5jJsxO3Lofrx0sl5idBoEQsZ
	 /1cQnFruy6EUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD3C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681119358.22481.7848198386157157408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efe5a4e194bfc35badc3a0cf1119d1a1bdac6a93fbda267ae5f33460f3d4db4
Date: Fri, 09 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746811193
