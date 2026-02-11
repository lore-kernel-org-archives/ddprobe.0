Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DC43195EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770833694; cv=none; b=DL9ZzOIGGdqA0oV2H9wMcYrUGMnsrOX7dDQM92WQU+L6xJiVRkgrA9AINjDjcblrIT/XoABZEhaETBCqaAMYm0rtNaxOdOQiPGO5aWZMC5DAO28QbVHJEOPDJBrI2X4PQWLym52CA1pV2zKDmVawCcdj6r+9m9v8IKDku8nuo+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770833694; c=relaxed/simple;
	bh=aZbcPhQH3bjUtZRmHv9uH5zicfqHSxC3u7qvMYETJKE=;
	h=To:Subject:From:Message-Id:Date; b=eW9BV9vWHfbu3OEs4/snpsUixNLP46+ktBU/zqBNq/jHb6Wr5o2ZNO1R2ScaluoZfz+9ZKrQHD1YZgOQQXuNGmB5owSs8FVZRBzg2fX8cRse23HC0C0DpHD/PIyquWMVt9nZdq7aMwJIWLaIYBsnDbSWplSo09Jmrcff0zWBYL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ptf+jVN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ptf+jVN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DB5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770833693;
	bh=aZbcPhQH3bjUtZRmHv9uH5zicfqHSxC3u7qvMYETJKE=;
	h=To:Subject:From:Date:From;
	b=Ptf+jVN+K2fizPU+xjI1A6bGabUMkM6djRglq+jacqkw+bYbHGiUr9Ujwo9FA2mJL
	 LL04yy59rQiF5BDBFVC+Ybp/SUPEJNr3v2a/UjWG4GxiD4wvH35JCpBIaBGtbhhjdp
	 vN0oYWw/iKF4U+rruVtp+/wqbeEeVeWIfR6tGnHgaDonApVyCZz6F6krZXn+V8kAG9
	 vIYR0OKK7UdXPcSsIdgqBkhOuzs67Ghwj7II7lpgX35nG6QDV9viVrn4MS5hHnxH1e
	 sEwyXL1szgXy7396rH0Mvn1pBVIfcCa8TQjX5mhwAn1JOAO0esdifcYKHIKd73nCe/
	 qG6bY8SEqNz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB8AECD6D3
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083369361.22136.13677282328276254213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8d7bf40fec9adfc6d9376e7ee06a5d65d1a439100a639743deba0094cca0ea
Date: Wed, 11 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770833693
