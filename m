Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A0627EFFB
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758643794; cv=none; b=JDD8brFqPILo4zATQsFsC5HfMhOnZ0+u/fJ7NGXXrThEaldN4fxakEbQrYhY8bq+RX0y3aUIHcZ453NPUvkzI8H5cqgaOOMeXaqgTrywg2yzJNAgEC9V58NONOkTrQjyffDCydP3o+9qZlmvSl3Y1CogbsdNCqbhQtJ0ESW9VyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758643794; c=relaxed/simple;
	bh=x1kc/NYML6aqz8GoV59A72ZIscDbVl3zux4hMC/BOIw=;
	h=To:Subject:From:Message-Id:Date; b=M0zyJ7aJ9i6x/ESSr//VqTWLfnRIUUv2K6aCs0/aGLXLMuFlKrDA6xcwNYJEmS9IHa9I7Mk6cguj9SVp8sTOKEo7DvehMJVbAQwUmFJajX9ans4Gu4ap4YquE3NGoZZiiz1V/jgO+fwYSilHGVmInxk2aahAnYFYKMHteGHC6zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCeWUYlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCeWUYlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758643793;
	bh=x1kc/NYML6aqz8GoV59A72ZIscDbVl3zux4hMC/BOIw=;
	h=To:Subject:From:Date:From;
	b=bCeWUYlQ4Z05BWRXyfeEnqlBkuczmIH+1pMC491l63QQOtZ7PKwdK/n7hoeRo342F
	 AngszfF/Y4tFOsJ2LzuBvZLczUBM9cUlVS/JtHPiyxde8NjsrLPsPyV5acS7JmQN9A
	 8SFUQ2TO2mnaWvycNqGFsgFBDXoZuYb85HGzg2LD4oBH4/gS45gG2kQDMz1YGc7D7Y
	 3fsFtjLKti7khxlHjMFUblqT08RGtEn9bJihXUKBQCjBVeAczCnle/Sjy9fb8NyMZc
	 Mh81QLqpOZfiaO5/8p+rLe5awIsB96UPuLS4tH79d2jk0vh2CROyk+ofOnDqoJZWwZ
	 K7C8auKI/Kxsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF3CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864379360.19340.8945847622686671248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ca40c95a666e56e410e7c0121dd8a5ad923a1d5eb8bb43a781664d3d363ae0
Date: Tue, 23 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758643793
