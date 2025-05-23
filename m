Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DBA2F3E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747997994; cv=none; b=nF8lDQuRftgwQ3ZaS9qnLmfaMCp0n8zePeehSDkEi44Vm1k7VLnPp4hgBGfMitc9/SB07OJnivrj2ha7Uy+cG0Af2M1IRkZyGzDWj9Jzm6ETRVmh/NadUSjpNYDbwGgYBT7ZF0/Z1f6osNW6UwkyyI5HcEuhWlx3v23DNVRsSpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747997994; c=relaxed/simple;
	bh=RbbevvQJIUTrRd8rtbxo0KPuyLLTc0WsJlN/Tkh8dec=;
	h=To:Subject:From:Message-Id:Date; b=rRpWZK3e4nh31jYq01ACfAb9CibvR07SPoYoNyb+mtz+22QOIZkcRwOeY5uWZztVFq487OHXo48Hmuq3qa8LONi+VodatrcZGYfwlC6jq/FUjUub5RexsdPsRxJyVCbd/dSerbdEiOEnYKNoIp9JSd3bZodPuttczAIAwjww/Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvkabZ4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvkabZ4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1924C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747997993;
	bh=RbbevvQJIUTrRd8rtbxo0KPuyLLTc0WsJlN/Tkh8dec=;
	h=To:Subject:From:Date:From;
	b=NvkabZ4eDlZIQ1RiFwsrCvDVFgfNVIQf6VOM5sVXOsFRJulM3DkS75O0YZ77k9Wbt
	 N0O2q0hv6fepqUxExP8mQ0IC2jh207zU+atMStMU9ZS13YszZeB0u9GMW513VQ6+x+
	 aJz5XQUOzOR8otxrfHyoAMwE+4LTKapqT7mLKJJZCFiSAbQ08tfOmRtvOpXD5wyvip
	 RUJ0byaG3CNn1992DtK1K+JZKnCgTO3GUTUR0Abt06R3SLx1y9wP/eqvSK3HYsiYhC
	 w5y9Fma8vWq/CI0u7LrbO342kVbfJC3h/RNJgfAFhFoq0Vgk6o0X2t9CzcNpXL16E9
	 U2K3A03l1Y0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F323C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799799357.8237.12204582133627087394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64f95bf4cbe2b858d77b46d8809fc50741c0c1ee730af22172c32014ba1ce04
Date: Fri, 23 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747997993
