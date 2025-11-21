Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2177A23C4E9
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763709714; cv=none; b=G2lhGlLLOKmXLpm4qDGaqA+Zbsp2KKiFuHztlIOEq9NAH6RASWpoxVZXyNRlMSVBpDOCeNkmKcQRyTnNM2vdJ9tqmbdirFNZEWllFhOx1SM/BrkMSg9PXHfYLfcTHMpJCW7nsiTv82HcXl5rf4vqu6Z77CyJLDTLSRtrOfyXSHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763709714; c=relaxed/simple;
	bh=OzqaRRU31pG8AslMx+yYPHocSsiVuOUuTdFBfFKVkao=;
	h=To:Subject:From:Message-Id:Date; b=goQHDjT2f9L784gB11T1IdGzRTCyFO7qOrLKT/jD4afJb+1tk4ucAcATc8ebKiDaZGgx8xtd5QmSaMDqw2nI3Xr5BttPzz3DbTKwlQFldIbI6DOtCNjOQqkdvqY1+N9hVnGVIU7Ut5+lA0JXIrFVqagCS3uPJwK3OUX6qMR13K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjFW5AMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjFW5AMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F06C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763709713;
	bh=OzqaRRU31pG8AslMx+yYPHocSsiVuOUuTdFBfFKVkao=;
	h=To:Subject:From:Date:From;
	b=NjFW5AMXiQQydWPJSJTr/LW+ngGJqDEYiwAmiLw73jFN98j4Wxchln3ZM+giZyFE6
	 uAuh6uTVC5HDV3SV08dz7s77LiKX/AN3y1i+mMM76ikYbLhQdQ9ziecJ5qMpjXDkgr
	 hg5hA2Il2ratDYJF4LovTmXTBYR5uM/T1naGxZMVXQAesBzJ9kxFoQs6yzwAYReLHC
	 d6W2WgUX308ChNZgNNxklVL0h3nCSImu0eiljpYBU3zMJl/I/nDnMBDCfUdziAZLJR
	 8kV71WuqGibDHt4iYVnosVMl+Ey/MBlK2Ln2BeBuZwylj3AnZaSrToIe9U6INtkzTd
	 wy/JcD7zMAJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B14CFA477
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370971358.29339.5990077330410614703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc271dd93cc2f0e62381402ed0148a2f7a30f545b0c42aa2f96f2075d750adeb
Date: Fri, 21 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763709713
