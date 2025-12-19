Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3352DE6E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766178834; cv=none; b=acXdktSBfbCt0t5W1gph++b4m4hu9sCR0Z/4VfCz4hpodeztcvLPM+0BkmltmTH9x/YkzJ5Y9ouaxX+4cqDJLCFG8rxpXyrF1wzzbaWQlVW0cb1w+FKY/7BIutM0C2cWLasoSgzPlFfiW1Hsru4r2T/AS63T3Q04AW9elUX6/7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766178834; c=relaxed/simple;
	bh=lMGaJz+LOlhjwDNWT4QmfcE2kFWSUErLlhz5izzPuYM=;
	h=To:Subject:From:Message-Id:Date; b=nRYORGd0kqnA6UiloOiuLYYIWld18F2kN22ajZfr1oGh0s3Tzg/TP4QoOE5NEj001bKk6ASlrExz7VGP79VR627qgJJFL3qmdDlf5uqnDLutlIJg3A79bVC9e1f7SGXMWgNFkOEHg0lBqEWGI2taTi57nhFDqTYNYwNiW1wUmlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMSGaTcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMSGaTcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766178833;
	bh=lMGaJz+LOlhjwDNWT4QmfcE2kFWSUErLlhz5izzPuYM=;
	h=To:Subject:From:Date:From;
	b=BMSGaTcJFVZaNJJaYPakBPr5L6b4KlweJetxV2PCkpS5ssCxRZ0+MY4ZEZC2RbjzU
	 qeOsIUDsDyOcnakntL4X8vxMLc7K1typLHeS+Maz7uFjxA3kQ132BoV+vyaC3KhWc3
	 bkVPISpxYITt1FWgKn2kOSMbrV367ydvrbkAtA1Z0gpIQ5wkhNbU3rzrRyeahVHRkP
	 4LCBXHYgVXE3wJ+AHA+mP/K/bM8mCg+hHr1Xs9lCA5yrcHFY7fz2xNdipaYD5H7YiW
	 cwGSo5tvJYM/mnPD4JID9s0Kp35kLdqzRMXwvMFRxt2MfJJ2nrSCt7ldxYbHuDmfr8
	 NSYNn3Y34QU3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98072E66884
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617883360.10125.15660282714294950536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35d9e98848f4e0ef5639827f99097c9ff48005d1c5b5e1956786f2a967ead4f
Date: Fri, 19 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766178833
