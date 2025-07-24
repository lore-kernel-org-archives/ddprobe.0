Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285B7AD5A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753323594; cv=none; b=jx2O90Jhr3LDOiQXO+dwHrHI+CD/9g+rPjPJP1Wu7d6ZsAgVFssNlpjI9GQBiZ9ut67awbbXjFK3R5smhSEOSkBoA0DKeV1VqQSD9QI+ZKlc0gp9BL4fxum2cmU+fGw8AighMHiCYt3CDGMn6KOrDvxMywbKgENIcN1j0VznlZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753323594; c=relaxed/simple;
	bh=NeohIUO0aBidSg8lFWOt0cC2YtM4TuFiS0GQkjmMC14=;
	h=To:Subject:From:Message-Id:Date; b=FnzdkXSniqq+7EWUZXTT1YwvETMzNGuVK848sZ+xnK/KqgOLdSkjSJR42So0x12041J19z8SOnt2Go9hCSZJG2QhhkO7WIUkAxXUij2DTPkjmBf8oKRi1/aBtgdtoGrcdP7BUuQ9FNdnIEgLyhsBe9ax4HsYcl8bd4QfcF51JzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+tAkYe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+tAkYe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753323593;
	bh=NeohIUO0aBidSg8lFWOt0cC2YtM4TuFiS0GQkjmMC14=;
	h=To:Subject:From:Date:From;
	b=E+tAkYe6WSm6wGJG5VD1sMVHj19TaQ+MsOvd6Nt/7QaaCMJ1XCun37d82TfLcc0N2
	 9SkweuK3n+mboyr3DzC4nlh2uSY27NLdtR//NW7rCluWN/2jmSrbYZ54IpsCNQzQGH
	 WCGhWNAlqslwtQ9HJc14mh2CZjBDuUYwoBkqeyCZ98C9o7DJvGqk+FuCOJhTLMQ5oM
	 8wAADidWRzzTZO6ptg5uVD6TF7wzOgZ7kIj4L4KZCvs5Q1ay3eayaMEkhQ0jeHmVMM
	 bEcnmKuDTSYmCl0+jITQccJXv8equ9+YHkERo3UsXCCLHQDE7CFCo3WRWyYDg2BHFU
	 U1WkMU6G2yXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDFC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332359358.9360.17868841926083317136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c266e362843c8ed221c2dbc31fb61642347adc5a8b90decb200ef012beac31e9
Date: Thu, 24 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753323593
