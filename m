Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF072F1FEC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783105714; cv=none; b=tsCz7zuQXAhmjxpNA2uAnXPJl8WN2Hk6ElvIa1ASh1yR02t9Jfnl9W2qr/4FTKkS7b/hH8FRgpXv2ZM3SwQgsz7cbMKb7nbXP5RsCAVht4Bfu73TLH8jFaCzDWKx0Nhd5sVEYkiXz+DniAEjdtjDT2RjIpDrHhcx5qCV4n13Y8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783105714; c=relaxed/simple;
	bh=+gpFZuOMipowby8pRHwy/rgds0883CzIUmDQZZpgJMg=;
	h=To:Subject:From:Message-Id:Date; b=WRfmrDn2ymBHsD9+GQ5n3ohCL87i6QRkg2ZzWivy84BReS9D5+viFPdDR3vIsuL7pRO8g7whi0sqR1KkEoCMDCLFBV3vMpUJ/Cko8b/jhdjsSxmL7PeibR96PeHk/U9TRJqMlNCuqcGo3Ce9IN7580D5pJoU1SXIeSwwRToFryk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjrRrXat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjrRrXat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2802C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783105713;
	bh=+gpFZuOMipowby8pRHwy/rgds0883CzIUmDQZZpgJMg=;
	h=To:Subject:From:Date:From;
	b=WjrRrXatH63XPSTDd9koj0CFD7nOPYf36ICDa0GAO/dD0k+zfGY7R6aGjjOTFCCKs
	 Lsy03o+en+Nj/lEPrIF14vnX7JzNpllwdzijstC6Y9gqr+2GhIG/2QExBcbBwNgSIB
	 xCItOeHpBAdH+gcoO1eVwrRilKivHxCwPRNG45CUmMCHDKIe59S/ac6IFE05ruhIcU
	 J+f9vmFW+gUMWsDkKYPl8kt2Z0rlzDZYJnSpjxNlqGEIN1ozCJGU51pCnMiWQ85foa
	 RI/9oXmSwVCt3mx6gpueFw88wmkcAAxStroIIRKjx0l0d7WGrSCXd2habZRR20UwrA
	 YBN6TvHKEOtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0174C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310571368.4105.15442619839910839864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfbce1e3c36b8736b9347d7e579e98eae65003a47f32fe49f29158e6629ef95
Date: Fri, 03 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783105713
