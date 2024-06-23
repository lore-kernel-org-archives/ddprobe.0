Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647E064D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719120143; cv=none; b=a/6lRoVNgkid+mwahzqMlWrhaFTL4neL6SVME9HSVqkg+8n//vGUckmuroI23TWCRS7c2KEg98JhpAulBpJTSR/pcHfGwWlUZigvUsl2+gy961NgwiyAi3XyR+FvlAVqx4fMGYDc4/ze2p2I6JUE1hk76LCQDtCatC8ki1U1dRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719120143; c=relaxed/simple;
	bh=s5YJcNxmrhJ2fNXr7q/SrEErmPHxRYs0ImxuRRYsgPM=;
	h=To:Subject:From:Message-Id:Date; b=fc8yN8B3OdD+IFmMg5MuLaGnGtSTIjHI3WnM1mEqLtkMmA/OYpSPbVvPPMOVyIyKaIceNdrvZryuFYLiQte1f0ZYENqI0k27jAIO/O9kxVISB2i3loQGYIaBAS+60+tfIJJ2Fy18R8znsffb0eKExajc2l0bmkyhHTMAQr72Kr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyGAaPbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyGAaPbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8D7C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719120143;
	bh=s5YJcNxmrhJ2fNXr7q/SrEErmPHxRYs0ImxuRRYsgPM=;
	h=To:Subject:From:Date:From;
	b=qyGAaPbJKXAGtHOM6ZU+s2qWTOcY+H07qTiSNS7Ma+4DesM7cbh35p2UKEHX0EYRI
	 xK/YohkJ+A0UXdyQr+BeD0xensyllC4IU1QVUExyZ3jnv+htwEmd0qu3/A+7p7aesY
	 TfpAdI0/Ej5qM323LDk1NFzp1iLmyy8zaBDMrDVXbknzQgeCbVTszn0S9UIOjTxAnN
	 sQrkPwXSyRnh+AA0F4WG6Xos/QbZxnjkiAwles6p85G/BzmYW53Hrg7f7hNFOOZT+Y
	 i0+a3d74pS+YIbTOMgOfnBpgO6LuS3z1Ul7kYTKNoUjjD2DJOwBVJGobkr2MEJJKvX
	 AWzmzLEoNkUBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EAAC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912014282.4175.2601780691450238312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1981963cffc00bb699f9e7127ae5411931aee3c7a5f4033536039822426d7da0
Date: Sun, 23 Jun 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719120142
