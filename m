Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C9CA6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708848497; cv=none; b=RxJKMu+7OMPfkhIgKbeEbXw8iL6WrH8Qe5ukjBiqlclFlwKnUWRwd0WSFAxRlyFJUDl6m2SmIwmcFrbjeiC8/mlr4hwL5xu2170h1ylJzr4H78R7rcDfcPetQY1RR+JPXOjkyFGXojUPJztcefikr46c00hZCEmX5F4uVDQScUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708848497; c=relaxed/simple;
	bh=lon142P0+RKZ5vcwsCXYSzFrLtLF/UpkMdbyMT3YweE=;
	h=To:Subject:From:Message-Id:Date; b=dZQgPWqElTXdYnBsRuKJy+vn14TkvqOEeRx4ugSDLDl3yspuEQqxk3/+vT83ptv2YdqXNgpa/dkxDnXVPFKGbbN1poq8xO+ccJFhK7HrnfR0OFonuNcVa0Mr49cLNqu4VC4431/YEMSJ+S2v/hL5y4BpA9j6c0gYaOn8zrfscFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AssOXcP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AssOXcP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB75C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708848496;
	bh=lon142P0+RKZ5vcwsCXYSzFrLtLF/UpkMdbyMT3YweE=;
	h=To:Subject:From:Date:From;
	b=AssOXcP9GRqLVuFJXLH3NWrWlGyr4NUf9ZWC1V6iBsOoq92Q/tuwVjuPOpC6v1xY5
	 WncsQsr3ostT9Xg+3k6DKMfThGnqqHN22DLWvZ3FKRhUMh4CaQLUVguwkLn/1yvCh4
	 44e6UPHITLF7qx632/doDP6NEFbuRpbyZepSscaXgI3seAcxh/Wh0CfXvhf8MML8TX
	 zb9Y4JIzhLeNKfi5RZbRdkNKscMpSnvO3rvEVYexJAq6tY0/sZuSm75v3kkBT4HNkE
	 AiLPBmNixNkdY/QJDs/d2rX+txth4XDy54sp4eUWa0E/dNbhmXykH9hh9zt1JDT69v
	 2M5QIuRPC/HXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 728D8C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170884849642.32138.4613464219673383789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8b3f94840aa5eb853eec8473d8a8866db5cc2679e5efefbcf130ef414ef635
Date: Sun, 25 Feb 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708848496
