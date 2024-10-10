Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D4B1E3786
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728603354; cv=none; b=H4O58mW81TcXN3EfeTi4c3lGTFifu9Qf8GOri174Mlt2uw/IWbwUa+27JmZZoOMBNpwK/F/hFQBmKmf1wYviMO/c1u6TxaxDqXhT3lxo0DnJlYQKtVMlby/0HOf+64kWO3F50idKiqlwuKBEMSLuhgE3fqQEYEgX70JrIyeoiX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728603354; c=relaxed/simple;
	bh=xvERE0BOGpVZ5Fnm4WmLAbPjF/IjQ0e787FZHwNGIlQ=;
	h=To:Subject:From:Message-Id:Date; b=Uu5qd29V0ZjYCn512WjOgA6AOM6RDnuYO1/eeVgzk+a3QWRceQODiAiqs1/qCvXkKxQwN6qxklhMBbSmJl2P250hsQ6iVvS2XJ3jFpC9hX2hAxBBQ1vlXYuxe/XCpZXSLlM+bb56zRkzRDt1hTmrKBf7HDqJ+uqBBJMEIzypbhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7bWKWC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7bWKWC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8FAC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728603353;
	bh=xvERE0BOGpVZ5Fnm4WmLAbPjF/IjQ0e787FZHwNGIlQ=;
	h=To:Subject:From:Date:From;
	b=j7bWKWC4fUZI+PFJYB2SHt7s5X5bym80U1uwYs6nJ9X/Ujvtm02k1DcT7mZ9OgzyP
	 muTA1YwHpmnRP948beL/XikHLCadhhciEDMlHWg91Y4FsAOGn0iK72O3s5cKyUeM+8
	 vWNbiWdPNDwh1nrPuCuTY+cx9+YXuTH8bvRzVb8r95p8zW+aUxNvHt7XQWZoSE486m
	 wJNo/LQF7XFcWcc1zXPoptj73Kq3mzEdEB2qzEH2WHQW6mB6Aw9RtyFIxxm6AyAN8g
	 Ss7pX9Yt22gAFdQlgGz9K+1Rx+iz7hsAJCkLcmzqYamOR++W7QqUHl0jr069Q6vy4X
	 UiiwS2eUxgbUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A789BD2444F
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860335364.17008.5670563565744744945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e31326abae874cd6bda33a796037a079c4e35d42047745192d2e38875977cf
Date: Thu, 10 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728603353
