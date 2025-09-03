Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382C5274FDF
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756874394; cv=none; b=YBmstGoTHJAIo3oru9+o79PdcBqPDpiaqivWv8m/ITqfuqPpUoyB2m2qaYJlrccTX4u3cgjLIugy9bFKKY+jDyDVct6N3igMI5Mhxm3Rd1uTV2lAhsBSxozBsb2QRE8EXzKS3j+qMhgY6y19jXI5DAaDO9bT6nDrNfgCXVa+cCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756874394; c=relaxed/simple;
	bh=20wC1W5/WrY0mTT8hatYLE9KelwCPlT0JN3OveCqEMU=;
	h=To:Subject:From:Message-Id:Date; b=ioWsxeGBovcvJZm+lAmjk1Cnjo704gURl7oJQSA+/aocsh632Nr6E0C1g+yzVWNmAX1TD/5XS1LcKDdX4dMqy6I1uHHdfsaj162P9H47/82BsFAGF28hO6NVabkf9/RNXU1O74dvo6F7WFdQRAlTWZqD31IyDV6FuwPCBaY8NI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8HxR+2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8HxR+2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0274C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756874393;
	bh=20wC1W5/WrY0mTT8hatYLE9KelwCPlT0JN3OveCqEMU=;
	h=To:Subject:From:Date:From;
	b=d8HxR+2lZKK5AibyuzbxzmIP2GgXrOufOaP8kMscvRuIxsNEVTfMZBmCIrcpzVzvg
	 uUorq4O8gmy5x+JsThFDvc8DAkitYzzsd9PjGoQiHwrgFZrBozSA42Uq4IWo/xtT8O
	 P9s1TGtO/kWJ5u/Jc5tCSPiLZQMpsFm70C6/9MbHioC2/4pde4Kc2Hv8BrZWS6peTC
	 8OagAkpuZN40B+XhbLEEwyk/Cgcupch8ENsKV4wlWkzMnyFyIHTj/9MWnq77l+Z008
	 CVXi1/G6dufZr1N1Jqf7TT2mNkASTWqgkCnJ7yKrowpK5ActSEnC5m6gWvwe1cNs5M
	 L43Z6wdNXsUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDE7CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687439361.24216.14391600656118872643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f6af3ca5a6ce37fb8f6e2ce403a96b1b36bce271bc63e7dbb50f901cf66a52
Date: Wed, 03 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756874393
