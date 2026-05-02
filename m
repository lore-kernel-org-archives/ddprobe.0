Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DFB215075
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777735654; cv=none; b=NmqoorB2Nb6GQTQqpSNKwiMJKDuDxr9jnhe/1bKshI6Us/hYkiq+y7lkMhZ4vhPs/KhzYRxW1OuU5W7fuX5BIIrmhNJeOp3Esi8L/97czTbrtMDYq/7eavWgdL52JF3v7B8CyojAEhhSWrKsnk6ThMhNRbXYVOXo30wY6i+MPDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777735654; c=relaxed/simple;
	bh=XswK34RlEsVAPRaXDzpn5hVQdxZr2Kqs8eKyzYsJH+Q=;
	h=To:Subject:From:Message-Id:Date; b=ffBga669YY4xOlTrDXiEVvxppVomYzxj3ufVCm5MuXMrOy1HYwkFtZUt+JVEfivPLI566M2acWYnpxXcmPKi0cibf2+GDTxS6Y8byftcAsjnRb+Y9/TUs9mkwawwIluBPZxph3liwiwhRH2enwniM321S/EJdAAOWhecJt57tQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIX4ZvHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIX4ZvHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD804C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777735653;
	bh=XswK34RlEsVAPRaXDzpn5hVQdxZr2Kqs8eKyzYsJH+Q=;
	h=To:Subject:From:Date:From;
	b=DIX4ZvHfgaE0qrb/NCP3LGiDZRcDTnka8Qehg87v4Nch/aIZD58eL64qR6owAjLvg
	 P2oNU91DoYnuHBjJ4SRvigMx2C04JDF9sh0LM/uVtRexh8ZYllhf/OC5elh9gAwtqe
	 fgHQmMUQRNNqTDVnbC2HNgz0HjZ7mdK7Xe5W9L+iL48X/mZZ3/PJmn9QYSugmKL2On
	 BvxHyuhJGB3Ga3pHNnmsb3VPfdK3+1tmFxLB6LfEzp0kJSFaVceKp20KRvTeNsq4rH
	 12KVap277y186g0aqAEdg2hFJb0Npq5PWD3rK/DAydeLzKyQjR6J3fopHseRLHbBGs
	 0p/DwCMvCk+rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5DFCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773565368.24829.12882981380928090838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af99f57ccb1b2e2fc4fc8663dcde04dc47d48cf8c2e2b8885cb96c78cbc373f
Date: Sat, 02 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777735653
