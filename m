Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3EF271468
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752162594; cv=none; b=szsOIzIEmZ8wNPL+JLQocYSUKxeozC183GQL/A1+mb7MCZJp/BuCYZ//buWJoHD9vuBXKTmr0rlLPpkyWk+XWFxwoIvpbPtvJbgi58L2A7piJizhUu1avdS4T89edlKYJEDRO+DkgaaBhxrwXGZXRr5R4LQYK3kRhTOpaCvTpqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752162594; c=relaxed/simple;
	bh=uZSosdyd1t0s/nY6HCcYsnIAGP+0kEOj7o8PwSRXyk0=;
	h=To:Subject:From:Message-Id:Date; b=AGd10VL39nFe0J5sdbMnGYemGvq0bKtarx8apMhMC0bfDo+/EsQnceH2blGpFd1wvqDsiNgAxWieyaEKXi4iaANwhUrvqNqTm3LSrizgplui6em6NrYBTksVSpKuJKUBUpL4E8RKr6VdNiDKuZmPxX15eTlZt94cEdaeEyr6J40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8/9g2BW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8/9g2BW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752162593;
	bh=uZSosdyd1t0s/nY6HCcYsnIAGP+0kEOj7o8PwSRXyk0=;
	h=To:Subject:From:Date:From;
	b=m8/9g2BW34ljPyY4abFACOrnsAeQ6WleN5Dqicd5O9DYWo+mdeD2mZqTUXbugYYvY
	 5m9uH5OOCCBqPDOphhJVx5EYAc95usXFwNNIfxIVIOqLpCMfMGuLHj1DuE49aHHvn6
	 XsK/hxcucZbE6kkOGlXpNA4/2rBLv8rK8ormqFfH1C2TDr4WpY55g69jPuz9k9CAMS
	 vyb1G7rILBUMCIbReY7ynWZwUQD6FSvvKH3YqyUxSFNl5p9UbXKGHqUhJwnlQN9DNd
	 TcHaRDZrLD9W3FkIX2ON/C2gUgwJ5l2O0S6swGY/GXKz3eo+EjdS/+sdOjxR4FqzbA
	 9JDcE8zJbn5dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194BC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216259358.17263.16844627954617463995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8413a314abcc90a80e2b2dbbd4da711a891e78db7455a1c2998d1aa89293c996
Date: Thu, 10 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752162593
