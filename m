Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231C020C00A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764451374; cv=none; b=ewWGwGlXhoJO6IC3GEaDqgbkIY3tZsOQgpAmPtP/SxMv/msRoAifxUc/Wgl9+4cLa94oo/GjHaRQsd+dltiZCUctGVpBwQrr0LMayGGpXYMIAOJeBy6gedHKXo6fFALMBBUffvXGMXjFXaanwrHDozAi87sntl5VWUFnY7B2ITw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764451374; c=relaxed/simple;
	bh=CZ38MWbhNffTwhImL2JN5TnDcT208yN0U0F7RR1yfgc=;
	h=To:Subject:From:Message-Id:Date; b=DtpL/HatGk5zosCyQPojhbJmWEc5s4JRLiJ3Tx1l+J0/bNfOqgvGF9zw2QKHUekEYM+HPZ49TOKvJcMezWtPD6MkZ1Yts8Ry4prIOem7eB4XirtZUW9FKWjXV6ZIfim9GU4v666e2nZwC03gx9IYu29Ne6XyBNMdDpW7JW3GdDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQi2hgsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQi2hgsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2420C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764451373;
	bh=CZ38MWbhNffTwhImL2JN5TnDcT208yN0U0F7RR1yfgc=;
	h=To:Subject:From:Date:From;
	b=bQi2hgsldSGgsj2YR/UD1u6WH86+5FrnTcXSDUlumqzd6kRD8rR2P674uas4Tb95p
	 YCX5xgf3zZvLU57Ic2U61nwnDxlOlndT8bxrNxSnKQ9W31wGDTbSShQN0l1j2X8Kc4
	 3kAPgJTPicvelSKj0IqvMYVBvehPs7I1M0IaTn/VBHXMZxlD2nNhKjSsxBJn6TY80e
	 xybr8h+fOW20nA46AXUFnt4mg7KQEQ4I5DrnCbXRRVXFNjQnFlxvJPcva/WAakb7Cv
	 gdDZtUWtSzv3M7hSP/ToT2oTNLFuwAg9KW3UKr4dXGSVNQtgqvR09bREd+Pgf7VyGX
	 GnydW/OUql0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90558D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445137358.14393.3991846801716143587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40c44f45d83c8fd732e6aa298d1b87674909603b52a9b920ee691d6cc43c167
Date: Sat, 29 Nov 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764451373
