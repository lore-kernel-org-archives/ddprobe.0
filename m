Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D901714B7
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752096594; cv=none; b=KjxvcKjrRu5V1ZBDKBv3jwx1q1ursXk0uGVch397LYzkwIAwG4cx9sY8NRnOor/vLEK+a2/ueVOOBaK/ARMUSUtX+5oNhddq0rb0eSFnLNApFrc7UuQ6Gd4YVtA/MtNk1bM+cM5/YugWaQRFiYFK/xQqLYSsqrKzcBUHUCe79t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752096594; c=relaxed/simple;
	bh=qxmT1aA9jvhrse9Pdtvh+CMo9JFFJkuwUmjaZVP8ex4=;
	h=To:Subject:From:Message-Id:Date; b=aZ3pVP+IBZolHpJyPWuFs3ZKvluMKE7YU6Z9U+CaA9o+tBX3thiZcMGeAFYYV/qPYgZIeZiOk0d//Wft8DlPqQzRzKiLQyC5IaGyy4TMBpf+5dpXfA3eAwTDa7t6XRk+inmgXB43DvkHjrqpgG2uZib7q4DTqsnjAQeitOV1hto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC7OfPev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC7OfPev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CBC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752096593;
	bh=qxmT1aA9jvhrse9Pdtvh+CMo9JFFJkuwUmjaZVP8ex4=;
	h=To:Subject:From:Date:From;
	b=LC7OfPevY0XH012id5FQKU9SqorA4xueBJLrn/9XfbHfwRZ4Js86HECtZd/JAwtrv
	 agPKHzOGx1uY/QoD/4Q/V0CZlgDjf6z/oqCeKsyb/Lua0ZPtDiPJ2mG55zl4cQ2BHZ
	 tZMEMrLTtP6yhFod4WrjAarUa29hCDSf9erudmuKym63/+cWboqnGIBrYLN1y9gH1y
	 LW5drq2hvffRAZitrczfsv1CXbnMWEvLtJGD93UqLdQUMhDFSNReVa2leHqSk4XYOV
	 UxyMBCAzg6Jp5tsFjeiDUq0qqOCzImKbeuyWsici7xE2hf5cm/0tJZUY6pzUVzPgjg
	 pHbX6+UGw/A4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E28C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209659357.4362.12024245865148652561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac78d57ef751773a87a6b565d767ab0db4a5bf96ae2b3f1804a38bc8fe8e54a7
Date: Wed, 09 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752096593
