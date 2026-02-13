Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F32927707
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771018494; cv=none; b=uu9u8BXhXMKDXeg7bGWaovQzg8431MbiOBe2QTJueMRUodJsRuPDknncUKE+8A9F1Xx8i2/vZaisk/U+ZNSNSzL+xignOvnE5/e1To1f5KSpYwr6RNMmRR/rLvC6zm6UlkH8rikGfuuK3YGlbWHosssgbVTSCjU2jPUFMIyOnMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771018494; c=relaxed/simple;
	bh=1q9TUhXbsaxZ4wBOZD1UGz5QzAdbtW97ef2P6tG5ltw=;
	h=To:Subject:From:Message-Id:Date; b=Y191SU3wDKWQ6aguqR5CyCIKIPN19c9NMo51HBc58uxQa5ksk+49Hh+rLDosMExPBKgHE4DM8kscE6n3OrVITK46axpcE0cBz/+avRLztN6Ktqldk656Yhl3qXEYQxb8qkdSf1CoVQixYMecDMPaO47cckE8iNXkA/ML8Q3V0H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEJxd+cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEJxd+cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B89C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771018493;
	bh=1q9TUhXbsaxZ4wBOZD1UGz5QzAdbtW97ef2P6tG5ltw=;
	h=To:Subject:From:Date:From;
	b=dEJxd+crY369RrkipMyHFZpbveQlDKVsPSwrU/dCi/9yzod9IV3/+5LfNz9PLGOKb
	 hPVV8ae7fMKQNoOwXwlnmH9OxF3jDPPMDY+8JRAaVvt/uP2+VC1xiscPN0jPjf177W
	 C8YhtBs+EG/9f7xgoV97PmAMuc2ZPAudz9ReIfPHsAsALgp6s74UyT/yNU7EOUpKXK
	 J0Lsz3DXQQAYKFutbnRM3Knfaw3y8UfpQWo1wqiadpOovLa9A+OAGUT3cfeMqsGH3D
	 0EVZV0F9HxnO8W8WFNHG7wakEu+d2OfSQDW7QExdCfnj6j6XYkYeoPmO4Kzs0DAhZg
	 FEFBZCDW3rbAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A1AEF99DF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101849360.2003.11159142103692018910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c789e14f8db09da4430fd326eed07c14a8e8b08caeccac1b6318828c49a17895
Date: Fri, 13 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771018493
