Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E431F3BB5
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750964393; cv=none; b=UOTlYfyVF6SGUrqmElP9N4pCmbG0G63nyHyZKKt1smTy+RyOsurYJqkwHi741SI6AwC9ipiRzmdQAGqab77kXlXMoKrCwGnQjxRgv4jb0FcxRvjSJyEjPSetgPYGjwFqJRmSvXTjFH6DIshjdoqrWSkXIg4BO1lczGt8sTJjc1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750964393; c=relaxed/simple;
	bh=EophbOArg0XDev9EvK6oq0lcGLBnnw/l44ChBzQ2wp4=;
	h=To:Subject:From:Message-Id:Date; b=tHdEAOGdNaT0hpttztGx4UWkfyf18UiPQiBAbvqT+QHPooOdb1KIfDOO6uc/XDGIyBJMbQZaeLpxIkyvq0JVlxp/PvFQxpazIXGZ4jkM84V3okG8IIS6m2+q6jT+kt3WrN0Iasw4nS7padpVhewYfionMvaICONQjGKBLEazSgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTDtIirj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTDtIirj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA2FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750964393;
	bh=EophbOArg0XDev9EvK6oq0lcGLBnnw/l44ChBzQ2wp4=;
	h=To:Subject:From:Date:From;
	b=OTDtIirjuf5vJplU3SmefcJvbHmdc0NxhqIqPShmry4TKPs5KuBKvc9t0Wlao+dS1
	 5y6qcY+zcB4MyTEvFdT9Uhs5NyIQDxKcNIbm1I8vSjhShP9xpOWbBCsPNN9mCznorP
	 2p5aYnPQu+VbHC5yPK9ErzahGOi858n2rSB/hQRGkIvFBXp2enR7hS5Mrz6t0QPv2i
	 /fq2G48GZ/mPE+zcwIrizxidm7m6rvAvhPFvyswstNK1vz4jGDTPQyw+FpWeszIZq5
	 exPP4/k0S72V9axX+sEOfBCaiPXMOvxiT29w8YE190JaWplkn4D9A8FHgA7ma9/eHC
	 Dh8ASm7XyCjLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61DC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096439358.25917.6320553375270816301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e0a1de8f039b63ae07ad534d287002e08a5550af6734ccf846733e9d4c5828
Date: Thu, 26 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750964393
