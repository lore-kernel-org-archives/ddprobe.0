Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837422DA76D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763533314; cv=none; b=rrOzeNYS/Mz3p6kkBW2br1CJ8u+QxD1ukLqkpGqJwEvKNs69fXLwOEx/50/YwWX0ZWbjl433GLIQvYMRFbaPOQSBVoSRpmhQ7x1ISbQTT51JiG+SHxXsoo2vmQ2x2dYbw8YwL9POgtd++0NKsy5TQryTNUPThpW3MGL6RklBYoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763533314; c=relaxed/simple;
	bh=5NMBHFxkL0oSv+RHvI/XKcQvcMsrjYeMMf4CPOlvTFs=;
	h=To:Subject:From:Message-Id:Date; b=cHHpsdvSDyLQJ7na4cXWqoUZ00JU+4xptpgBwi2AXSbooLFLAi/OKnzaUT8xlXKJ10p1VpLPH/+X1Lg0fEYY4L9s1uXBLGIYLOPkaGJlCJPKTGJYfsxAcqMzcYV8CQLYFXXE+fN9x4IHbpsU4tKv0KxX/AcomxrihkhCDch/nKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgXDMxfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgXDMxfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6016C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763533313;
	bh=5NMBHFxkL0oSv+RHvI/XKcQvcMsrjYeMMf4CPOlvTFs=;
	h=To:Subject:From:Date:From;
	b=AgXDMxfYjJRvb6GPSD1c5sh2jQui6xfkULsmBKUf4kgX3GJyH1W9aA3uNVRjNz9Fh
	 6cGqu2j0cInLHCcSOqzSDGvI9f04uXzVSWc7C2i+dqrONOHFPSMof5fehSDfBzv8DI
	 k8eVjfJaMFOaD+a7mQ9L3m/SM6Di0kh1beiMz3Q4PprirfPvPX4iWcqcJ9aruDYiFG
	 1IMEdE3bHnMBrwfqXP0u96GhZTMW1/XBwX8VRxkd+mf71wjX0Vz896QLdoCis1Ng7l
	 FUuH7LoLdRB/6vHQ2VaTd+sdPpBpl8JQaNWOJOl3dWk9eb5wm4owuA/YvLsFnaKIBp
	 pMA1qxI1q9eAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F0CF2583
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353331358.17660.1170808370813790454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e839dd3340951a0e8f0452df8ecdd1e915c5314d9bea465dea5b751fd150289c
Date: Wed, 19 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763533313
