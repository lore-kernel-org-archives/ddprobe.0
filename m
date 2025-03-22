Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF71BD9C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742645394; cv=none; b=SViGYxRKDXqShog7hXhbTg9lm8XM9j1XSV1jmaovgZC1TnbZ7JAkz08npzUQIBALhV5WKlyZtajPMqLseGj1KB5kXIWhpkw/F3GKvd678J8cqhtL3mjm2NQKWwBXOLwxa3uGutX6UDoM4gny0CwWrdhi0xy6Y+JzTydg+YtmIqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742645394; c=relaxed/simple;
	bh=SaISxvT+paQt0hw7xf5Y2CtYifyW69MbQr8Njsd7KKw=;
	h=To:Subject:From:Message-Id:Date; b=I1Gklu2yyGPFesU8VuuCeml5OuQDqjwghiwpSnjYIeUE08jwKnfU+ZYDCUtfVRZRCWiFNxnaz2jMDeryawz627WgV0gxNO0ag4Az6pejrjNLfFPQZYT6pHTBbaGxOyj+nL5fl2r0mGz9HCoYeUat9ScD5NXD5QhnIqCWnjVbymU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkPih5y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkPih5y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B460BC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742645393;
	bh=SaISxvT+paQt0hw7xf5Y2CtYifyW69MbQr8Njsd7KKw=;
	h=To:Subject:From:Date:From;
	b=QkPih5y0le511nEfXzAGvnF4vjsQ6P7TUhr86x0Q6g/GOrXNNwn8AQqprpfnKrpuP
	 BZah/k1k3khsEDdxLraZkGUPeX11TnkkAGUTyK2ryRJdlX50eQHu7pi2ruW7453Cqh
	 72HWYnDrOOYCldXLWHOSDxwLgGdPHtNbsbDi6ZuKpH39yShLaGhG9jDb6blYdfcAO1
	 2NyOwKISBLpXBH8cHbUOGbOfw/2+DaiIxoXYY9W3vy3gvPlx+MIyL1vQIT5gW4kFVQ
	 IRbQhUd+3sx+VKaPOhDsNOKodq7Lj1bvrOhDFVLqaDcEe4tUf873AyAYIaSQaTp6Kl
	 Xnz4/AlyFrHHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3355C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264539362.14176.1918982608242084957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab365057ebe38ff67116712cad9def0a9bb343e52e0f6ad30b9a2f3e3d13c5ad
Date: Sat, 22 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742645393
