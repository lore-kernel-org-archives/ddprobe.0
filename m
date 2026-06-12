Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3104D1E515
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781300794; cv=none; b=NDii0Y9JbmFHajaLosv53cgi4NXiWBdaTE8zkBz/JyYurUyqNxMin3c0UCPDQu2pMpy7VEyDsRfgZ+Hy9N98/t+3OFxTorzuD4iTNji8aCSZDHSzLqC6NQh8RRjUF1TycF0fA9z2zE/ZY4RIiVFv6xitupFYZzsCoe+mpSAIoYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781300794; c=relaxed/simple;
	bh=hTmvxyQWjnALyKSPBI+MjW8S175fhHYGD9gSdT+7u6w=;
	h=To:Subject:From:Message-Id:Date; b=WCCIqtJUXFMlXVNsmDNrLq4+yvvqqUA7HUyvbPs8YE+heA2fMTKZx+B/aF6KH0RT95vPfEFCh4Mv6HWYzjqN4CbnEZETICwhiiR38QSx2fdmBeWCcQUJIGiskzColhn4dgL8dSg3vIg8Qg+APB16p2f47jaMvE+x5w7YV1AJOCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhs1QGqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhs1QGqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C54C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781300793;
	bh=hTmvxyQWjnALyKSPBI+MjW8S175fhHYGD9gSdT+7u6w=;
	h=To:Subject:From:Date:From;
	b=nhs1QGqyLMWpL65tRwSCGrpXfADxRootQDNdp+tdN+kPKXJYtHjTElKUK1+4taUmA
	 r5rArH3r89q+19CeZC4J8KK80ye4f50DRIolaWWntjYySH1glzmSwyYf6d54TV3e1j
	 YwHN8rIwfadldaMx2RL4FdJgKx1K2GU/XvNcNO+CYPVSoxjv/uN0FARlV+a575CYbd
	 1cXuEU2EMXDAsZmDY/wYGQ/bHwvcMrn9jWbnvt51VkBH+k1zjjavORc6m04lHYyqbU
	 AkEURgF24Zg1iX59hOKfiqe4BdJxN1X+7nxrw5iBLLLuxyZHEOVyNNpr/nTn3l7pCN
	 fkY7hTYIYJBgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79A1CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130079367.4560.4750685723795832631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc18706b3fe4659da8edd30830d41fb254b6ad9e084d29ddf0e29f5a8326dfcd
Date: Fri, 12 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781300793
