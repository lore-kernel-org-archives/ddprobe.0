Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3001E1A5BA3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750123795; cv=none; b=jCKYWEX3rr5psn497oLvwd2kgDnvC1NR7GjwSoydtk4fhErEMXEiGel/teDZwM7fsDF4QTsYSuXU65HKdPgfWNrpQyVL7CsUCKedu+N8KCulaNED8eDOtmsK44MjpOOP0y0puksihVkrkYXRUIKfjm6i1kaeS4Um6qv1pmNteEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750123795; c=relaxed/simple;
	bh=lOfoDQf5/q6PkL11jp3tQvLZ9+sRJc5ogtmWjayRkEc=;
	h=To:Subject:From:Message-Id:Date; b=cVDUq7mEbNdtnDA6TT153G3KaubQq/8S+J9wbyEdoRvrmQ9G1iSmd6qP87LUM21sqHoADi4BA+JxXJp0vzzI7hIxUr7IhNTOeWazBA1yieBLQJq+GV6XZt4NpL9J/q6zBvMr2YdUyv7DwlHeM44TYYoA4Op3uZfuzNebs3g6G9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZu0u199; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZu0u199"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFE2C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750123793;
	bh=lOfoDQf5/q6PkL11jp3tQvLZ9+sRJc5ogtmWjayRkEc=;
	h=To:Subject:From:Date:From;
	b=oZu0u199iBHzoWGXevQYYK1DO3BUsejlMRitvvZqiDW1Vrq2DPcx+R9noDAr7mBYq
	 zYvbRiLPfTbAic38X/4Tv5m6yRfEd0Zb0s3Od/J2ak6EdsAI+PPlWDXVNO1YcwWGnp
	 Ca0tj9X1SE8nA5z4lafQ6EKy5FSdbEVHQ2frGpl0e7eNoQyg8HMnkRMNP9OpqAM4Y5
	 2Gyn5hBbjRS3Hkic6TRcCXd3jn2zB+sWL1mc72lAR8IMsJN2jctZs/KMpSgQn1bbHP
	 2+1zPM2RI6X7YC2c74iIn0UOpuC8ba9BitKYWfuzt67B6SOVuvu1JfaEvN1JZnaiuQ
	 owSDfj0j3ZaHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999A1C71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012379362.4705.14860458585882025366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7b81bbc469abb8b009566845f238b0f2f87528e3095b0b98d8957240d9d205
Date: Tue, 17 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750123793
