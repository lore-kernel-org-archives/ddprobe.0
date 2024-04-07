Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C28A17C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712452097; cv=none; b=l+uzPKhPTS/JIWg6YhI8LVFwt1UxKOI07gH3zdWZcO6SCIlhfjrlY0wE+Odx3aMzMRBnZK/lw0+mzjyKYtFFq+hF0hZvl8k3PRoU6o43N+FOWcWz2hGw3De7rI7ZgMip0odGHvOcgelpMCjLnyDEXJtU9ojqZaacYEe3j1o4EjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712452097; c=relaxed/simple;
	bh=v8sboilwomZpxYrLfaiv+/O8dQ9f/danDEAIgzsh6+w=;
	h=To:Subject:From:Message-Id:Date; b=pB7NpWENJjC1+6Cxy1ylGOFSkv4y9IR4Ki+YfEw8oXWjbrVc4Yms1oxawJ875dJYYW322+Wy7bZk/kVs8q6/Ar17qqLseRsoXvt99By5sTgTHzcc0OneXD1msFynQsTMqQONyVpO/8W5y1jwm66GEx1sVR+lirBRIWWaBJ1CLVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx5hqAie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx5hqAie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D5EC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712452096;
	bh=v8sboilwomZpxYrLfaiv+/O8dQ9f/danDEAIgzsh6+w=;
	h=To:Subject:From:Date:From;
	b=Zx5hqAiefuZ3p78VusenR5tVPYGtkawQTsbRAuNPZdzYV333dwv3QZ09fcTyKLz64
	 1en+D0SbonvJ/i+jWPimctnugjmPc3yt1cvVbFrEVNxC0Cs0LLqIesEzy3aoai0Cz4
	 anOGfHiZVZO3DBIs1ze+CIbSQL/WM1WLKePsep9eGPKozCyrsDvBSSH/qLrC5cZGFe
	 x6+//BSsI7RNrboSXe/0uFKHLqm+eCUrgoXQ0g+skVa1L4fwiVACp3UAfUX8VB3ekN
	 JyJWqMpY4aH/0iZJrngRJhy2U/Go556xdCOSCLFDqHwgOahKtQahujczXVv8JRyMNZ
	 PjTnFwK5yEiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63639C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245209637.899.9114744704885762607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b273b62ecb0414c6befc9b5ebd7ad38d433111f27482e5ee8dc3928734555b
Date: Sun, 07 Apr 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712452096
