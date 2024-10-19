Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEBBA59
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729365354; cv=none; b=k9zgKLnHUZELBlIh2HMslc5Bg/MyGPUMreEfgiRybWJkpvYAEh41cXdpb8554aAOwX65npRPm4g0Lp7CRFKB1/vKZoAscG1MjftoH1nyrEz9tcyg/c3niGzpNNb4+Vo5+I1GBvfIUg4DNWjVl2jdONTUwEQW3EePikSDPupVjPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729365354; c=relaxed/simple;
	bh=CXGx6LNWxYJ0uiuoQXrzkGTmvQv2GjcBnmlQn23QP+0=;
	h=To:Subject:From:Message-Id:Date; b=TRYuDvWCAzS0MoT7LmG8TwmSRSmYJB3eBH1Bcof/AX8TcN1ZTWSWfy4dIPhda9VZ819EeQp6TJcLHTFGwA4TF9Qfa7fiNkhpCdyVyCQEaQ8W4cUxHsJxjt1h4oPxSf9bYtpAWbtx0PGTz699lRGp3/G8VRgryvxP7oEX739N4uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6SnVxbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6SnVxbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23F1C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729365353;
	bh=CXGx6LNWxYJ0uiuoQXrzkGTmvQv2GjcBnmlQn23QP+0=;
	h=To:Subject:From:Date:From;
	b=s6SnVxbg08ZoloQ9bXah8YxY6TtgUwcj6apSu1hHHR1yZ4egasJmFs6Yx/P+RfXFM
	 joCj9yhw5ZDK6GPv9y14wcCn6f9V0fdsCFQC/Zdo8EubBdKs4c+p2SgSxt6Pa75jFA
	 +54oWPoWCDBI3H9C071POHNmL/ruE3VO/7xhl2o8J4UAeeTsgZU39i0x2sCoUzRKLp
	 YPpV6iO4W4pQ1wvEk96zNcKxlmElbJPZvChmUNukVcdJi4wVmrf/XiaVi8KbyTuL9z
	 ZWL4Snt351xXz6LZl6wOEdRYqVNn9bGSeJbpuiOppK1QIjkhRu1Dhd2BjW9PFaYwT0
	 YtDQkqSl2LcWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBC3D3C92D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172936535359.21260.691384405931692731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f2f5acbc2044da4888ec4a226d01d5f24fc0cdfe8c1191dfe534ade70a6b27
Date: Sat, 19 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729365353
