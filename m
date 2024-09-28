Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180684A08
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727507754; cv=none; b=MIaiESkrAr/8Mjq/xQOnKQU4eMMYbJDHCiJACCUFPZZ2qpanF9jIlsqRfFSf41ZZRdEzB0RIJzs6LuXBALw0blUQeziJt4pbLNeQiIJjo6UawXHpB9jDAyg0+TON3dsySkig5QuqdRQ8lsrIXg0V4UR/xtRPQlUvkT7vFNOQPA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727507754; c=relaxed/simple;
	bh=SHOPJJEU39U1KS2/j2p96d8FFaHNGMmeyXhRPJjhHoA=;
	h=To:Subject:From:Message-Id:Date; b=Fs4SoXlmUFpG8cPsJ1N5x2O0iLJxwVOEVoA2h+TmbcPvoRKal61epj4ILVIA7TAIqqVDWyis1D6tl3I6A51xpB69SDfDXws7nc3X6xd+I7bKi6M7c/Bk8MiI0sBhxXRXAmXwH2GZsrTHg2RAwgfQlObGZIU9g7ecXQp5v/t+7zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab0rJUqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab0rJUqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A641EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727507753;
	bh=SHOPJJEU39U1KS2/j2p96d8FFaHNGMmeyXhRPJjhHoA=;
	h=To:Subject:From:Date:From;
	b=ab0rJUqZRybxGe03mr/hGrPAexfKFQ8kp6M7YSYZHuVs+G0gFgacPy6ZOQT9gQgvc
	 3g15lWvuyjisycaIxLQ53lb0RFEam4x2jQYA4UB0CGzKOHEer4kfJk1/olUP0dBgxm
	 PNF1ZMEcPM/aRqTBJkMfzGP+Zfgze/s+9hS8hX2THmUVQyICI8F9Ey451b5FeoGEgt
	 Ld9FTDEMtFpKXjjIsyr/Zdt5izt70xTN2PxvYndC9swWeHCyGUvZ8WaYWU1z2PwLAe
	 xFREc263dy9a1X0OeNlw8FhoHYQ8eQ0GSiBnmbhhz9EMFM587xlnyXjaVEQ1qFQoNF
	 bUsbV54Md28bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F9ECF649A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750775357.16320.12229005827241726250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c4880cb7a474db752609e49715fb4960289edb4a1c99baafc524b486ed08e9
Date: Sat, 28 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727507753
