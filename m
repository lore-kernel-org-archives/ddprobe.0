Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F236F305
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728030354; cv=none; b=Yb+MH6NcrBoL/VcZy9H77lWWHpBJk3HFmsRRTQSU1tXJXht/IHkzRz3ox/LE5FKW2FZWPjFwA+T2e/rLC+LG/CbL/YfXdtlyBFuUR/I7DUMctk1rH08P+OGf3Y5oWV91iNCNTwnFRjuHzc5pDqWjmz5qzehtOw7hldvq3eC59Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728030354; c=relaxed/simple;
	bh=YhE4DbtmaNUI1Q5uUfH1vB8kp43P0y+lPU2jcyfBHpo=;
	h=To:Subject:From:Message-Id:Date; b=Lym+wW3jzUxyDmPnOXQ0dmxVb3Y1Np95ynqvQGIAU7EhPnKfmKyc316SIT6wBBWSHA/v2weKDPmwKw82F5O0KTEoTdJgbUj3+WGInas+eyu/4QTYi06iYZh9wlWR9ZYRGscfC+JQQxKSYYGIAv2/3vIK+YXe1k84wAQoji61ZZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNJDjs3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNJDjs3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36E2C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728030353;
	bh=YhE4DbtmaNUI1Q5uUfH1vB8kp43P0y+lPU2jcyfBHpo=;
	h=To:Subject:From:Date:From;
	b=RNJDjs3Y4HqWX1v/NTyOLTYSOovnTAb0NWwX7U5ImG0GkYtYVw9+/jPMALF0Ls8jt
	 qD2O2vNr1abqQcfJYPZQ95V0YQys1z+t50oK1+fLCvHtufCnjSfMgDUvbYej4+DPOK
	 F+tA9/mpGHA1DIAS+whj8KVy1lhkfXZTucHQh4lBeDHwompHBM8/RjUyDtb5n0u2AL
	 e1B6bhUbDaeZLx2XhRXsf6dX3LOKZ5p0Doe14svGYtx/eDgN9KaumhjjibYznyfdOs
	 w5MDgitxTOciW1ILF/kelE0cUcmdu8hnb/tMGYLuM7l26WBBAfxP3HkH9p8GA7h2w/
	 E3WXu7AtLEgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3C1CFA750
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803035363.17121.11474621623136484666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948f689c835a180b147791a91e7d483624b013cc18401d9207af7d8adc89f4d9
Date: Fri, 04 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728030353
