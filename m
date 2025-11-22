Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402FB3A1B5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763776314; cv=none; b=CM34/zYwVj7jNKKNunjQgSelh90h2Eja82Nvl72Wyep0+B1zE0/nWpDn/y9sbkgwX6FmVlV58/ZOzqhESjGHBANaYYzP016jXn1YBl/xvaEXeW1c5Yw/rk8crTJHTjmKaSzLsgnVX9JnW0c6YlSrS0zVLZQ3mhW7MiqH0QOuxGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763776314; c=relaxed/simple;
	bh=iBX87dJFvWLdlGF9tiV0ugZmA2biK+Vh6Igxufo0ac4=;
	h=To:Subject:From:Message-Id:Date; b=pCpb5NH8RpHMqig/WaUSB9AYDjT+Hq16tFrSo8b49eTDjlGj/2Ri3N7Pi0yGgUcRzmiQUMDvqb8/PHBTUfOwTpa522JP0uPm/NWH0o5GLeRvbA2rovww/KZu9aY/wI01zMLV/6m5gN2HZRzxeOqojKPVo25MGa/Tku5orSW14jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEYi69f4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEYi69f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6938C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763776313;
	bh=iBX87dJFvWLdlGF9tiV0ugZmA2biK+Vh6Igxufo0ac4=;
	h=To:Subject:From:Date:From;
	b=GEYi69f4kmfVF00+lVhCx0IsEllRAK9EscPue8eUNoZdtxAatT68iOxnaVtp/GEbG
	 ny8ePnkDrVEkarZmVENOXxbxQPUr8Bf8ZmwJDFx1ciVoS6Mduh+WGPBUVm54DCMsTS
	 QPGDiTd5qZ8hYTmfy6j6M8lBk2lbgtPoifjKrdMpFcb+B2SAaQGth8sKK4W5rh4I/4
	 FguX+J3mP66/ccEUyjDZf6uXPIhlfJw6RRgDl4dbFCkXy8K+sUn8UfzQf1GY/zMccN
	 d9+VeVNlexnL798wualMDn45Y/T25BqjM5KtzmYVOSg6iTbWvoDNtOFjJrH3fSe9Bc
	 etSo5s3xnv77w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A5CFC516
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377631359.11304.4957584114842520978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b07005a17aaaea2e9f40ba76e8c4b92ffc92c5d3c646fc0cb4f399c530b52e
Date: Sat, 22 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763776313
