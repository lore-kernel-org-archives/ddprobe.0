Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5201465A0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726257354; cv=none; b=LEf2C63fW3o69Bklp0fYvu16nzWG4+pQwPbRFhd0Hcb4pDgCDiSMPzg4fOAQYP/CmFz/ug4y+1CmBEQAhFZU1/mMN1tyekxUx4SJP8KNF2gX9woaCwuYIzDJvQOSb//5DAFs4DvDC0p9AMdLOiRU1uvkRfj6JTmIXRaI/Ec+nug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726257354; c=relaxed/simple;
	bh=3jRJeRnz642fNl6cPTO9FbgbMFB7rGv0a9V27ABRyiM=;
	h=To:Subject:From:Message-Id:Date; b=B+hSoXnryIlv6FR1FP0G+7vOYPg9mgyv09MEQgJ9Q0Okiul7KoOPmQEq1Dt4brhbaz+I/YWDWdeIykMh5rswpye9VKgVbSKpMI/mJMGn/bv1exiqdDwVvHuN1tOrSwkkC8sX7yOW9jxCKW+zE9++2i1TH/QeDkO6MnhGrnGyWag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pStb8Pgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pStb8Pgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA3C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726257353;
	bh=3jRJeRnz642fNl6cPTO9FbgbMFB7rGv0a9V27ABRyiM=;
	h=To:Subject:From:Date:From;
	b=pStb8PgfQdSsvKHcuP/B1Mx5v1iny5Zvb5jtcBy75NzLjxJ3VqIyA7Sb+onAciozM
	 9Zv1ms9vfpsbD01YPoZbWktWEZU4/YU7Tg8v7nG31k9dKfHslEvmIS5ftGS18QqyiY
	 Kk94g7C/uXTzJ4AiJ1PB23pB8kbQfbzoELAbBVVEwccUknlab0TxzZsDaYwiAU8R4Z
	 q+ozkec3spjTdD3eOU6jVw9B3puVxlQ9EcecdvW/dZr01pD8OwYGNDXnRChKPsyThV
	 nng+d8bjnDY2B+m53x8FqN/LWzeHaI2Pt/ExI8n5apJJNKOj/DKd2uctECAd69ZGUY
	 G+f/FRoHJV4xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97240FC6172
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625735360.28408.3127370242000207778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ae52fe16e6d0ebeb276057abc1e0d891e5c483dad29e21f7991c4efdf3b5da
Date: Fri, 13 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726257353
