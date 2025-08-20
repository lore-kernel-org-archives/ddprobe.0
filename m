Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2226E258CF9
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755665394; cv=none; b=odMn2Hq8ncPAxHMjTHuMc7JXkS6I5zUNxu8qUagIvzBxaDAprRw9uORY+q0CQPUDyZ1Lj3VQEVNRiRLTj1ZO4N61IrMb7tJR3nriRaP5pAzluJOVHwjrqPVGK8XO8pEHX3F9lGBgyw0R2EH55wAm72MbTiO4Y5De/wyuaRnIRrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755665394; c=relaxed/simple;
	bh=6IwkYzatoPtUTWVSjLoC1OW8jKjuW+LNUAOnPNcpCpE=;
	h=To:Subject:From:Message-Id:Date; b=Pu2qR0pD4RZ1M0NMsjs7OiMgbOhzd/N7EYPhnQECYzvsXEf8pLQxBZo2yTIT+jrabs4YWe8AXteGRWIAxeSUVVQ2db53lADuJL14Z8f/WZXIJ24ZzDcYU6HquWwgXpi4Mb4EwkOhafAmiVeKIECM94aXRKY+kT33ZL7WQu2jguY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuK8BNNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuK8BNNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA1FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755665393;
	bh=6IwkYzatoPtUTWVSjLoC1OW8jKjuW+LNUAOnPNcpCpE=;
	h=To:Subject:From:Date:From;
	b=kuK8BNNm6ci9N4tjg1oQ1lEwTFSlRnNlRJg0ZRutnnRh1jPKSJ4N13ZhUtLxN9Vd2
	 Ox0K5Lg0O8dNIetMsxieGBzL+DX95/YqlgNk9LuEfIvlGXIAdJwIjxfKLmKzO8C8Ml
	 h1KW/vqemBxwwAQpyCpxgEafFJWrbb8uCVdpfVZ8ls4MQ8g285XpO4S7/6shgi+6ED
	 bl+/IdYr0TNO9hOrQK6VkuP/4gwnXDLsx0KGeGI3WNPstYkPyQ5jzSFzl1/n/NU0zO
	 TqhBYP97pwPn4Ho6Get8k5XkXRf86rWTYChAA11pRpxcYHJsha47iMknEoK+JYTNoN
	 w/jfQy2zY/+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E34FCA0EF5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566539357.12543.15394556869150428906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d0f87fb6012033dfcc82fc7b90942b5b91a514115b440d6d3f7cb87b191acb
Date: Wed, 20 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755665393
