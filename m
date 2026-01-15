Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13397264602
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768467234; cv=none; b=rSU/PBzHX0Lk76/N4t57i6B8jtEoqbbIRW/+IGnXSHWhiX1GG5IK4XGcA/31S21SlurBXRfRKYDVIk+Az4DSRlYWHfVnnuAjC1/1IV/gkN9W4021wZJUP5095xQhL4V0kAKCUYxPeeNVQjNlMVJ3Q63WSaYOP8T29YICARU/zv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768467234; c=relaxed/simple;
	bh=zcSXvvR2qRvG4c4IbcCiYFuqE6QJESea2ufG7eFHRkc=;
	h=To:Subject:From:Message-Id:Date; b=pB5+v4KtRu0usfkxixoddfFqDHvpPob+jMHfOAiLISOx46A/M8Ihc3wycRUr+msvYlXeXYvOhVWbFg2T+hQh0eJRnF4f7Lmapms/5pOg/zjNc53P+OXSzyxcHJfVyVRFVNCAJHJhDjkOgkZNBfwuN+BA7tlFO8gfl3cgPFdwe0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XX6rW2dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XX6rW2dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768467233;
	bh=zcSXvvR2qRvG4c4IbcCiYFuqE6QJESea2ufG7eFHRkc=;
	h=To:Subject:From:Date:From;
	b=XX6rW2dAiuSQVm2Ez/GyTyXLkcKhn2FkLvSx9POGkt9zNucYdcpqYullXOKKlKev/
	 gReOqn0cbMXl79+bNe8V8faom14hY0jJDCKE6PbqwwjM9D+9akL14t6wuskz2ctbFG
	 PNUyngY1bnYKdaGzzdO7g5qNIvZ/+DyCZqc5PTdPpudek5beK3EclZ+bb51+hXDrgP
	 o3GClIwX49agME8GN2/kHS/+pk9hJc1812InoAPWlQSr1vmLIygMdk+gHn/Xt1DjU8
	 a6lhXM+9EgU9AxX5Z0tOjmW9BkbEmGYZZ8ZfpOgKRBQ87nV3qY+4k1sWOefYdv7HuK
	 jIJNPLefhj4kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9352ED41147
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846723358.8861.3309981582206708341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4961dbc970e4522b58fec5c1099963c9597b26344f567719391f3c6891d34c1
Date: Thu, 15 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768467233
