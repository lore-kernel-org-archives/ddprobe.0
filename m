Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A186B660
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752207595; cv=none; b=T99rNidc9yc17d4rgptobsqBqjH1c9y8AiLszpWiT2x3CWWiXdMrzpeWzvd/v0AfHtYrfAL9HrvVPTf+DyDqqg5PNwHY03yWxJNWdh6gzC6qF/OzICl+dZ2fq361pRtYjqsO44113HG10Dj4lI+beA7tJkQq2vNlEUDD7lHfbGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752207595; c=relaxed/simple;
	bh=uTodPr611ab+IGbeLSeXWpe9ZGxEgOgXViM0TXTVPM4=;
	h=To:Subject:From:Message-Id:Date; b=UYZtQgGh5DL2uPa+vvJIy8i7X0TBb/l2azk482wlhhwXKdZNprcw24b912smA8P5eCx7GlHPW9504vKvjj+M1+vLxWbFXm1J1GTzmAG67FI+bT1lQcVV16ilqiCKXQitVtH8s3OSiK94W39LELCyP62x/JHvEKX0IXFUbAZUqdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pawnjn8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pawnjn8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E81C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752207593;
	bh=uTodPr611ab+IGbeLSeXWpe9ZGxEgOgXViM0TXTVPM4=;
	h=To:Subject:From:Date:From;
	b=pawnjn8SRD1mtn4jAPGX328je3bh06Ru0e5racc8ZuakBVGXpWjNHrQohKhJePnBQ
	 m1dbpLJlkCvqP6bdjn6kBKFEQoc+Zx2m02CdeyHmThA7vkYVFiWd/4ZiBezNeOdryP
	 i2RZ4JMlyYDBdwwjvSf02ElZFkvjjQGypWRPXGaovuGTwjilyis83WZEv88qKtf9cn
	 4jjw/VnQOG1vp8IvVgxtCX9QG0baTfMijo/3GgcD3s+L2deZETYQJY8ZsOHqKr8poA
	 N/NaQ3KPfYYZp9i33ZdO2rRnjmITfv+GgqQqKZ3fMWGe+p7LY2kRBk4+FghD2ulDzY
	 q5ZtHnnteoxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0FC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220759359.6591.18080313857336928362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd20d3ddbbd4ce6b968cb8f3013aa4ef5fb435f19cc47bd7ecde70eacaf74fd8
Date: Fri, 11 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752207593
