Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9074F3EC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792413034; cv=none; b=jHDnJPmwPSDKu8jrwGn67Jr7Q6dsKDsWGQg5tuCtxrryAfIh6KinBtsNp1ndtLhYcqGlf5Utg12NOy7XZll7pJj/K+5bJ6WPA3zt8VUN4GAu3Kt0Kf7T1JIQpsa6rU/9Pi7GQn1outO5LLJJvlFFaOlI+kq8xWR22DQNPcDuTBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792413034; c=relaxed/simple;
	bh=dQ5ArCbcbO6hZkPhQwo2Yf0/YOKgAemLpIAad8+3ddA=;
	h=To:Subject:From:Message-Id:Date; b=P33m2tt5NOzMu8TsjqiR93B2fROxxeP8k55dZwON5vpg5x0xs1+ULwpOa9UID6XWW4h+SvQP/jzibxdTPfSKZ8dX0R+uMo3PGlabxxhTjzKA8/VbBNJqNcsamjYl5gEg+sQgztW8Eb/zZJCGRnRQQCcvKsZhPfjkKmetEuGFADA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+rrK0Gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+rrK0Gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E818DC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792413033;
	bh=dQ5ArCbcbO6hZkPhQwo2Yf0/YOKgAemLpIAad8+3ddA=;
	h=To:Subject:From:Date:From;
	b=u+rrK0Gid4w25OVBBW1uuGADxHY+qXVuaAcO+BfrOgTJamxVXc3VuhcRHMdPI6VYR
	 APUawfQu8AtkH1UKd7yZJdL0Mq/I9FwjH0IWytM2zDFrIBOAf9mq7WHgkaNq78/mlC
	 cRETI/EKn1quIripU5/AUBR7u39OQoPsfxLsH1DJqojxl5WO/rUwOstSmzTDnosT1w
	 akoThLxhC0Gk7vmrK3QZlEFrzfgXZt4kpDJO5CUAHi/PW2rg441xXbd2KRjYnAlgN8
	 +T7cpcIBmw0CthMx8FxgqcYkJ2Ocp35kwba5Ge0TRDQhw2i1+l0e53TvrUWtKUmlUg
	 /WG5SYNw3PKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B967BCCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241303374.32183.3939056156139856931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ac9ca937e4bc346d6681f94bbdaa56484b0a6aca947aabb71e5f055de04377
Date: Mon, 19 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792413033
