Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC0843991B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785246634; cv=none; b=SjQLvR34ahmBpCLDUl6+b9Y/Byz3HIUHUbjEh8swfQ/Vvj76J/MLjGIsb7BN7C/JBTdEuf7+EkPszsr3iq9B8NbfQ/YonybzP+7EIDZUYM0DeK78g0sHN5sOo5hXubsIhre9NmhGoAxHLPLBjV0bRe/CvxXQcLFHwdXAEzyEk34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785246634; c=relaxed/simple;
	bh=6/AQHCZHbB5FUeE5KdhCtFYHEED8xyIUkO/KMcBdo2g=;
	h=To:Subject:From:Message-Id:Date; b=lnY/ui8oNVPrfDHW3MB7FT6b85ZUSg7Pr6/eHo1uP9g+lfAMYGOLCxuFRidQfhGq6v0kV/RyKiV1ZthSDbzvS1MqyQF0Jjw72i4/z7wSYO7Nsy4Nn0ySLkBRD8FAqbSNW/xes1CrG8bpQQ1zS/Y26gjoYX9Jv2xfMiD3YfnalDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Li9FVdpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Li9FVdpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2067C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785246633;
	bh=6/AQHCZHbB5FUeE5KdhCtFYHEED8xyIUkO/KMcBdo2g=;
	h=To:Subject:From:Date:From;
	b=Li9FVdpzX7ky0kIG0LkU83xXk/ZOeS0NteXdNQDXB+uVBO0ZVaZiuIyE4jFrVfhVw
	 myRgftvZAFgoGd5t+buLAex24tPxdsvplGx0kX1aF2fVQG2u3kcJKeuAueYITOCkLi
	 CTH9wKDX4cgPeQ2BCO5+1ZL5H2menKQn/7wtgHdkQ6k0/s6olqe9rTGPkVHRmFyeLP
	 XD6xq1CzdKYYpUv18iJ4G6Wtw/6IIcUDma7HlTnv1SaWhwW6+QSc1X4mqxYdaRdddS
	 nsZc7DsKpPp7PZhAi18QosSendQ3iCeOCHC76NHbK6zXbBsbuRStp/yEZ8pBEkQqkr
	 KazcrfrAFHA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CBC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524663369.25143.8686470884020088231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ae5443dd1587295d1196c914a94296c1c21ff936d9643bae27dd3ff3385a12
Date: Tue, 28 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785246633
