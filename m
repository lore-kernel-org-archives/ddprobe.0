Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE0A290098
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744314594; cv=none; b=APxrvdYOcal5N09aA6zbcoxqBnN+TF1nrCOjMfTla9+lcvgJJjlV6JGRY/+krKRl7uZhET9sVp6S8M+rT+jyPRJnC/r1VNaGd2LwmT4MZgXdlZ/vAF/q/hT2T5IW0vzIstK3zkK591WYdvIhynM+nC1famb76K66Z18tIR2h88w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744314594; c=relaxed/simple;
	bh=UWRlB7f11mRpyGPBa5Wwd6TocWjl2QhOTUJs/kNI4H4=;
	h=To:Subject:From:Message-Id:Date; b=lKhy4v43GdQqYW/149jpT8CKT1oC8pxHI8GXsR9RLECRPOOcid7WKI1pwA0psQSNyA7fXJPQRDESIlOqFIsY/Hxwf4LaMdKgkHLzKuro0FIqNHnI2PZAHC1SKLsgl4fGn4iQ5Do3QuT1iO5KS4O+YfvPx1HVq7RDqdHT9HCKDQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnUwcSyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnUwcSyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C243DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744314593;
	bh=UWRlB7f11mRpyGPBa5Wwd6TocWjl2QhOTUJs/kNI4H4=;
	h=To:Subject:From:Date:From;
	b=PnUwcSyrK4guOBgN4hKEyoAsDb6Iqul5ilBia1QdpPfphwbGfHmIhGQ/+BO6Kf7LK
	 3RoY/xWlRm361sn09hglbQMS7USieWysoQ43wmGknusX3Sa4TkKazbizsHXJVp/h6J
	 F12A2/gdd1PfevZgiCTKT7IKoH4d9OKeFOB0WdLzWjJCp2smc6Vjfv++uT5qsynPfD
	 +009GktnNI4t1kTl50RWMxRLgB0ltWhX/qMbo+vy/D2dQzOdivY5N+X5JVP/DFK/Bo
	 WsWdvCuUGkFE6Il/OQabB7Y2eE+w8F2LIxEQhKpfM6ezHMTaAdCtz7L+WYlt0Nl7W3
	 iCNwJgqjlo3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D347C369A9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431459363.28126.13796380092828022419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31cbf5a1e3a3ad1a115ff7728b4cb1da1c1126bee315fe3ec1f409f76a2d55c9
Date: Thu, 10 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744314593
