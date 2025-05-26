Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399A91F8BC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748266195; cv=none; b=n8J56+sWEIin2PMyoDUELzagFcgSGzsuymnxcM1vsl8bND+Z+cNBm3IwZH3dDFa9zjKdt0NBBj9pBXbxUz7eAmSOBjus+fSStBPKicV1FUTMNJ9YyL7krpDVVjerK638j4V/kK3Ry/1oW85wLspf1i7Mfq8rYNiwgHDgaA5V3ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748266195; c=relaxed/simple;
	bh=TBtWlHCdLgfAph0V2+t5ymSexu3nNNgogiqjIPps968=;
	h=To:Subject:From:Message-Id:Date; b=nQCgzXWW4CCQx+901Q53911QqkjTYXYeUoPN/HJpbtfMmvVzs3L/pZKKBiSGgEocBxkyGtFBdO710MH26XupzAvamK2bwI2m/DJxzQLXYDCOI2vOWBUYuQ7CVnijivWcuVxQrcZqe5G2OsXE4QkhONhZBGLEP7AuD9fuobB4fQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSf79pQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSf79pQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCABC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748266193;
	bh=TBtWlHCdLgfAph0V2+t5ymSexu3nNNgogiqjIPps968=;
	h=To:Subject:From:Date:From;
	b=qSf79pQhQIrG60jvWY4o1FAMYzEGikSFxM5TE8yvCmfV90QH9mcN5PIvAlG8M/ah8
	 +U1e+DM2fvmyLZMQMJPRgEvXXxYwQ4mbF6/hGcz9m9cbI5aUEDWmXhqWoaWZgx2sUH
	 NRwLfZkdT77B7t9w+bTtXbxYOpdOvLK9yvTCdmve0m0ZwhnSvepRzM+kXPoChlZmTh
	 9+GPgHbIm2ZC62KusZo4Lrp20yZzAqxLZBU7zdl4/56q3jxev3E8Cnj2+H5vsOjEV2
	 XqY6l3iHbgXmcS0jP3Qgx3mA3rNwLJRu5almMTZILOWtlM63rKCUxtSgZN3kep24oB
	 hbNRq14RxXG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5ECC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826619357.20378.15546181800454337914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794aa1267fb3ba8466df5c019c8c6770244455d3e3e8fe11d55e8533692c58fe
Date: Mon, 26 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748266193
