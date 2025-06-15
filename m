Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F801381C4
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750006194; cv=none; b=d+lKWUJcakucEYiaGFNkBEZdCiHNC4JCI1UZe3mqZyfCPUKhUN0aS54zgMtM15G/oCu5OOuSezOmZ71iPhyEL3925Mxm/YchNXnK3o1WaPpUFBssHchXsE7gb4kHLPLpuzHQKSHofOl7LaS4gSDhbZ0s50CnwXz1QkSlWQI38ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750006194; c=relaxed/simple;
	bh=vGUWiEFy9h2inupB/m8cbG4Tm6vkCPb7RYqg92rE0wk=;
	h=To:Subject:From:Message-Id:Date; b=dSPQQHriy7JvAgCaBeg5hhG6adbRpTzozextZHFQ7Dy4q/VrJi95ZIvion0X4J8LGWcmsNBRI6+0TaQwrKuWlru3aOxu7VJjzGGVnMhPcudR9Z8gYq/rdkcjm3XwLaOssHkAf7I/6gp08nU8tATdRM35cjTCQMC2nIlaPx717kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYtBPEzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYtBPEzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F32C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006193;
	bh=vGUWiEFy9h2inupB/m8cbG4Tm6vkCPb7RYqg92rE0wk=;
	h=To:Subject:From:Date:From;
	b=sYtBPEzbu676WuXQDNxj4WMeSXiH/hoP5A8GWDT8R47DxGCPc+t5BzB17gMDO88ZR
	 H+PawgJ6hmYOi+8y4VEXCFV67MMw0B+gxAe34GLHWVxPUIMpXEuqduGG4ixs2iMLUr
	 H2ICioSJ6j7E6c6MGVS+nrcEyA2MjLQkEAhU573E3Qocxw2esbhG4n4ns4sIqysJQ4
	 YDZte/LtYadr7ajG02NxEKSxvZAxiaSsklEKupqSpjQIE+Y5MeaTnAJ6ay6QWEFYJG
	 vru1r333DSeKyhEEuk3EnArquZpUcRw+E9NrU1VzVQ9cEQTflCDeHtGLb5uugCOezG
	 5Vu6wJQdSW1dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91706C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000619358.31494.5647308986296598735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7133c7080bb0b89212723652ca04c96d1bf04ccd4f658a56dbd967db391fd2d0
Date: Sun, 15 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750006193
