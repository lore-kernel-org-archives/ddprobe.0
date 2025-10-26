Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296E8218AC1
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761470394; cv=none; b=rRwhQEdvRLkVeM/k4Us9dhebOvtRRtLvyZC6nmNjT2DkMMMnypXwTNhQVjCD0qd++/V/an/dkN2itlUVGO/CHCRnuhSdQL2rELoBAN8fF1FZ73X4T4jEDx9xnXqYhGp78EmCCtjxqUxxWqRAuMrE9400GdkZCNyN8gcMoj88vIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761470394; c=relaxed/simple;
	bh=WulvVBvuc9Ifpzg5/YAOlJcQ8Xv1bFB3RtMuh9w9lFU=;
	h=To:Subject:From:Message-Id:Date; b=uFCbbDeK7poMTYo3eNYssiC5wrARMgde5e84mHUNYGEms6WTPhpJ80U1y4nqFEJzwp3dApk8jZxb2awGFPM6wr/i6dr2gJDFeY7pPQfOzdvE0bHABNVNk9sA+Rghde23mMv51gi7CyD9Cfpyjwv3FDxllC30BixoPsr6lAIy/ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIqNTnIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIqNTnIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8BAC116C6
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761470393;
	bh=WulvVBvuc9Ifpzg5/YAOlJcQ8Xv1bFB3RtMuh9w9lFU=;
	h=To:Subject:From:Date:From;
	b=PIqNTnIxb4sypIReDe6Kxqe0HBdMjMDfBMz+gDCquMoFa58fyBWHHQHZsoAgPBqKa
	 mPp/xam4nbDP5UU5j1tdx8o5jMLDDxQWmE082zojA1bYzdH8rlwLdNA8oyFjpUguw2
	 mL75bMm75Xjw/odiyo21sOJV31xFiIUeooLnmS7T7Vv6FQYnDwxmylLVYYnoS6hhB9
	 0FWqIXIDfGiRBULB8+73WRpmj2QnOqWbkZXm8ZaiT1gPRqEQyELeEBJa0KFZG6F0Ny
	 VZ21dpirhi0B8J5tx4Zz7cZy99sCEe+Ftfkch+GNBxOuUfuoaHrfu8Xd4oDpxOx2L2
	 lz0NO+f/9fFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A17FCCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147039358.5242.13566178433329268356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fc26a7b9bf3e1cf79bbf48512939de7bb15029ebad6e8f9858562a36cda19e
Date: Sun, 26 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761470393
