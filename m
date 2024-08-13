Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A78D14267
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723518954; cv=none; b=fN+Nnn9ysDWk8k2ASLnfWW7jNL5qtWxM5aG9wbVCGYSxnbXWVdCUR7CnQNdhId+GidBiEzJNpgOUgj6xxxRw4dJgxBdifhLOsatMNfiMUKE+d3Hcfzn/f35xk0ylEhDQdo8w77sXXYesd8N6XCMF++BKFZf7Ia8NAfxVgM+WneE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723518954; c=relaxed/simple;
	bh=48WPCHftgkTo8VovjroBECuC3IvIrur40iOErdBVm58=;
	h=To:Subject:From:Message-Id:Date; b=O3Ga22ru2DCTIICu/wvYVSud6plTlO8OhGIFBDWwz/c60vaAHN+Isz/oCPb99eCeCGcIWUglvNB5wWAcnP/Yn9hgNlSQIoYDdm20g8/jZLFn4pYw1Q/MUoAaD2lbpj450XmlWWlQaXnnOtbS2En9s3gYNeZ87WLvcuT6WLmnXWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gwu2s0c0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gwu2s0c0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC05DC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723518953;
	bh=48WPCHftgkTo8VovjroBECuC3IvIrur40iOErdBVm58=;
	h=To:Subject:From:Date:From;
	b=Gwu2s0c0txlTphCqapqL1PCQNCunmuJT8Z+qmL9iN7EnggQYKc+RjsDKVHxSpRjgu
	 qUx+e8pwBiposaqJ0td0Mdq4haGntQVlEbk+hT/wpWUOdp05rlEZYJ7HbMwSjnlem6
	 Wf2xyBMqQtXNpJ+Eo4IpVyCFEAvAfL1HRHsgYpiwQELoM/AU0d0hn+iiiycLTnDC+t
	 hB/A3zUOPE/En9n4vRVZmqxG6aGgK5osBedpQ7ld0MDAtOP2JHACTwAivtGDSNmonf
	 WzSSm13gia5ZORB7QUW24L1Tzl8A35YkVgxnoOpJx46GWAHuKHfsvSyf4GBxO4k0vz
	 60pj+0EZerjDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA1C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172351895360.8134.6572007153990372320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2b01c199c24251504054e3fdde60de2c418db631ef1d02d1e5130d2c406e28
Date: Tue, 13 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723518953
