Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2361E254849
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766949234; cv=none; b=QP3Gbkl8Ad4C/QoCb1arpLC1wwhq8jKXssboTpXmhbttKVo/oRhkzdGC+2HFgufEnKmPdRTAG93RyjhIeJRsW8A+wPYokRdaT/QRq83vkB7Sm/0SpySonTe7rdws6ltuq/4M10I/DcYIJ9uNJoG1lRhHnt1IlB+9EFzf1PeFToU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766949234; c=relaxed/simple;
	bh=4JVuzXPx4jSi2EvkJDjmtnHehrE/eAwlHVG3jBOdBMs=;
	h=To:Subject:From:Message-Id:Date; b=kW8mU8PRxpWXh/p6OnGZOL3xK1wtMS/KoA5JgDz6AQjASeXsOcM3fo8zIQij2oCECtY14PtCWhCUoCOI1+swM+vJAxajsMOz3v/Lu5mXwk+Gy2OIaJkOmuDaijeo3qFdNBpwJy6SPfFKo/sFN42oAq99GMpBh9O271u93rWB/s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSugq7Ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSugq7Ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8515C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766949233;
	bh=4JVuzXPx4jSi2EvkJDjmtnHehrE/eAwlHVG3jBOdBMs=;
	h=To:Subject:From:Date:From;
	b=NSugq7Ysb7rJt7yAwPa5Dqx/sjkCxiXyB5fZ0UHv8QeR+k2ynxyyhPMxk5b0g+ndI
	 jmPfncFGf5D31RK8fpm2yUj7UxWtPWNnuI4A0zqV+dv+HG7c2PlJGm7tboapxGHWaw
	 IgfE4TBVDYBYMYz7yd99m1HfE7k+QsbbjGaXTu4/lfMe+y1tZGFagq+21GfmrrIo4P
	 l+44AoKEsNcPRBGnp9rl2t3MbYznX2sg9DuiILp+qvnT1cTZ357x/Qbg+VVcINTZYD
	 ZDzousRZTsLe6yxiQreH30s+QES1v2Ko6Ok1pYaDH8V0exc3ViBSj/+HuunSvicqkX
	 pggvZ3HUKbrMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A2CD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694923360.27380.15126610590113588696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65be2a5ef623b9375881e41077749e5e8501768f74a318fd0526b84d06928e62
Date: Sun, 28 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766949233
