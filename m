Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A27239E80
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779854554; cv=none; b=AqukDI0XyGPNcI7mJIYfqxyqo9xmf6gHMfNa6vlEMNeM5ByHoQJ6Pj24t7qGPIdWWYjF1drrmhQ6expBI7LA1sH4G4YGlTM3vfokM9xYL74tDVvYWaGpqpUoT5/FudLDQxIvuCOQCgcRdr3lfiGpoil6oSpjm5A2eS6Vbn5tnQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779854554; c=relaxed/simple;
	bh=zs+Kbud+wuyD8utvTLNS3EB3/O5vzt/GzjHHmIarUMs=;
	h=To:Subject:From:Message-Id:Date; b=FDPP+8TVyWGMzEge/uj1Nq77iHilv/Y3Nibc3C+cWk1+PKoKyvw+u8cBbnfyLIUXFIKX7o1LrIX0FWb58Q9ZExsn5SqnNSsnCCnS5L2yFWu93jooTmYA+UBLA+oq4VZkBSRdmK2UnXLExYqTCZfWcZhXildliWEI+cyks1QBSYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOj654wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOj654wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C26C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779854553;
	bh=zs+Kbud+wuyD8utvTLNS3EB3/O5vzt/GzjHHmIarUMs=;
	h=To:Subject:From:Date:From;
	b=AOj654wmNqrvAni3s0RSumTr4uk9w0azGlAbZ7RxWtMGP7SdpajfHcAlPbOqYMWaD
	 9Y1okKNxu3vFctgKtj86qVDkM8HFG+O2PM23o56DSpQlv0/jo7GqPKlUJv2fZnhIU1
	 I18InjGukbXoGH32ujlTi1FWyE62jSxTMQyExV16ulKYO55fSZTWf6R9/LxjOzY1Hv
	 v6TWOjiXsdmz+4SKPrJyOtb2u1Tg9x1j355e9lO1L7myi16mm4vKEBX/SJe1Ffj+1P
	 NAh8YLAmbh+FXFi+I4aQMjp03CZXL2XRNdSCdnwSg9W8wuYCRcu8SLE4P/nJqSjME1
	 Ea803kD/7/6mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA54CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985455368.9249.12591137416307826262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566088923b5341b41775132d9d2654c68f7c358c769294cc87cfd80fca9c7725
Date: Wed, 27 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779854553
