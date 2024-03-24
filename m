Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083EBD2FA
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711312097; cv=none; b=sr5eZ6uRv3LVQgYmlcYjmd2mQ+WGhOQX7R+D//BOeIKCxfYsw8b6FAruMI4Us2irHxC2EfFp9ulqRmi9KAQqHYO/QRHp204egNixAt0XN3YckIaOS3KXMcpIfrNZHRFcAOCN9G0LgqWIeM22y6uVfIeoHs7K0+UpS0WJj+fhDns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711312097; c=relaxed/simple;
	bh=a82QKBDfD1lfau2jpex90jfByi5rHDfmibI0jSMFG7w=;
	h=To:Subject:From:Message-Id:Date; b=bAucQKIpbI3ntE1+qDY2wK3iGaodbbF4xPrHYs/TY7zYK9I9Xh7nq4uHWpmL44ZiKmNirQV/Ex8yrPyWJ7A8iISRNuQox0d1HNDxnJhtK7aSkz3dmoJ4il8B5Cf60CiEomQ/h6uaXSjZF71+7u19TyIZsL3wL944JIccVqn2iiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lnqm4t4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lnqm4t4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E2C6C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711312096;
	bh=a82QKBDfD1lfau2jpex90jfByi5rHDfmibI0jSMFG7w=;
	h=To:Subject:From:Date:From;
	b=Lnqm4t4gH6O2UsehN03g8POxvP71I1DOcxEswiqfPPh62vddKdlOZ01zEtWm01gw4
	 N7FpIPwulVC/zBtujcc1sFjGnaT19vJPLeGLAOoHQUI8HK12k/Fh+C2v1C/NUEJW+5
	 VeFFKga9khJZ3AQH28BvLnsqWOOvjrw5dQRbfeuy7B/CVPCZbSOQGTMBFoBhv4msxz
	 bBzm5X3SrA5g9NLWTMxUVP+rRzpBO66G9ceSP8Cr2aWPa3FOPkGTZ/De63DbB4k4Rj
	 5iRD2MesQTlhf1dv85AbXfExJga3nkY+WEndrxd4OaeWMhu/M03PCfjmlZNC7AhcF3
	 w/YKhysr0f7ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CC7C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171131209639.4401.247265691718048863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad15bf4a2aaae3085f1b915b1f508c2c3b8f723480db12e506cc79be5890b4d
Date: Sun, 24 Mar 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711312096
