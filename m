Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BD6EEA9
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713055763; cv=none; b=PnJsbu1Ijg9+eyyzAtSbQpuBCqW+BtaETH2cAH9EAp1OJUfdm+8wNVdPExFSQ+n70wpqZ8XDOtVCjyQMpMstS6eSjrqrQeC/XZ8as18InLpoJSxCz0JdlR/up3X0TekfzRtSO0id1oPBjgy5O9MKVAujH+dFrEMhgWS/tfPUFFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713055763; c=relaxed/simple;
	bh=BMdS7ezgr7R8aXFBlARe69+RIorAFXtwSd2oeQ6aN3s=;
	h=To:Subject:From:Message-Id:Date; b=NFbGOe+G27RoqUXokOBpEtOWsvQZTBUN4KyjFGGRu6FXsvju7PJ98Ea02KRiaS88EubPcu0eLa0pe40cmR+U0bk/M+cKrn3FxPh8E4xeqVKonFcKc1+ZbSRPudIkn4VKqv/oCHISGzp8fD1CoIjEZ0XJ0FStoBn45p1aSdDLhpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aod9/NAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aod9/NAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2557C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713055762;
	bh=BMdS7ezgr7R8aXFBlARe69+RIorAFXtwSd2oeQ6aN3s=;
	h=To:Subject:From:Date:From;
	b=aod9/NAhHNMfQ/BCfzGIUbOzC7n1d0ke4AqUm/APYAKWgme1jRdaIENQvY4tc20N+
	 1uUa1wBqCKnF9NFopZrk4vhpbRM7kCHEn9Bvj1rLT2OJBsUh3y9AnUs3Eqxp4/wmtH
	 zxsku4NFYl90jV7+2UuRWecPv2KWNeao2gEcCbr3gz96HraAnR8w7L89BErh3BMWHB
	 E1FwesMkR5CqBCB57Mlvi8gLBk6k3sy6YtJxgujOu8bd248Ak2u8RVoUxIx0YhBbfb
	 zZJqIZxM9PqqfJxfXeuXTyzlVTwOFEuq2MY63jMpLgHioRn6MuEBqF5ZDggZrsdI6z
	 MfL1R1w7eEmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3D9C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305576275.20336.8385939792160484074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5e2ff6ba5516fe71d9116bf33dab6ee1d4631e6e57a06fbde1d824e0e033c0
Date: Sun, 14 Apr 2024 00:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713055762
