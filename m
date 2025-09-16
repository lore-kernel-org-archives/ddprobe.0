Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DB0323F4B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758059996; cv=none; b=ofwsFibNn6V11XFAL3pMmLlzs/RXmvcVL3rWkd1etrYu3mesF5a/Pa1dMFzk61Rgb1dbtbl8HIIjGjrB8jNq6pEmpyLWWwqmeJF1HzUoRpI8LgaHFCxM0taJ0kWWFLGx7XMuRelSSuPOJ6XlkyDIHCz2cOx+Ho7FsXKRI51KrRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758059996; c=relaxed/simple;
	bh=Iu/eX6Mx2TihvHC0IIkyMxvUCNd7sZEyGLykLBJoefs=;
	h=To:Subject:From:Message-Id:Date; b=jIxselGQ3NssAJEnsFC+rJVzqdjCkoYvXErhe3Y9lX07LmbO/uG95PszQluTHmhj4XU3bP29rr5yF2eQI7fExNCvV1WVrfODO+Jn7GwbeWu8iu11/0QZa3E+D9kyjH+dELS+f46j/32TcL53PqIsv1odRlZvmax+eo9kRyhLozg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUBd/GhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUBd/GhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758059993;
	bh=Iu/eX6Mx2TihvHC0IIkyMxvUCNd7sZEyGLykLBJoefs=;
	h=To:Subject:From:Date:From;
	b=mUBd/GhWTtRoj0r6JfM3e9v1tsp8+7zafMtvMYsBQcg5G9F94brxrBotUba0tiPHc
	 lGW3tPh/MS08KgxHXozDIUU95SOYLe2XHZtXTerZrP9PMKXabHt2NUktrJPqTOP23K
	 v1QDNgUcX6JQvU/OUM5kU48mXoCpp7WBzaKk0Ar6jlSkVh3ZVrGffmnGmfaS0SXOTu
	 rCdfresJN+CzmMcdWSdSY9Y0TVOA8zjx2AH/RrjIfVBgMgaNUm2q51kvjxjj/oCm5K
	 FaIOS+OUiR75JjfLTHpc2O0NKZQlBzGV1UNIriGtpOx1/ESi/hc7ruCDi0MAxV/uJg
	 CnCd7NBnVct4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90438CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805999358.2997.13136107903954397137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6412750ec64b1589d95daf2f25c949fef6b37cc6747f7291d8de580dcd9c9f00
Date: Tue, 16 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758059993
