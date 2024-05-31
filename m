Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2587406B
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717141463; cv=none; b=mq9V1DTKhhUD5GSwYCfU7J3W8LYCmSmvgf1Pm/RI/25DnIwSlIXPcnVHaUNJpR9hdpZVvZC2z9Nv5BV4QHzT/ub1PiBjATg42gROEtPXlkbBEpnhNZxzMe80JQ8eYrasPxkeoViAiev9gI6oo3Y7tcQ0oIksJ4kwiHRlNYAZvwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717141463; c=relaxed/simple;
	bh=ftINMNTI9xcQJ3Xc1BcwtMGFGomUrfCCSVpc0iPjB4M=;
	h=To:Subject:From:Message-Id:Date; b=fKEuYh2oWmvg2Pi+2c9WFBiqa3XGqKInabeOOT39TrHGAqJeu98yLjLv6ngW0GCLn/xTlzHYYrQ7Zhc/3FT5nsN1WME2/UDhT213lSMz6DXBXtgjTjiJzBIpAC6qbJ48z43RTOfrXXqQu0HLZAE8VFNehbuPBbyigreBfi5tsYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie1pMHr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie1pMHr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC86C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717141462;
	bh=ftINMNTI9xcQJ3Xc1BcwtMGFGomUrfCCSVpc0iPjB4M=;
	h=To:Subject:From:Date:From;
	b=ie1pMHr9qG4Ref1jI7DI/jwF+sM/vxlOUMH4yQbhp2a5rGkAiifC2Q2najVIPmFs8
	 09HqdthVLUFsMErwgTLzg8FrY8ARiNsb+31NPt74MfqCo2O97fqhpCZTkfQTW4ZJGR
	 ONTay97gVb1TsN2lwMocSBRH/XKAN2GKu5NpxGpuWL/l3zNfyV5WADZmM+nlmTFM38
	 d2OAQ0EuBBIaaI/0ybFZKLpLYhYFeFPsngOSpwHTsr95Z8kJABnqK3szyAbhFfA5KJ
	 G+hxLs/Aw2NBF+RePkDpGrgJakLKdXnChel3OZ5vZsTR0viwenRsmAGcCjIW2NqQPE
	 IkX3LhvUTIL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB90C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714146282.10414.15361257635045539480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab720847bf06d08f75ca7862bfbec27c292926e5d6b0d10695890cabffc2723
Date: Fri, 31 May 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717141462
