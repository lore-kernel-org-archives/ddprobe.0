Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AA517AE1D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749747595; cv=none; b=CN+QKK8WyXDiLL5vSsV5MHBd3NHu3YXGgE6BvvViCdJcX+HVpijH0FWiMDHDm8nlWNw41yWv0Et+4QN1McFSY5ofU0RzDrpgCmcn7mtcFdJkwrZCfANMH+v3XmAjqgHIIuP5QAiXvQZ/rZ+dL6w32HhVUMF0BYs7mtbRlwvgi/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749747595; c=relaxed/simple;
	bh=xACktOwHCw3p89l803Zm6ynWKDM4vDdlDbBhrtEPDV8=;
	h=To:Subject:From:Message-Id:Date; b=dX1xKFTpvcIhZh8d2sX34HXhrYBwjgNkl0cKDBF8Jk5Irw59vUHk3ovAvm7rEPDKZdDfPcKoiAFDkri7OxsH+KoBq/Nbppg4hGX+aRJ6tBPrqMB1sYwZ3VuylqeOdHMxyklGKCjOSQ+WiHyATktu6fRjkQuEr2o3Iwtk4eMLj6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvMsXIa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvMsXIa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A468AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749747593;
	bh=xACktOwHCw3p89l803Zm6ynWKDM4vDdlDbBhrtEPDV8=;
	h=To:Subject:From:Date:From;
	b=CvMsXIa7KkivXTQ8pByTGiB3gYEuqPuljMWyWf+8J7tXwxc0D2XBRP4EXPfR2lKcD
	 hqzFnbV8vBhlyPaWtV/dEHeOWSoEjsteWdAyHERLxW853AYlakRFDJuKy2fE+FBMSD
	 g2buPvsVAx+B3CvwiJ3xoKXgnI+PfVX18ZReGmzfVwcihV0S/IzmRc47a059t8KtnO
	 T6gpBnsm1RbGd6S3FV9+fpYKcd1qDiCl2NJmUXrUTXi5u10EsgtrzSl+md4hxY8hLd
	 ZeUVBc36n/NQ9pt99NhEACITMoqg0q43Gi+UbAVHaZHGiVG7qn6L5nIDowPZO9gcCv
	 PLEezzEEAWFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F146C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974759357.7622.11546292037761378179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0c1038e7551d78fee4d990229513c9e863ca4069bc1e40c81fb581425a3992
Date: Thu, 12 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749747593
