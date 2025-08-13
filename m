Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E13B2FD7B8
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755115794; cv=none; b=brs2X0ZPxizwTahxSbkLrMkmSApGCkpihCxK/wxJhO3L78hhSVoWde6NpEThk5Z4lqsfG8wjMe9+wZE7iFaG9qdxF9HxHyt2N6sUvtwTpdscPheISjRCmBHhgesvYd/n7XcG/vctSO0uUSljtItXHu3uap4hVp73hi0Fr44xbDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755115794; c=relaxed/simple;
	bh=7G3hutfwmO2rj4WXkg1o8/W7gNaUv58Ik4tpoRpUMW4=;
	h=To:Subject:From:Message-Id:Date; b=dNUBw7eR88PUAWTFVgi/SVIYBGh2xoDje9SmeKL13q0nHX12BVup/XeqK4bEAI4M2O7/8HWvKHNHAlmbVNmBToDvc3XQjOTZYTBgjeH+lsBJXSZRwEmr6HQIkpWrNIjk1W/2PwCfMhtFJpc9DEa/H9WrVRwudYBxrnfHueUe/74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nocHRUVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nocHRUVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755115793;
	bh=7G3hutfwmO2rj4WXkg1o8/W7gNaUv58Ik4tpoRpUMW4=;
	h=To:Subject:From:Date:From;
	b=nocHRUVt4BFqKw3aYy/NdPcKT9oQNArWps9lFhXgckRDziE47Aeoj0kssHPjcgdhK
	 iP+PtluUsTK24+OdPMDh+iN4yrHln3Qz1AYqU1Xq5/d0AcqXoZaRf9ngnvJymKwBcV
	 CjtU5sev5O9icjiVt+ptQRozi4merbSEtl5bCWd/XmdLArixR9hLtzzyLPxDSfM5PM
	 NR50J3SRHwJwSuwY1Dr7lMPLy3/pEd8Kp4WFtIkFmot3aKCBKAE7qahLmfaigmq28q
	 sIO7z8pVab3EYmfVZmG30fFaMfHVntqJmWCdnGeGE9GOBbjYt6jvwxU6GuMtIbphcM
	 Y/KNZXboLKckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9496CCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511579359.16008.5967391337496311445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0899d09db2016cefab66d685e436240ce6e88b2a097ee8e2835d7e8981a95776
Date: Wed, 13 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755115793
