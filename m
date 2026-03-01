Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B54175A86
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772360694; cv=none; b=b+CfhNI6NgLnZHSnlATeryrJgfIlk4h4fUuex9jPpp6YPfMwKnQdsmfmlljsmYzpUbVuIjdkMotspNZAkwqiaB/YbjxELgXDXSPaby0h0Uyl4vkgY1Cpqfnldm6T963C3phpkKXsf3NDl4ul3kFWaZ67rNvqGCl5/kLo7AL2BOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772360694; c=relaxed/simple;
	bh=3OAbZjsTBRA+AmRErrr9SIHdOGNJCrPkiuCpF4m2fbY=;
	h=To:Subject:From:Message-Id:Date; b=Y1iiY1HRBIv69oIbR8gvHtDdQTXjnT1jFpQ4ZX3WEIUOZJQcyAx3/cIK+89z80DZ0+q46vSo9vUVnpQfwHkMfqxyaGrfjT4oETbixgokcCJ0fkv+Iia/MXA2W1foVq2rH9ZHu5b7jClUiKabHyBh+XNYENMAClZFOE+odF8+8zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPpmBfrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPpmBfrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C350EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772360693;
	bh=3OAbZjsTBRA+AmRErrr9SIHdOGNJCrPkiuCpF4m2fbY=;
	h=To:Subject:From:Date:From;
	b=VPpmBfrqCNvEMI1keHmCBunmZpvk/d44zFKWNB7APjamrI2TD1USwEdxZx3qER1vc
	 CPywGpBFOS+zs+poPJJD8NQjCsBnFpFzWPZBvOmy6AVSxHO23+ZGk7Tk94nNkObH1a
	 TANaxrgvSdpyUNtjk6zvSxmvWm9iINajnfJLjOqqbPFrw3FxDeAsU/1pS6jL76JmNX
	 /VsXVzPB+5anSYsHn2uDJzlmJZm8naxS/tYkODIueVySR2D0aCMy1ouGx5pxmSgBFc
	 QnjRdeFG/Xwu6riaq0l0Ijh0W1OrCTI+r0+xhZunJgFvOe8owbvyfYWjwmur7nGJwE
	 oF8eWI6cpysdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BBFFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236069363.17483.5722824045157510425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8cfc33ef7a81a550fa3a03c8f7f8605a1d0c6ca37dd684c397c9e802023563
Date: Sun, 01 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772360693
