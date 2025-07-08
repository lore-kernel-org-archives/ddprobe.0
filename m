Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F472253A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752008994; cv=none; b=oKk857Z7Pw9mN+HMq6do9kYstwUg+UEEuic2EHUe17ulqiaaY5SO8k+ypdwO/ae5P/Wh1NVTMmGx1XL04WRqA4h4vka02QA0wesgEAYzic/3Mi92jYSGK0UgeX4IYhYcoJ8T6XLG8XjD4LeBDWIxfuVYu6DwAsUeox8kjQlAWhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752008994; c=relaxed/simple;
	bh=WN7USVpO6GzlpciEbnJnKh1vq10Q6OFGLwh0fLjl0us=;
	h=To:Subject:From:Message-Id:Date; b=Yfn20m+d94vokP+hxXktnCC0EgvO+1X0GiYSM8sjwtM+Q3o35Ye6ncP0gfWiBk4RF+pxneMLQP0aJuKUcQsTeoCv2ApJOe0TK83M1HmWCxaXNOp78izBGp2M/vMQvuTYdBWU5YL3xjSlcEUpxeOBbBWXTMMSF6RA1vkwMDVUPuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp30aDOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp30aDOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A3BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752008993;
	bh=WN7USVpO6GzlpciEbnJnKh1vq10Q6OFGLwh0fLjl0us=;
	h=To:Subject:From:Date:From;
	b=sp30aDOPfpFEaB7dioWjQEmPALOeaJTDbI6gOMrp99eBTABIXPoSLSPSEXZGD8K4n
	 uhUozyzszSrjO5n0kvv9D/fgZ9o57ggKm0Z3N7GWvJLMxYixKhJqJsq3JhslenBWco
	 HN+kniEuYC4q7moHse38rKdluXIi8akFmjl1wnV4f1cUxjnGKKCl+HiFy/3pRv/pci
	 StSv2uhyK9jYy/yVP8n9KZ6LHOijHEwKr4n0xZSrNAhbpcEJThQuNqM4X8TN3qKs8Z
	 k+RtZXqG+EFhTxkIrIshXnaoXTIbMFnRFd94RNP8cQlHoge7H12o+DVZJWAfPn1tNP
	 A2fNTXcEfXmgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA7C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200899358.5649.8073905774543472548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05fbfccf40bca4e5ef1fbd79ec09cb1cf997707a962c4a9bec3f48ba1b5450bb
Date: Tue, 08 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752008993
