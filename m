Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341E519415A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719445403; cv=none; b=BOy83jBEzuYesdhNxGtZp8c/NHMl8CpONHFPBXDfTmZXGTt+Z0oOZNRQkiziw9Ug1r72RBhdyLNCQ/3SY8W9eCauCgxB1/4b/zTXBpYi97nXwRX6sN8hS6gBC+iYCAxLGvyoXAZvMfnwMVo+p/yuiWIlUrCGZoQLljkJ4vghH0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719445403; c=relaxed/simple;
	bh=Xq6gOIicBvWBLzku7YQ9i2/s4IhSlchGZOJkyXf3X6Q=;
	h=To:Subject:From:Message-Id:Date; b=BtcaesBQ+kN5kSjAAry7EqqLPSCf6aTQX80cuWqYEl9Bde8/Aaq7PHmLdl0YBn+VyX0zwkyp7P/xFVTcT8ggW3PfyL811+nM3qXr4kUZANN72ivjyD580Zlz8aL41DDATyKCz1MxlyrIJhYDHK5UxT/znYj7ObaHYoXf9hwPWQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb8VCcLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb8VCcLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B277C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719445403;
	bh=Xq6gOIicBvWBLzku7YQ9i2/s4IhSlchGZOJkyXf3X6Q=;
	h=To:Subject:From:Date:From;
	b=fb8VCcLnBlW5cmcEMJUpETTgQI1OmYBSIFyKNBCKUU7Z192+oMdzGn8GA61wAv126
	 RAvs8SDszQMG0KrdRRC+JqEW7M61OtrqmWltF3pTFzgP8wo4kyczB2BWvQm4fIr4Et
	 NVZUvxMXplRGwxmxxf+4cBfcXGjRVV/1o5f5vkTxsCPJq1EAc7RriZoKLGF5qCTNDF
	 ciY0YYjwi9xr0fsAmNzL77vJoDuQnj1i8PXFoVfz0zk34hFED93hyG3la5itR+UekP
	 0LgEP1yV8LrH2jyeqlzkMXIMH4aYCBHAHE//Y4Ij4TF+3cyOu8mZ72iyHEhmm4K4Cj
	 a12OmO6tuJwIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E03D3C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944540289.17677.4722714374094453277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e8378daaab5ddf692364fb8173c3811b76f2f0a50c0c8436a30c6368bf1c57
Date: Wed, 26 Jun 2024 23:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719445402
