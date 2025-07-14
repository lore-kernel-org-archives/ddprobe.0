Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8311CD0C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752454194; cv=none; b=DlcX6IaepVlO7mbhgCMwJwqhXP6G0gfnq+HTt1xIUg0DIIUlugx2L+C17qu3PtzLcSzDoLLjScKrqXyqp/sKfY5qGNrQjjKkMRMgxbiWfDcKRYVOVoSK583xVg6R2yNLtoi3I8SwOj2jhroSbOmF6YsyN6ePhVatCmqRvkpQaKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752454194; c=relaxed/simple;
	bh=k143CsXoip253dHnJsv4xWGXcr9nwdntd33X1SfHpTE=;
	h=To:Subject:From:Message-Id:Date; b=KMjOzT1sIFKHDlguNw4ewxIyhoRbwofKMDH9Fpm2mbcPpUwNM6tH+8dX8xJ+hqTS/7xDhorg6TYi1YqMNzjRmxRAYTFN/+K5r/DecaDgbGiQCR/bhAHlFXaspPgZitx8wgNsCIK/9jDdJqI29ARob+RKsYyiMPkceRZcxesoOnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lM0kvaZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lM0kvaZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF3C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752454193;
	bh=k143CsXoip253dHnJsv4xWGXcr9nwdntd33X1SfHpTE=;
	h=To:Subject:From:Date:From;
	b=lM0kvaZlu5NacOT0j1jMEiLcLbZA23SDgl5tCmfDLP8lryoqlO3oFo+gY/m9+Rjqx
	 YxwxfD7E1ALcLs+3Pkoby4SVpyPCLlgKm3it99Ic8LemyeV0SmdhWlMmglGJ3HuNKS
	 0yv4H3UKvjFHBPiza8RNs8YIoE4fVbJy/pbsYQ75Xtisu8SgkiYhAnk8KAFXz+zS6X
	 Giq6T61TH5yCSAwJpsk+jN/sYyfpIM2aGkabIxS3KHS+/lewG1t3wtvYu09gtflcb1
	 j6jcXU8A0jLhhXoMXWaY3zOmSORM5L9mEgSgm9gerbIENb1iJNc0fm+kLz9/nYPlpA
	 ACI1pOvnTgb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E814C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245419357.24978.4179247406796469131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db594b680827d8e5f80703029bca2c73c85a8e06bcf283425c78c9362c90b91
Date: Mon, 14 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752454193
