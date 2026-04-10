Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDD6883F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775799454; cv=none; b=jlnQSUfi1mgeOxaxjEhcE2mGsuIOXcAmqOh0gcKlyir3H6AFUfJbU1lNw3XgA2jgcNDEKe/gAmaRCxTNjxYupbieGNjy6Msh9dj+/lA2WfsUSXXHvMvvJ0KbU9cnw5vbU1CbiU8Jwz91OKXLcBB/9UoyBTjHWpgVasBNgRVLMDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775799454; c=relaxed/simple;
	bh=cgTR44MisAvOVmSihtBAwunQhBceax+6HGJmdOirDIA=;
	h=To:Subject:From:Message-Id:Date; b=hszaYmf0PPW8dCBRJUZNBU6aN+a7clIUpj3NKYEtc2ZUuyNT6OtfzOy3SU69Bhcqwl4aWDWU9rHy01bEQ1QPmYhUbnov+/2yQN3tV6FKLcCEu1WXZ9K+ToKwdrjikP7HCeZKax4+0kzMu6OVq6Tddc5e3tpphXHJ6hwuYEn2rPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+DJfo1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+DJfo1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC37C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775799453;
	bh=cgTR44MisAvOVmSihtBAwunQhBceax+6HGJmdOirDIA=;
	h=To:Subject:From:Date:From;
	b=l+DJfo1keZ2oq8odLxDmP11la0TgubCxPInIwhHD6M05JuJAZAIrBYCKX8Hezo76k
	 Xt60I4s2KumLowikhnhJlh//HynL9/CRvJP1LI/UOrtAr4vHghuusY6hNDBGoznCmN
	 cH+skX/NRGzOppgfc8hNY+4sgF9crysAnLQghDr1gs4carS21cfHRgthLx551Vqe7E
	 Jd7CxC21EHYw8nJeyGDIUa/GbKzgJz3MTAAQxjYtffxMtz4bSfx0fi2vyIj8suTTcP
	 GycN0u51vwDW3QOJetrmGfOatlhISCtWJNuWfGdDd/IR9KyRf2gaCvNVHHQN+jpi1g
	 PG2TeZ/Hi4EMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4AF36BAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579945368.1917.10251905503191652781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69287b6fbd9f034a92172303b1338e9518e52cf47ab4a477c14540f4571820d1
Date: Fri, 10 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775799453
