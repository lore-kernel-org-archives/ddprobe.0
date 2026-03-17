Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021E931AA9B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773734694; cv=none; b=If7vV1V82+cD3Cxk69cbvUWMC9eMk1qdVADMjSV54BXQCP9yAeVD28UcgXaojnAlTGUTseX0EgnXv3fB1twEQOXwozEVcOKqeaUM3mcB1KOCnQaUpfPsF56gfY9uhm0/PpxL0FTf1MqKMlvlN7BTaNzXEBIWY0nWR3quVBDrmHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773734694; c=relaxed/simple;
	bh=4iMM0WtlubX1zmFmnqJzDh8wArOaZw3zZ0tkhC4HYWU=;
	h=To:Subject:From:Message-Id:Date; b=iQ4aqfX+VrT1V0gNhKGWus292KJeSMLLFoXhaguGgv7monOefbRZHe9tEnwwQzfDUPFrosf7Owb+zJCb87gB8g2UyHF0dVkW2jdefUTD6D8+aT+FwHqifxeUxccU2GheXEN44gO4LRZfny2CVkT93joNs95mZKnSSf15Zh1VVtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJj5V4PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJj5V4PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FDC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773734693;
	bh=4iMM0WtlubX1zmFmnqJzDh8wArOaZw3zZ0tkhC4HYWU=;
	h=To:Subject:From:Date:From;
	b=gJj5V4PWPKsCMrGcFsFxSmOCM60S7hCFaO2rcXd5rVDo7DXCOaGRHxbtuj3FRGj5j
	 W0y0zS99908P5eK10hYWKIeFM7GDj2/B8YtTyhIMFyKdKbPyfWwBvQfyHJMeCwLOal
	 3x/UY1Qy5975Irt3diGdFox+ZH22NXvFtpHLQur3iTBfjLqunCHYqxQ7ZzpCXnFicG
	 f15hCOqKnBxKS1PnLGqd9BK+lPXJ+fumfSZfJ+eMAdouH+b1Jl+cyBy/zt2XxDtrh5
	 iFKHVmHR5/usjpQGsS/HW9UmvtH5NQ68tDi902JpmeIhmT1uha/m833SOZfEL0Nkwb
	 Let0Fte0f7XhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90803F3380B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373469358.19913.9079687023408530490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b115fbf0c9a919a2c3ef5d9e61b58bbc359c16464ff5c346db48435d0c027add
Date: Tue, 17 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773734693
