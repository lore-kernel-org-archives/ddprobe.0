Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442332BAF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738683954; cv=none; b=n/IFA+jm91QrhKO1fwedHchw7GtAIq5BpMcMgd+nZcy2XM+qtsy7G9+3NA1AdiCtEpe3PW9ySGWHZCJc3kQUkV0Cq8biuR2Lg0TqT5Xu73Xio31kFmfECGXxgdN3cHrn+GyaziDKUlYzCP1TENAGJz5Xbok54dEzIhLXLBgDxR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738683954; c=relaxed/simple;
	bh=EAvLPhldz0hyAbzEVPG+Gvyt1/v5XLAE5z0Qo62NrdM=;
	h=To:Subject:From:Message-Id:Date; b=tg3oNH7aeex7kdrVRFIn7SNG7I6Ig0faXMJbckrpYA9UQE76t36kP10qpmp/BxyQQOiqFq3jLkBUcTsbsWin8pe6coWC7J9L/ygxvceQ4BYv1t8vasY+0Wp3mcL0gp+ZqkYgIcRGT4Q4BDEoMm0fM8QiL495RpH2lWnh7aBTVDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS3ocojI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS3ocojI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2FBC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738683953;
	bh=EAvLPhldz0hyAbzEVPG+Gvyt1/v5XLAE5z0Qo62NrdM=;
	h=To:Subject:From:Date:From;
	b=SS3ocojIflBuByn199v8KIRhVzZAHGLR38+v+7QlSwqZ3hYSVwFtSl4f+Ejrbyw91
	 xDuq+9HlwmAyQwv8qRLOOljnGgTemJOHJijSq+qvDanlHH0bvk6jTekgY+Mxr7pwhR
	 Z6ZjB8wprNSknWwy7mXl/AyyW1UVujr6WJgE5cY3180cegMDV59b9MmUwJMUY8wASh
	 JCb0m2MvoGRDGbGG37a4NL8KNgHI/hNA31+AH81v88scmpIlBP8tsrtfK1YbtvTWd9
	 PkAMNJOoUhrR5FFwEw+SfndQjauLg4KRqysWScWQNVA4B2eQisTvP8pLLTQLwDNBPH
	 Yu9rLd7Y25unQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98876C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868395361.664.11047813084471539136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb7791085c927260bd74b149ba9ad3dcf9a328aa2aff4d8f368a025f19b013b
Date: Tue, 04 Feb 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738683953
