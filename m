Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11911CA9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717919843; cv=none; b=ZSsoiW1JbKinFWcWMCjFX+E0ueHudF5L0ZXMZ7ZhGr5V8WF+cn6eq/LVIky2QreVGWAqY+g6MGMxuG8TGLCnLFKIlI4k2fyKaI3Hno6qpkH1HdPmFppr1EJSRggh1QRsaozKon56jg3XwOFi3jXD0v+tkajshIPlh5ZXjzAJE6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717919843; c=relaxed/simple;
	bh=u2YPaEHxneiu/AMs2hnRizBrHe6jsx7o2bC9mzTVVG8=;
	h=To:Subject:From:Message-Id:Date; b=HCBp8c3+s29FKcM9D2itUDUoqDgCIr+HdxawZ9FcRZZgnSTuIG5WpWJ5cJfydtRMQ6gXdbX0XocnCfSn/0vnpSLdXZzUBmoGLTv+ondi72QxsZ6LO9DJcLwL+x/0I8DrmcWOucH+e7NQGBOiQ+CqSa6uWD+dFk9eSBmmPGQnlo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtD7ifzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtD7ifzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93F1C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717919842;
	bh=u2YPaEHxneiu/AMs2hnRizBrHe6jsx7o2bC9mzTVVG8=;
	h=To:Subject:From:Date:From;
	b=WtD7ifzXTVTPy+Gfx8q2sCADYmZXvsgSMSWexm2kZ+9lXWs1/4dELUXzsleoGqxRV
	 WhzGtFaJqyC8ewICZrqhjO/nm5geffXWsE+1y4mNYmCiiKnrMbJwIgRm3J3G1mbWE2
	 hLuHvxZkcCSitiCDc0JldiY4S5E48JNFHQ0Xim6nv7ZkLTE0cBCijL9wbGUcSY9tWp
	 TeuZXP489rvwNsvS0Ol/75sUpxvcTDD9xiTplqn7AzAwus/44RZ9x3E/xbxrHWUfX2
	 nW/FlYCIpKj+1S5G4LfFj6o6fs6RG6Bhw4sctqctoGDKZBJ1TeVZ23WiLG56d9wDHJ
	 VAt7BuLUBw3zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5414C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791984277.24526.3788617563508186745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a63604ec141d5155a731b7e708af365ffdf85ffd1fe8f6d95e78b68ed526e2
Date: Sun, 09 Jun 2024 07:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717919842
