Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F53C303CAE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782500314; cv=none; b=PbQsrBAXUzX+UJywnF0sKM7oYOqdiD/dIcuYj3CfNtjMskbmiHr6yjdp8p41Cmj6sCoH+RmVpHNWOlG9Q4BMZypom+/1JqQF7YxOqYhNuMQPdjdLMNfMcCWrpwUmPc+sJdIxZkSpaA2FYdfVedw2K/7BZo22VNrFixX/NMCi/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782500314; c=relaxed/simple;
	bh=z0SYKSxbPZcSy6FYvRbBBvutiNnnjni7+Zq5efhiA94=;
	h=To:Subject:From:Message-Id:Date; b=Rg2u/+tTIjMdFhkbhPA+QFoIrGs47A5eO/9hFGVgicqNhZfzYldc5pb95mvohY4WQ91k0FAK8Jh1+Lq/qGUP/V6cxHiNCrVE5VCbUe8sAAWfnoryDrkC5Dofa+UzzXFU24XSIMCHdCTzHBV3e+ZdqINUnnRPV3DJHRlypjxO6fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJTPRX+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJTPRX+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EA5C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782500313;
	bh=z0SYKSxbPZcSy6FYvRbBBvutiNnnjni7+Zq5efhiA94=;
	h=To:Subject:From:Date:From;
	b=NJTPRX+f8Kq7Ip9IsUBaNR0MJFu8n0RXgyyDt5tn0D53gc7mDGqqMFjY9AM4k6Ehc
	 yVT2gecjAth19ydJDdMjoN30FpLfE1XXaOZsvQZa4hPeedQNhkLaYO4QkbRMoejcC4
	 Sb8wnBKuw3H8Yi2gt2bglZROU92LM9I61o8+IMGY8BwngTjnLdM6bP0WWV+e2uJt+W
	 9PFHFcRCEVYLws+ueEPNLQ0TyyPN87zi202RifUs/0rxHB4Qbe8WtnE9HluJ8M0uJ7
	 7ocpbJQbbF/ndALthpjPwY5JdUDvtVqB+BVb0pv0Evdx5C+6yrye7NXPhmt3W20tCv
	 luUkEIBcq/C3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF07FC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250031370.31959.8080678148051230786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a820f1325785c6fd9ce7c4550bca2fc0bc54ce1284b47a4db69ebc0427490bd2
Date: Fri, 26 Jun 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782500313
