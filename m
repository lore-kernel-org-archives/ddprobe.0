Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514FE3BCD21
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788112834; cv=none; b=OCTn8PlT0YS2ySu/4gD096sVOdE/2PteIOnHllpXzpm39kAylJbrnMv9kWztqpzX1Q9IYSCTkwURwadBF/EBbJC9a/i7e52sMKqKoIku32Nk0iknhA/j2+liAoVuKGeXGPc6RmlxS49zdLtVliKVMR8i+9K8q3uy3b9Vwkfrrzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788112834; c=relaxed/simple;
	bh=3WYoNjNyEOAVmL4lfytVmMNN4nug//M0TgCGr/k/FVw=;
	h=To:Subject:From:Message-Id:Date; b=PXtGiH7scg+I3uOwZd3UTXEyDx8zhTFqbx1FFecI2318lt1PRmx6Km1lwn5BAfTp4PhmNdgVE4hNtD9mp1HDkZF1QBE2Dl+6K8UIfjhOUNnkTZ4w9xuR2EhKSDAl6Ya+SLgesKDUzhmVSIYsH8ZAmxVpxNtGswSIv30Ia7OMnjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNhJgPgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNhJgPgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2630C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788112833;
	bh=3WYoNjNyEOAVmL4lfytVmMNN4nug//M0TgCGr/k/FVw=;
	h=To:Subject:From:Date:From;
	b=PNhJgPgLUibHsqv/bCRyj2xFcgWcwu9dXjcKmKyQEi1OQhqbYWQZRN2VkihRHARVs
	 ODoKi/dJiidxZslXE2vkLPdI200q0Ncf+ClVtDrRtrC0DG2QFPotuHda64l75JLPtL
	 R9NZi9xG8KcUbidie+I03G688gbFTXrZ1Lt2vqV8iOEZuM3p0xVM5k0OAtAu9/YaPn
	 uUQCT3EIQVLAywyV+XZlbOZpHKus5prUJ3f6rWgv4mmsk6yUmyRaVh9P9QlN2lCLOb
	 1nDSEsfvQNmIHG1yNcJMQSdWHieXpOdwm+dgtsrBV+agwSYRBpl0NVeondV2PL6i++
	 44yBUonHHOJVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9593C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811283368.27650.14731129298707366279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559c7f0edf332681028baba1e3e839540b48db2527eb83cf6acc070cfb5b6540
Date: Sun, 30 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788112833
