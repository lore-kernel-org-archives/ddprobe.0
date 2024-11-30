Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE2D1465BA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732957554; cv=none; b=aps5HvUeCHIHzVoqQJk+mXHr4rcXrdFWofWTmIXLAChUwi9wrCQGWVwXU86/UYZldIPWGPY63T0eyyIbxzSfZLmt/TOxnGljgdVNVodf6pSddxmL/hBHbG/7DyoC29qIkGlp4RLdDuA/bM9tGp5uySmlo4eKQZEQuKDsNUB2Sd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732957554; c=relaxed/simple;
	bh=h8vKWvTVTTpnTYTx/MSWlV19N0mfXfdN+1h6krHUL4Y=;
	h=To:Subject:From:Message-Id:Date; b=hkaqav+Hueo3b/FLIPpUdrYUCNA3d+yigHTTCVEfdWj2jppfW7LSUlt3x/RZZmzMqz+oFfBLFg9RDMdH2ngqfsF6XePpn2NGehzBKen3Uk6eh6JBEAaHIRr1n8y/IxC5TcyndRuSw4hfpWKcmfvVZ/bVR7Zn0j8ebkjJzAp4hUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtYyVvMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtYyVvMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF15C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732957553;
	bh=h8vKWvTVTTpnTYTx/MSWlV19N0mfXfdN+1h6krHUL4Y=;
	h=To:Subject:From:Date:From;
	b=GtYyVvMcGrm3oxl022+is1EGO+caEtswJieCpqhb9pgmLPUxVF1NQlvr0ShqbH6Sw
	 wEFOAh8DAbVGana2cvUHOTifkWlsSBEypah5mL+MtHu0iZJlG4lM14/SoD8IkjgJar
	 vO7zww8QllYCLJEBFHRb+jzmLd7cWIg8ZvfjnvrPhQ8IR/XtL0/6P40/uQ4LljPd8a
	 o7drW//ShBGLO59AgYPXdYxPQI4KlANpBozcp4TpmIYjshpmXPsD+qXP9C3NDH1hAF
	 ybxkV50vJrWztmDhHwn2moBu0cHxg1iRx/UIwojJTRr5DD8+xJn2tdTDOeclt4VUpt
	 FkfwlPNRG74QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DBDD735F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295755359.27996.1004119113659815227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7a717435a7c73c057d3c6843a585f1a51fcf392365b4916aacbf6b11a1f5c4
Date: Sat, 30 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732957553
