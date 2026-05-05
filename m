Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3008C3D6494
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778011654; cv=none; b=q+Cqb+3jA2qI4p9u5Wl1baoE1/KdPB9n7H3frRLRQxxLcWY5Kc/ArLlRArJn3/+KSnrvwjIfS5Bsn9ONJCSk7ZEv9R3uic8Ezrw8d/216VjXSbGDld2Dm79O0RAzlG5GOXcIZfTf0Q1FAW/qylMPyqVPFhBNijoNAJkxBk+pb6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778011654; c=relaxed/simple;
	bh=wKNhURH7FxKNF1YaQxibM9l2BboZImx++gK4bhAgtOc=;
	h=To:Subject:From:Message-Id:Date; b=DqWK3/5ZGdMGGBJBbD2zy5xDK+kseGle4Hxikq1GGwyMVxIUTSK5K9ZbgsiVtq8VBGTC9uO02NU3QkPl6qkq00gKuNRMwK/Je1UdZiyNnZ8qVH+/a1rGpb08l5tha1J5qvLfmqG7U8zdcoOW1D4fa2DRsST9D1CtqtXqOb/Fq5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9Ypj1xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9Ypj1xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD78BC2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778011653;
	bh=wKNhURH7FxKNF1YaQxibM9l2BboZImx++gK4bhAgtOc=;
	h=To:Subject:From:Date:From;
	b=J9Ypj1xRoXExfbSlZxeYKljHZPMfTVG7XMqmNBDLEI0dLnKvVX0hlCvQOqS51ThgX
	 c3S60EsPckdpENsRaU45FGH+FSJF+fep1IYTmm9cIHifnkrM2ZxJE1cSQEUQo33ZSC
	 +aEP007YcKPvuJZ/0WKoV72kc2Bmmzb9RYUuCRF5nvjxSkdP3dJKopuBQ5jQG0fjyL
	 ERjdOKe8+/G5ec+i8cb+GisMhQp/OOQeRm9wjizYHQGRl5gN/0UEFt/r9F38+kRVLR
	 NXAIBnARPPOdxVDAkrVsbkMvkeCnOPJdYvO3w5Gxw+XB3gCsu+hY0u5jS/XFdjnE7q
	 7cOcSEHQNo3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA9BFF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801165368.14399.3751547812726886785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cd9d1de85531c5e75d801ec8adb5da09c3fa5c92f311fe9c57f83115c2a017
Date: Tue, 05 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778011653
