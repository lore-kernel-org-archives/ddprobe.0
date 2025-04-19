Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C23C13C3F2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745086194; cv=none; b=aHAOeX7J4tVPnSjIVQYpES60PW7E9c+U1ddXag+oNDBBBDvsQv2NRkMx2NIhLBADb1gAos87BWVwLmEDShe+wdSshmHznXB93mYzzS+88BlwP5weXjuRmk6TvR5i3o+wtrj9+IRux1I3PRdgZtb1nsUbifjhVymdjUljyLfhpBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745086194; c=relaxed/simple;
	bh=wl4y5ZCXGFXGowwYumumkv9S9S7ojxTYaddga9KVDJc=;
	h=To:Subject:From:Message-Id:Date; b=aI6tsR+MsjL5l0ls9LSXdZP9ecigEtPJ7/fPIIAcGm+sFFn9DcMlrwUDvnHtBov4FvQqgNbxqyjBjos0v9su9ZOElX3Q4RDcMc9tXxGfH5gDp4wjSBAMUIcH6Vzd6e/ak5vP0n6+njuQebslP5u61J0Martos2M6+nyiz1JoWJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKVpK8f8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKVpK8f8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EDFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745086193;
	bh=wl4y5ZCXGFXGowwYumumkv9S9S7ojxTYaddga9KVDJc=;
	h=To:Subject:From:Date:From;
	b=DKVpK8f83A2GSQ8juVsHAwzjD5IH6L06Tic47+eZVZRaduTonFyLhkR8TEcMfOTtF
	 4PyVLJiuiJ9lIndV0KuUL1u2GUUJRA6iSEDZpx5SOP7PBB0HGMPMrHgCUvT2/adZv2
	 Wd6nXmIKVlfTtmVYEIkONNpWtId1lgeG3MVodJxkpMpXODT3S26W4fWhk3CRYTnWxp
	 d4NI80RrYZ4vRqzzfqEhkX6VtialQhw+AJ/dz1tI0jiqBpBqWx/EbJWJ3N2Qt+rXPH
	 +Lz9FpUPAo7L4gncV3E9rv3ePI+B0Mbsy4O8Eu7laU6IaRONZH/oxUzInHkVaooZKk
	 v66J9TrKPBNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEB6C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508619363.24495.5779062207379905311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc91c366579dd77e31a6b1c348fa13a839a14ee8cfb8a8b901579bd27b504ed
Date: Sat, 19 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745086193
