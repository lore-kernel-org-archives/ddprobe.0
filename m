Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0899231F99E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774390494; cv=none; b=WJmtdAqDcpwpyAaJ48cqTcRs6MvCHWAer/Lmct8wR9DkuyOJyZfLvt36rjPlepnHor5RtctPmz/11VYjLB8GUr+LlBvNBUCqbIjENkouvXDIz0esrizyBSPC6y+6EdLvg7DfaBHIMjDO5pAg7R7FCBqEE+aA+gTCNHGWm9KSYdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774390494; c=relaxed/simple;
	bh=a4ofziUMIZNMfH4rtk5ghakDFrEkQcwD1m/ihFUrEUY=;
	h=To:Subject:From:Message-Id:Date; b=VxmMe3nTnN687i6WuJk3SjEq2xDuhPa41Mxjb4GcPF6cnzCIEMeSE1J9+v4bMcB/YzCJyosBn7NJlTYBkthuW/5s8v3MPDSq2GeydFloUnD3nf5bpESosgeTLCMXrxZo1UJ/FxpeUnH8668WeBwHJcIxE4MDCbM2sWJ7NDCKB7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHhCR840; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHhCR840"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A687AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774390493;
	bh=a4ofziUMIZNMfH4rtk5ghakDFrEkQcwD1m/ihFUrEUY=;
	h=To:Subject:From:Date:From;
	b=FHhCR840Y88o0H5TCkhu/niAZpMx+UmX9Hgz+rq5JyPDFIGXTXYC6hKB9mWpEVJiB
	 paJftzEUgrHpIcjd1ZdYhlEoL8Ca52LT+dE7fYuYHl0hy3lJSspHHayO2qqCtZ2+EY
	 NY8rKVtsDgAjqmzFwkRNH9snJs9ygQcxpjlm/hYHNVFc+HTz565nc/1tbLZ7vWkS3C
	 +rihQyQia2G9ESfX+AVwgzNVkGIV/0xU+4PMot2PS2F/fOrlKoz95FFl2CuVUyKDM8
	 MbMQfjLz7yaerFfg9AW9w6LXZz5im0+cLvE0TRgPymrS/+H4SuYhAXvkOo5agU5PSa
	 n6nygTG/22NxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D37FEC11B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439049358.18002.7082600539850770204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed25750ab9a61860b6285524499df0dcb7bbaae4c588e3029efe7a1fcde59720
Date: Tue, 24 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774390493
