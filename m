Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6A344E65F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790592034; cv=none; b=TW/V5Xq4BHbl/jmwAzl8TGr68qauhYbJ830hpuF85UrXyUztPLrkHKTAJOFc37W3hPMl9EWWf3FvvAtA9pi+d5Y6dGaR4SmawqQoecCxhoc444ZQgJCEX2I8c/9hJsZscDIMwaUECqXrq1PHwth3yTkfdxg28SsU1uqw/dIbBzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790592034; c=relaxed/simple;
	bh=Lwqh9GRSQO29a905Ddh95LopRIBFFRYqa4UaSB6VCII=;
	h=To:Subject:From:Message-Id:Date; b=M7X2NGzZJCl+zAXfjyUMNsXZmdlv1cdmCh3++7LgMOghilJnOwFgA9tuorAh/grfd/e/RDvX0qCb28IIXsxnXyodUMJieyioo+p7kI1VMCAL4H2fQZZXIoO/Fl28nJLkoZghIlWzZmTQbR2P3c+UTotVDiv/PCqOvBHJR36T9QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty6AfJ+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty6AfJ+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26D6C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790592033;
	bh=Lwqh9GRSQO29a905Ddh95LopRIBFFRYqa4UaSB6VCII=;
	h=To:Subject:From:Date:From;
	b=ty6AfJ+3nYMg9gt6/CAkyd1LHq/ESzfaluDwqoCobbhuapRnBLqIyzwUq+FExOMM3
	 ny3X8TiRjLs9PKbe8C1N5LYF13vfiFjZtizt2wEEvAcMckc14ufikzGwQyYQt7rkOZ
	 0wZCAtrVZKQTYg73+1p3aLDzQ5e153Pzu2AhwX7wN/+HHpv5L34MOpdsC0PmgqTY2Y
	 LlO6JtWv1rVXDd9tJYLIaJ9MOe5DM0hTLCUJ+k1FVRw5fG1TS8920s15DgLXuWsYDd
	 ItHSHDKSdcIpFLZsOgN/mkvdTiaRgaX7LD+6gLoYG52y4jhOY5AOhRmnbvKghxX4f2
	 L2R8benuSLLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE5ECA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059203369.26301.12986467285925499704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad10e552b53e56e3a65eb1459b234a9ef155e36001d24e51e821eb42634fc10
Date: Mon, 28 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790592033
