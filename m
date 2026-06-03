Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE2A3E5587
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780466074; cv=none; b=SVHZOcBle8U4wtFQFUgVJPUsWZUzND+nLPf3HMtXT6NsBPwl1DAnxulUL6MXLQUXE7ol2fy7xM9ZQ4uXl2fRAkwoW/bQs++sxIVDJYWqWzlhQTQXRCYnNv6zfTo3x6OaPc857b23fm6wJRJtwduHcdSJ3VOrz7VmAHGP8rKm2wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780466074; c=relaxed/simple;
	bh=OJegkyt+tifri9LcU3PhQ6QUQnZNZxUOnEYNnUlhpJI=;
	h=To:Subject:From:Message-Id:Date; b=WoDEi5s0e6O3XDGMQWxXPeS0wDzcMwGYPk1qUC91Pi/e3JSBNYupdV2A3Vc4YjV0VtFPf3EY6GQA033yvfeCzFNeGXewtmNTHsNEZc+Jbz52/dcaUdvyFvwpytnRHr6tPKullYNYqadsUbQHuckxdfESFDIhuw9R47zyz6FsUOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDLQzk49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDLQzk49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C994CC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780466073;
	bh=OJegkyt+tifri9LcU3PhQ6QUQnZNZxUOnEYNnUlhpJI=;
	h=To:Subject:From:Date:From;
	b=pDLQzk4919adqUJHWL4Iz7k2DRZAfF4O0jlZjDXjdUlJpjfFN1+KV1k65pDDg1WAW
	 UUIwuimhYnCFZ92/HbBKqMAp61P/LuA0xk84Uv3jI9LNttJCIuA3AdpdFgovVpM9YF
	 5mXJo9G8LSNjwh/qlmu9g1C1IhZpWrDIBb7jsSOpv1MQyl257ZGsWZncueBzfxwMdr
	 hqP/7Oc3lsNpzDBsuOYWOfsiJcDN1ka2KXat7mKOWjAeFJTZhcieLFb8dBZX3t2xz8
	 tO3ukSwcLoOlkevRb2StVOCiPb079/wSu1EVhJd3Q0USAexknPZdQ1WK5JLy4MTRY1
	 vSLbUhcDUh5gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF317CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046607370.11329.5344821520028101556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c079490f712044ee9203ceba9f914c47aaced3b4d2fa30570bf8cf9400cb73
Date: Wed, 03 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780466073
