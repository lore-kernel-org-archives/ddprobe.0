Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2611113AA2F
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765722174; cv=none; b=bKaHF5565nUI4XBET9458d9ukqKBYQnbE+27gsPGquCePws02Dyx4wRdevzK2mlA9Bi0yEQQkuLCsIe+P7zl3sgJTOJeNm9OEYNlHHkV8EwMI/Rnu/yDROK5wd1GYt3bNy7YXe/YnLMen5Ln6QN1+fTd2Ye4Mtz70Zn7RhFY36c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765722174; c=relaxed/simple;
	bh=Wmu9GZbSzCdJdmh2Pyet52Cc+ykITdnp/Oy3dBhpwGw=;
	h=To:Subject:From:Message-Id:Date; b=f5XzoM7BYGDvxPllocElEmL/kDy8gq72QPz9gdatr3VGsdATJ3YUZfgDFhtAMpJGvv8nEAOsl+3nX/2fgGaEjJKHpnaIH5dHlluVV23F47W6fSWof2qjktcLVucSG1A9pg2o0ICP9OZ9ggefUEA5ij0S3Vp/X8J+Lxa2gFqMd4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1KLXpPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1KLXpPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2495C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765722173;
	bh=Wmu9GZbSzCdJdmh2Pyet52Cc+ykITdnp/Oy3dBhpwGw=;
	h=To:Subject:From:Date:From;
	b=c1KLXpPDYcyhwuVlulGSYOBJsYO9JhL62t8OHveTHlVk0RzjS9RGcAAG8CCos25rv
	 FlpZnqITivkDQ1RpeoCFcpu/fvLgE0OoGi+8UI4BhYTdDczD2G1Ck7mtQoH7SpOzrA
	 /7XQj1hdRl/4tIDccKPoZKsvK6dzsd119zGqbs3thsOBAmqxR7eNvg4SzsadxZXvx0
	 UhX2uQ1w65/Pa9inWe3oNUg84IjHIQRIUljS8OtKd6LNMida0r1qwxdnCUASuOn7IW
	 4SiAlc66dpyk71wNwHwAIf3auYh+IPlV1BJISh5rXN7kFaP2hYDL9lNxK+wHDvmyx/
	 xQlq1XghvxxIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4ED5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572217358.1209.14092242309456619671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf9352bc22ce0551a8fcb531d2eb348410b9e34dfa5f401673b41e7f8e1c3d3
Date: Sun, 14 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765722173
