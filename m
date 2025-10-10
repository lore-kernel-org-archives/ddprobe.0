Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3521535950
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760055594; cv=none; b=RCg/kFKbf2eqPjXnpVOXjLOimsBptzzH0QVXhJwqcuCzdt29rEeNhzdgdHRSSc0/VFBzFMoeKpizFveIXXC8XQxOt4KaKg9rYjeHbAzPpJundYAFez8LuD0WnaSAyOcbeLxj9OnSaD5EU9P8keKkheXaT1RzvmdnknKoxcxyLGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760055594; c=relaxed/simple;
	bh=EGTskll31e9FIlG/GCXw9CbpCJTwmkFGbn/GApFWzLY=;
	h=To:Subject:From:Message-Id:Date; b=WtKWmhQ6dv3qFDAzKVa5LrPs1PLC9Jxm/cE5oNEKANy2vR/b998Xx3ZKLSRFyg9nobVzFUAiik3cDSMrHp9EQKPUvuIfYWRFWCjXYjZyua5us1l2LBpn7MoHyh+PpJ3+tp/GZAZ2x+TmCPspU0vO+W08444y4NcjZCoqRnPTFtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfYDW55v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfYDW55v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760055593;
	bh=EGTskll31e9FIlG/GCXw9CbpCJTwmkFGbn/GApFWzLY=;
	h=To:Subject:From:Date:From;
	b=SfYDW55vPUg3DCurtwaTDciAlUpx1c8Hz0CoZg07ZZA6o6e1+LYpGZ1h18DQtRrXq
	 kKWzLarvle/dg8IKwqgVANZc68hHe2yiGaE/6vKlAuSsiuwS5JuVK/zcJu142Neale
	 OBJ78+13Ujsc8vV9sLBvNIOPY3IHgU0gY/NxjY9PDbU2R3SWSpUXJfURjfT4OD/E6H
	 M/RxENTQaHDX9hmtBWspRxiuoN7aBtSKYAX16W9U/7CqrKeFCkSZ91ArQA2rXQq6Hm
	 haWKOegSChk7Cyl1xoC//JEBFp9BjXgyucv37afUBP5qGfH3mq3x1viBbfBaVBVwGA
	 lQL7kjPK4jIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92666CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005559357.10091.322574994535679317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecbbe1206788155107513bfd6e530c1b454e0d3ad1e3d9ab8f6d37423b1da3eb
Date: Fri, 10 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760055593
