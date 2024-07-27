Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387C14411
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722076554; cv=none; b=rHMRt0b5ys9QNEErnZbEk032eGmvpX7DMfipoEQbSPfQYXMv/1HmxNjmvoE+05gSCOcdTBtd7Sl4CZs/v9/83Dyot+oxOcY3U3sPsa5r0cQwigxzZyaWingW+VGxcetjtxyko6i/GmhdcjaPG+aoZOOutS2Abra8mxNbopviumo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722076554; c=relaxed/simple;
	bh=/pGVfQCUkTYu3yCaTt+HqKJPHZMa+NJrWi6+rJu54SI=;
	h=To:Subject:From:Message-Id:Date; b=XSFAE39WOs0N3QKXUjBUIzAplasJsdF6ss6ldY0/sgreWiXTTWeBHGqUA3RRXHWkP3JFxIffY+BakvEZu9r7z9nxbnr74F1Pil/7c5lO6dv4yoM8uiIHQ0HVc3nxIFuyC3HEkX/n8+BwMMPhLOhHOaVtQWDLSGibpkpLSPAk/Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYj7IDD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYj7IDD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F99C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722076553;
	bh=/pGVfQCUkTYu3yCaTt+HqKJPHZMa+NJrWi6+rJu54SI=;
	h=To:Subject:From:Date:From;
	b=nYj7IDD08gZ0UpCtXZhPuXFDBv76oz384iGFoHw0zCug82XGrfuR10Bc29l3gw+Tv
	 USK7xsBZxZZQgeEbQwUO7Z+yZz+JTUGT2YR3Qh5rzZVp3AIJ+DlmQAJl//7oUBDS7d
	 tRb1Ls9couidNZrBC5YZNMYHheIoH37irj+lgkxzxarbPkfRRaQdsSaQCWZc72ungQ
	 HFXC+62suO1gkWi/nnxBEc1VpTVeEPv8Ba5JV5hqsDVBFynJZHAjHNoFZ8ET6X3et1
	 gsz47oy88Xa4SbaUk4JIP64hFIzL50Dhyf51xtM/cF0TABTbWaFSPcfoLXBVGMPo4g
	 B3Hgv+ZNkXZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D58FC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207655361.11100.11258374335674015513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196d0e984ac08319a590de9b398b936a67d4145bd8e7d67804aac87124d0a0dd
Date: Sat, 27 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722076553
