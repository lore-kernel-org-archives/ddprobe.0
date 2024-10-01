Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABB318C914
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727753753; cv=none; b=RQqfSZNz25gTsaqYVVeVBZEBkXqO6nWVshWGWfMdTAEEvEWjnl5C6zyQu6YTss9M7b/SynRyAtH0kLLFa609CkHTB71eOpeVAtiYi/m/7PPKbvjfkSfIy5RwcfyOUH4CHI61nt74y1FTMyFoFhZFQqxxP+iz42BYDQkvlRyFFq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727753753; c=relaxed/simple;
	bh=P0yt2HtOz9zVHk5zqe407AktFxaQHxon8TKhKUBxSbU=;
	h=To:Subject:From:Message-Id:Date; b=QY7YbcJtUAhGYzvXEZQjJtyv5UaCuRnocXSSvorYb1riRU3AAh23jEdKhj3m7XJWSizjg3c4+jHz1hvCPu/x1M6AK0nB8NDrhBdgt+ZaG53Ywopg06JMPS9dz5M5k3cg7frSjozqADLq+iavUSc1OUhK8kTWOgPXu3vBxm0AGBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUy+1zsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUy+1zsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF38C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727753753;
	bh=P0yt2HtOz9zVHk5zqe407AktFxaQHxon8TKhKUBxSbU=;
	h=To:Subject:From:Date:From;
	b=CUy+1zsVz7cZi+pVk8jVPrXQRiYWMKxpqtCBNoz+sVZLMx0lPNDg+jOwB7QmoySBT
	 Na+ko8iK9dI2vrxv43PVm7JNAMHHRm4dGwFpdV0zY7c3rLOx7X8+mYML1x+/p+O2Lw
	 7EfwwNNW54Bq+T+uhDNZJCQjMQgzWIY8iJXMpdaRb6OzJYXZ/0KbzLGaIW6HCGI/iF
	 1BAfodNcpFQpm7wIFLaZUBz+Js26hzYT81JbCiN3AHC/3lqoXv90PDZidx7pghddaA
	 ShiocNZZ1gTVjLAjt4ZQwyU5XJrnMbKeG4IVuz0Ne+LtgbIFm7vPjePsxysLKmo49u
	 Hq9Agt1WhNtKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C87CEB2E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775375359.9902.6016861411965687805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2009b9f980725404668f0325c843ca14a32ea7a56501540fe9a3a0f3347dad3
Date: Tue, 01 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727753753
