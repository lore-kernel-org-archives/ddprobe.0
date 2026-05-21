Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA64199931
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779377494; cv=none; b=bW5JQuLaHSfOZRIHxk2mTuVJasV3PRgmfn0fcU/UEgOthAej1KO9fFObaxa/7xXwQ6hS5AgpGYQfEJ8wR5euctnme5RwdW7kjyHd/8nTIN52KyZWMZAI+g5lFdECoxAh2Rk/Nq2S+jqoP0zpeUKgC3s/tRrAP+n+6hXAUJJIITA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779377494; c=relaxed/simple;
	bh=GWjEn7NhvdSeVmfKT54Y33dqG9+oSqc1gB6zHTZuVjM=;
	h=To:Subject:From:Message-Id:Date; b=LcpwPXdIdd0oGgdWYdp4aQnUHZ1MGDyaAgOIN+RJK9IfK+SsRhD/ZPSjewA42dib/vcBjg2R0T7G/n3iqpEmTG68HGHMgTYYXnwGptQyY6ZpvPVrroGQoDlgP4VOL/BdcDk7yGs6dOHwPmA0B2dHgLHlS+EQi7PExrJabz1ndUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZVmRSDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZVmRSDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6909C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779377493;
	bh=GWjEn7NhvdSeVmfKT54Y33dqG9+oSqc1gB6zHTZuVjM=;
	h=To:Subject:From:Date:From;
	b=jZVmRSDKMkVRWMsIiiwmdHuNfIbAGT07zS7ttLNdYBt2Lg8cZ1loBN9Oc+mP1KQJ/
	 dR9K3BSXdr/3yl25ecI7KM6R5jSkR2IqDZIkG9X1eilXbrJ7SjRsyMcUkS2IZYyATA
	 OMsGfMPBeEcgT71crpq/12REZkVer1inLLWrFX+AxqPOKqIL6m+pcz3xirm1kWMMzu
	 Jm4iE97eadVXqKVSoD1VUW89Rs5cPKmxkEGpSzQ7oMFBkMjrybTkKTvTzHYqntb+fn
	 UGrVg5ZtQLMEGiBfeEQxhYGLwk5b/l1cLwCaUVeLHxfST7YiVKNjwfAhj7I/5E8Kuc
	 CP9Uq9vO4we6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC34CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:31:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937749369.11149.6085034720078469040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1978170854748a0d131249f00255a923f53904f0ee0250abb864e02877fb7f0e
Date: Thu, 21 May 2026 15:31:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779377493
