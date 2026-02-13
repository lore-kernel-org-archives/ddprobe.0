Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3857C27453
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770950094; cv=none; b=EzreABUYDjjLTE7MC9+FwQkfkHQ1dm67tkKYdxK5Q6gs8iCk2aKZPAegvWNhOcAA3kYcUz1iET1R+13VmlZXG6DF484JAjyDNN+HsMuDyS1riVDFLzeNghqT/bZB/HeExhVVOjo5Xo4BOzM0q9GYFxGsfxzdXoQQhF3IeuENWbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770950094; c=relaxed/simple;
	bh=lM6LjOOKwPvs/OT9ca8lnh04iNtjvR6yEY54c5NWaTo=;
	h=To:Subject:From:Message-Id:Date; b=pzk4bkZCdbrAtwcIhdCyKMfqbJBw75hU68gNLjJI2Os1xeekGUY9S0DIGOEcsLLEW1YEEEtqnPi9RDVkP1k2DpFzbo4+ZzI9iPxOoW/M+/I7LZuZVxxmV3+s7zP0D/TTgx775YJ01yQx2avdBaxn3jO0Z3qcFeZn7k34x1Xg4es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEOFMX2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEOFMX2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB21FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770950093;
	bh=lM6LjOOKwPvs/OT9ca8lnh04iNtjvR6yEY54c5NWaTo=;
	h=To:Subject:From:Date:From;
	b=kEOFMX2BMCWVQdqSv7OBtwq91vD4PQW9pCg7EhsCUwn5WTVSQSOtZeoyH2TWB4H3C
	 OaMiVVNIy2X2R/Ty8y5f5rzuC2h/oLHoxqiVMpCMwg9BtIR2zzqwb7xRjDNTC0C+o3
	 T9DIAUFmT9+IEBGm8MqE3DxkNt5LWd4jop16T6mviNdGZjnG8GGCYfVohdPTZtHVhw
	 92KrE3+O6LCcRoGpteJ3a39n6AJL6wYRUcc/iw2z7gE4aIhFFFFmkMOTRNcHK7haJ8
	 13P8aUAwuUzS9r7O8k9JBwWgIDkzNSAWk568H9MC4N60s4/sc3s6Ced94qjxkIYABg
	 kcDAXSMU48c9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BD1EEA87E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095009365.14956.4489085302019203536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e47554624144624549b66f9fa2ecbc17b50aa97b08a2539457c5fd8de84de1
Date: Fri, 13 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770950093
