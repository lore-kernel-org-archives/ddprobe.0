Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F1433B970
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788838234; cv=none; b=Jg5uUuUNIZ3F/VB1WlznPCh5p9Hb+jerTuUSN9PEEY9MxoutQW1Ys6F7b2swET59Q8fI437eqqAAr0rhpXPNDG/ZyUtBvD5XrqZ+6rADka8N+vVhOxEH0Fx+JukYglPdmOayPKXopdU85/6EjeCVs6VUXFjmc72CwOGIxk4t1ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788838234; c=relaxed/simple;
	bh=6feYfOFvp/E/3yToaT0kX1cThOVsb+YOAIB3xPF9oB8=;
	h=To:Subject:From:Message-Id:Date; b=mYsrnZA/8VbyQle3H4UhixdpwSQ/7Dp7zKlLxmgbNNUIZ6W6GUuvPSDsatCIVAUtp4lmZ4yPV0clUPjKYvn5qWcSR02U8mR8S9cvJZghXQ999CPzAeDdmD4ppRRcuJHPBChRvZumCRO4cNVbMZbceahtKYcbzaLkc5y5Xu4nkSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHBilWk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHBilWk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E784DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788838233;
	bh=6feYfOFvp/E/3yToaT0kX1cThOVsb+YOAIB3xPF9oB8=;
	h=To:Subject:From:Date:From;
	b=uHBilWk3ldsw6Y8ZOTMSLWoe/VL6GPzHEHsUq734+4G+HjZmMgxz5pMmMaPDfZBtw
	 Dzc5jn93wa46dXSJ36qbrwJg7AlvE/n4sD9gK/ZizcFMG/rujPYnI0mdbx7lYpB8Nf
	 B226ykSnWXL5TBunGLE0MDYmySaCHraxSvGgJXRY4PXEoovKipeVtHDrrDkghW9OaQ
	 AFRRqSFHquJ+CiYhPHmVZA95OMYmM00kd3DlAzD7DpRjxOq8L0mmi14CJ7VpOykR7K
	 3zpp0/1M4nfbvh5Ej2l3MM52Okjbbl+Qu2Cq8uG4Qua74O9o3uLY4Dj8T87olYrLvX
	 h9dYPnCUUmS8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D9AC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883823374.29127.9707620484288276231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44cd035083fd156ececa1032ddd6db79ce2130b8068b8b93ba18347d142bba6
Date: Tue, 08 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788838233
