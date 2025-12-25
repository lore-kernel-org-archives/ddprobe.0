Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41A329D26D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766654033; cv=none; b=ULxMeiNH9qbK0dkWmLRE2XbhNF2b5ViebNwfaiX3g7jJupZG7PNGHg481+lW5W4ue1QfCTH6HWSEueDw2o95ByY+WpDP5eWfcs9KGG5TmCTy8e2Xzba6ofPyZqiE628Gto45+B/CM7M1rEbpZWn+i1Scb4kdtC0HYOFpZY8epH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766654033; c=relaxed/simple;
	bh=PmAbhc4Fe0oGQMVVigO9tLXYgFd7vR4Lhky/Api8sYE=;
	h=To:Subject:From:Message-Id:Date; b=dezCBid8CseEQvZxvuzoZKz2S48pm/mu7/RV5R6nblUrq32+r+LSDUqT6H/cYaXE1FREXvGxVt/NWghV3yjH+dZuC3u/Z3sWp0A44JqRe83iwPwhjN9niYWjySVDmiL74JZJt1hz1y1xYCf6nfR7mMKBbZxi+0nsPTsl7k1ej3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbwKAeHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbwKAeHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98843C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766654033;
	bh=PmAbhc4Fe0oGQMVVigO9tLXYgFd7vR4Lhky/Api8sYE=;
	h=To:Subject:From:Date:From;
	b=EbwKAeHayNYWoPjTSjVqNC8xSmOdU6aB0V9V++dqjUxlu+nclOWjRBvjArGZzRZk3
	 zWpaEs90p7J5SfKI20kYJsfiOaslBqfYNC1n+VPrKV3HJM5HaCwC+40/usYey6y8sk
	 G5/jjkoWzhmL/Gli5nqfEF61Z1mO/nZxr4dK6aJjy5QhWPI7ugc6cxlE8vMgoQeNAG
	 ZNc0tSG+DJ5MnvAPPPJFO9PX4cGiLjZZE883R2SNXeUrtZ0YrXzb0fX/7HaJJTC1+j
	 tgSXKGoDAReavOgpDsZc+7FpM+F1EcJBl4aqfXeOctXjMS4opsgn5McyQNGZfmGj5E
	 dNYUEs2JjLeZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A6E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665403357.28918.13021246635135594617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3010b71aaa0c2f41c3eed37a9523fd93066aca40cf7d43a4dd387d5bddd01d27
Date: Thu, 25 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766654033
