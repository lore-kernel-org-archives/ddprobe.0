Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7AF7262D
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752968994; cv=none; b=h8CIkJmftIQzW7Wa7FEgHcedCT2KDSDYiuWCfwRlYDMKGQPjwpnGzgof6SaocKFa9yRWawTVnHfiWEv2KB/EuxwPTPL5b5ObfS6EB66ZxxtnDbTlMG1nRJNZsSVehDxubmG1zc8fom9E8r2JFUohYj+uptOMMJ2Yi5QmGxeN3Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752968994; c=relaxed/simple;
	bh=XOasHasCH8B32b3sdMLwpsDxKXVkcy6n5FRgIL09cGE=;
	h=To:Subject:From:Message-Id:Date; b=ZlDNJo9iSNXbI16OdtAxOvZJuDTMwtj+IGdPECczgLsXkodHH5vpKi+Sjm+ZGwavVv+zR5CCYYNWfv+nEIlVZPs+42MLKJKwE+iWlIJMO9cYfhkwwC0hKXZWjXVeeYDJh6KH8jfuca22tme7fgN8aqCmj2lAJA9V3O7asvg1gZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgW6SuLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgW6SuLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752968993;
	bh=XOasHasCH8B32b3sdMLwpsDxKXVkcy6n5FRgIL09cGE=;
	h=To:Subject:From:Date:From;
	b=cgW6SuLnvgBMB6u2peimYzXwGUBtbMvEDw9ySEvo9BENhql0eOnJmcxl2cWHjV30/
	 tPcdT/eDHCKdE48xXX8oMgdNlsa7csvo0mtUv2iGUNLYWO1IQcq/40csivtJ3KcBx3
	 AxpCvBPDVrM/y365AdTZ+jaqnDn+yIkG33IKZtY9ZxZnpl7Ou1kLb7fsk0MALuXnYB
	 mw3dEdWdsk5wFW2MoJy4DETVbolV9ZSFrMu/2167xkiODS/712IMQGJd8giU6azzSA
	 Zl8jv//68PZcZrduCwm6PuVQJWeZUZV36fDJSfvyHAx+ZGwgHNTibdmrtlLvCMOnpp
	 91/NnP6HpjT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB9C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296899357.7764.1717573117594276799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700ca0e26057223b5cff9ec534d4cf5413d9f348c749cca24f446cd7d26cab16
Date: Sat, 19 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752968993
