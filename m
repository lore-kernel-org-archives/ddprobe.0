Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE08944F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752478794; cv=none; b=djIIgte0Lz9FqAroqAifR1+dxChtH10FmaBE2FQnv+XMwozv2FkdgpxcLIUZzuSFqpEjqFYUDvbG8L1eImHEa9iXmGCTUbVM6PZCHupPvVdURiiCVn4WaiybOXXDvWq8Y3xPkzKcSehEpJdYOONsH+jD1skSY1w3CipJIgSubbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752478794; c=relaxed/simple;
	bh=W2zVLCpeqV1JWkQMn7O0vl+VmIsIs5hf8Fr2OfuYwyE=;
	h=To:Subject:From:Message-Id:Date; b=P0mxa8spzo69m44ey2kT1amkYgF6JoDzEL/pNh/5EKoVr4w68G/7KOuaqt11jtsxMcRWXjsAPNi11yJNoA341Fk4IFGsk8CTLl0MC0O8TnLTq7HtLGPzVgner/ee3lJzAIrfknjyEgFgaqYr9+TyF8q3gfRZbd93uzWN+Vg50oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFSyFdmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFSyFdmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C40BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752478793;
	bh=W2zVLCpeqV1JWkQMn7O0vl+VmIsIs5hf8Fr2OfuYwyE=;
	h=To:Subject:From:Date:From;
	b=AFSyFdmCQOZREpfvw0w5UNBLL7n3oc9HM5UY/Qns5ciEuZr89REpLfviqL1UjcIt3
	 eSQpl5onbAh46zp2AymXOBJDe+Rl59UL1m84xjXFVfF07cr/ySsMP7WtnFePJocd5W
	 ALM/Yo/KWms6BAXC86hExw/JDeyU6AtePu9H9D7qwWo3/VnkGJDbl70u3dOE+HlaKG
	 ytLkarrvSiHdsqj6BVCoGSj6PTHOFEni/wezliLPrWE3vCFAyHvcyI6Ol6fiUIA2x3
	 4hVwY6Z73sk/gov1WmIVlWFQixf8nR0AURCDXSmJtkfiCvxMC9GD7h1x7hN1z/osS1
	 dx/z0JPE6xFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E589C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247879357.13778.2137436271049538336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48375a5326c5a369ca3e7d5013cb8d0adf6957180ee74ed0c7a5fd27256c7240
Date: Mon, 14 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752478793
