Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6037D37C93F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787287834; cv=none; b=eAfdXGNwv9/XvHRSHOhht5p04Zq3Ivek3z9ZYaOtrh21lmZVtsDoKc5mOzyABFkPjPaPo6mMCl/7h1TWvrUCj30vXk2BwV1OhvhnlkeGFyOxvrn83f6BBmD6LJAwDTwttGxydsb8kKI45HxTn/CTSR5aiOOPbYDsAgKJwbnMENA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787287834; c=relaxed/simple;
	bh=O2/ioVIujrUCQ4sR+uWAdmxaqznJhjuvAnSD1LVpEgQ=;
	h=To:Subject:From:Message-Id:Date; b=YyB3cS/2mN64m3xciNd5Symth4sIFzs2pJVBIBkiQ+H0q658sWX3Y8HxPDRT+zPUx6rTJOnLs7XVOKYBzBfX2YNbJhlV/MTHNxBnRHDn+0IdE2A4JvZnnRLAQ26mwhysN26udowJ07kgjXprdQjgquZYUoDVorXOchvUVzk89Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpxvsJ26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpxvsJ26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC66C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787287833;
	bh=O2/ioVIujrUCQ4sR+uWAdmxaqznJhjuvAnSD1LVpEgQ=;
	h=To:Subject:From:Date:From;
	b=HpxvsJ266864TazMVK4M5JWHvjam3LFeLiTs2fkzd0DowrS9J/9HX/yWG7SwGy7vG
	 Ou8AxWgvVLbYHhvslFWJq+ooSUGD2Sj7g6nHVpjxmBCkKFnhHdb51zMSI82dWeMR3z
	 dX4X1gCWO8mJhFGIm4lYaEB8/wMNlzSnR+TV1Iu2l+4P89O7sWh+VleuyUGnofyROO
	 CphfgGV0Zu2Zb3QjSu5KGaQIAFQYEAynpnj1a5Z2WS8Q6o49TC8SolfmeSJo2pYbSF
	 rxIDbQpcEV5ynE2r/q1G+fG41HMy/Ob/R/CHZvvwVTd72j73FGBn+eV/5ZnsqXDTCN
	 G9AH2D+4Pj9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEB0C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728783368.25488.17388804436805233768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f80d70c090a77845bdf581dfad1bcc46b8e2d135c3ea2c15938c4c6d5fbbb9
Date: Fri, 21 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787287833
