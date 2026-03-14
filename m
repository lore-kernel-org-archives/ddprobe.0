Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE4781ACA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773509694; cv=none; b=snoFygPW0HRFldgNbVSxv5xWIOIeltZhhJcvyvJ/GU3ka2xGaASjSv6uo/vGVxSxtoEgCbWed+wPkZTLHgnLTxvj7Dd8CBgSNJo44w5xEOCpTG3+5WCfL/+1EKmgZMvwHMgkQ6tFvZsI9kgeg5RLCV/U5SWnSo5YlpAhXrtgV7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773509694; c=relaxed/simple;
	bh=4c5Cf/OGGWdaxMDnkOWZpW3HDNlBMrmLVKhJv/Itpbc=;
	h=To:Subject:From:Message-Id:Date; b=DSpY3HUd3OlZpDhAAiDTTHdn5n/DXyyc2KSh/yja2FFffKU7jnOlHX90zOfCHEPeDt9B6wmzvIySR0O9QNby/07QFQnWrQGr98c00Mxqr8lAWMEvk3Y2EficcROoTsWlNNcWdjHVMhN3olJsVJ1JVVPjsl9dTwK75pnKZXo5070=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmlZbXz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmlZbXz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773509693;
	bh=4c5Cf/OGGWdaxMDnkOWZpW3HDNlBMrmLVKhJv/Itpbc=;
	h=To:Subject:From:Date:From;
	b=JmlZbXz17QLLBatChUYorJD7TX4esaIlm3vIlBx2z/FqcTzqDhaClu4qxJ9UNw/ag
	 kO+wB7lCULkUsf5XbYgjqpgEtU/BQEFPvpzNFR7x3sj0JEINuROqqWPVIZ5NyUkOO3
	 UECF6OHeCkYFqJNidTeLXsRdr2Hbdd0TrRIw/ggxyMIULRHwGz/RsHsrXHSpc3nPSc
	 AmW+qaH8yBCxPD+3nJXiym3Gz5XgRBu1RuTWn0einZeIcJBpkm/WRQKpEdZTKaKBJP
	 jfK3cEYxMDzBIaDNTNvzPjLvoQIh9cOYujXOQa1l/cZzVDOWX0qtvN873sdJzlbt34
	 gg9wt94LFknQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F210706EB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350969358.21676.1609529095837646835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d36edc599522ae2c6b7b89d32847e0c4919509246b2ad6696b2aee9be7869fa
Date: Sat, 14 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773509693
