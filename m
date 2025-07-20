Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214F172637
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753028394; cv=none; b=sjIsuiHhVw3fO+s+GAPCZlpzr86gZAz3G2FqKIPnPF0X7IYVykNaJDQIG4KmdZZmFS2aYKJNHUMtSUI1R6++uKe3yZPRwjHPPi8hoGS4wJx7Y2HzCiSQ+/7nugetej99/4WyqP+lm7WQ+7OqKB6rF/D9XSRy516r7Q9steTGOXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753028394; c=relaxed/simple;
	bh=n6esBJ1nHYL6eu2o72MAwVpxKt8PusVLl7k3TgifHs4=;
	h=To:Subject:From:Message-Id:Date; b=fa8VRGJnY6BnUd1MJVGZrHDRpMtivNdMRLPJe/UW3pIKORWLMvAO1kIfe32lwN8SJt/qsI6uyk7Im1AevW/ATHoEU4Vdl0ynlxPYdTDxpxMEgxQ0QfxJb2iEQQEpK7AAj26rs9UbIsYBRXu01cXhPG49dCl5B0Ia6XoGUc0DF1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFvq4z/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFvq4z/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A897AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753028393;
	bh=n6esBJ1nHYL6eu2o72MAwVpxKt8PusVLl7k3TgifHs4=;
	h=To:Subject:From:Date:From;
	b=sFvq4z/cq6PcqQvuwz2yB5I46g2qjfDdUeeJxzqL7wsBQUprXcajZk2vrEI4EbFcF
	 fMciea2r/yMILtbAqGE2yWe4ewBS0ERaVTOk21EqQKyXUwk1Oe+MZVFdIVM3hMNjcR
	 Mk4ipWaj70690OuPxDTi9MqNn9Zbi/47zXi0lYTvDwKRUzkyFPRMqJm2HDW6nVdPy7
	 hdw+Hty+cWMuJgPaLEUdMoaqvMUdYWF4c+4D5Zjn3TSw+DrF74kD8w03E36iSAdW5c
	 zDXj4dDyUCHvYGt3OGietdRUFVOt4zB8ql8GIzzkjQ1IVtMD94oBRCVfMgSrAnXQbK
	 epYuqdTXoWeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FBC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302839357.8091.16372764129795493378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b9b489b8a55458bbd18c04e29091653ad2e97e9bce3b036e8cfd99f87b1c98
Date: Sun, 20 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753028393
