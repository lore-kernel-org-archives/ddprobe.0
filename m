Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2526E2F1FF1
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751002194; cv=none; b=FwcYOIzupgEgfJjyJsptfCBF1L9J2ahF7/oR0dZzyIEWNqqFwrxzXSOOh5dQ/oraxY5RmOGec80bwTqKOl9LMc6/TZD1pSJULfSKY1TRT1I91eH3CLqkahf31Id6cF08ZYnsoR1TXtjpllA7PG4KmKulWQVs3srqxnkHWURhHKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751002194; c=relaxed/simple;
	bh=OoHeoA6Fndv0Mw2aV1asaEkDwAHAJROpcsIeWF7RKGk=;
	h=To:Subject:From:Message-Id:Date; b=Y9vFl814lrs+z4t+X3nARskzVbvip6iUyGpF4L6eScSAP4IOgHqTGw11PDOpf2QBwGWfg4mBlVXnlYV9Qoz1pxTlRvusE9jHBAfzn2NbGAZ7hHYyE4+Hqs/N7XR0NgvRjVFSSn/sxvwkDNtYPLc/LVFgbqhZJiEwPjSyoKSFcD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAbJQ5gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAbJQ5gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DB9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751002193;
	bh=OoHeoA6Fndv0Mw2aV1asaEkDwAHAJROpcsIeWF7RKGk=;
	h=To:Subject:From:Date:From;
	b=vAbJQ5ghSb6lUS3yDOn+UjCO9u7hCgXB2WVLCbUKNd1krv+othTOHQsYGSf6HxseK
	 2GHzu3VXUc14+Iq4vIPmlZrkSEt1NLvED4Fmn+r5fhUl8+QvgCTlocvgSifGG06BMN
	 BGq0LY4opnAn8ltmz5x8psrWuijEmFt9tNZud16D1Qv7l+9GEsI9VXLhzj2ejdEweO
	 dU65i6DtCx7rpcTg5wBWBl2VMQmUNiRfKqkb0+I/QwFcFYlzqveFTx7mKhESVp2irW
	 gUgpp+/dDviZeKp+ESH4BmjLMi75gEKqDK53ms3k0fXvwDWcGJEv9Xb+sZkWPxAJRR
	 AiFyk/AAlg2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D134C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100219362.8561.12604501629576216145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9c7fdebd98636b1f7219354bc6e0ef831b57edabc5746ec117996b6aaae63e
Date: Fri, 27 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751002193
