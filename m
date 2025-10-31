Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92D22D879C
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761877797; cv=none; b=J190fgCbP7yOpVybyZYmtUuBgITR0O3T4mlLatEZr8A5/SNpBdVidgfWJnWvViF3Q5OK7blw12oMKF6+g4GMrkvs7NyI78aVgGWxMbUgPcSkBJa8KdeIuH36714Q3M8PcOxQ7AyjR9luA0oi8izNCegq/2cKLIjdNyON3oFzdnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761877797; c=relaxed/simple;
	bh=qJcDYT6K+TrZVc+5NiLirRxDdsuuKdpQVU1T4jwBKkE=;
	h=To:Subject:From:Message-Id:Date; b=BNhBpA6ta6gjRhQe9E2JWfB69OsH7lyR7i5VYAI+Qkt6xQ5ngy7yaXCYQ0DPPMemVzVrwKt2v6qF31cT6i385E/9O3nwFl4ObrVY5R8ypp1YreF2ajCw9poPO3PNv1W4m4YrdlI4X6onFKXOZlWPh0LzNcpMdsE7jjb4cdT+BVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgbzbJi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgbzbJi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A192FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761877793;
	bh=qJcDYT6K+TrZVc+5NiLirRxDdsuuKdpQVU1T4jwBKkE=;
	h=To:Subject:From:Date:From;
	b=QgbzbJi8FWhGAALEeeCKZDhYykUzSlT7vspzs64E/32vUFGbAlz0Mx0gjCJ4uvvdH
	 JfrBhmgqcuXZ+LUWT5xK1gQdLj6utemP2rnPKmH3JjDNpYy0P1grKPf35fInFz9wTZ
	 GhwkEPq5WUb4j2ypfc9q/JVMppSRFmUE2S2UAjtbHKdbhkwSHkCjRee6Qf70MLDTOl
	 SF+ezL1YJhHnsdIFA9pF1nKBMo5rOt2hppe79pKnu4QInDI1oSeWHjlDAz6PSoMxEr
	 Kabe3Wn/Zh9OVux8giMM/iEWjijELT+AxlTKOkH+zuVxwVPb1TY5zAhy3YzjapXAix
	 pAEy0aiW4Zrcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B55CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187779358.25517.108054951375645782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5e50c0d4595e1e1ac571053499a33f88148f9c324e1b1c5bbd5b4bcbef5ce3
Date: Fri, 31 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761877793
