Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8511D63E2
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742435996; cv=none; b=C2pc2GZdj5nn+g+EMwnMZpUa8hHFOJwRt+X4PMrACLdl8Uq6G3kb3jOM5gKLMHe75Nga0su7fFmTduzCKDZReKwCTt49zQ12jQaGEg3jOlHZnayyHvraHojpdsTGR/ERdof+EvCizbrjhNcE2jm0q0g9c4NHUCMZKf3S83e9sZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742435996; c=relaxed/simple;
	bh=WLpBVBnz3Uhn39+Qahs6AOVkIzHIefVJpZwM91LmkAM=;
	h=To:Subject:From:Message-Id:Date; b=JVJBQBWX49BVh84BWpBA/nhxjrN7r/sikyVb3+M9KDXZIP6x23/nimCbBMvoLMk+IXnDplIVGFf1Do7fmfduiPtbyn4H2S47+Jju9ejxam7gbDa9EuQvdWlGNCop371+4f91Mscs8FND/OHkv97rluw6c04ovGdeHmSMZ9ZevCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrgv0Kp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrgv0Kp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE179C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742435993;
	bh=WLpBVBnz3Uhn39+Qahs6AOVkIzHIefVJpZwM91LmkAM=;
	h=To:Subject:From:Date:From;
	b=qrgv0Kp608w2k/xY3bwYkkzzH6a+gT2ruWPauV/tuNhNUbcQClXukp7zNEYe6enz9
	 aKx9lhVyXMLar7SBOirs91gDJtCvlwmV1iUbmtTebW5gENlrdNdEaKUxPjtGrBipiL
	 YoQZq5HC6GjEebv2dDpSc3w37RvoGOOUeMmoMaSgB+RjVBdCGeNVM08I7q94pxhvXt
	 K0p5+wjQ0qtd9Sx7t2m/3Z/NnnzLlzOvwm+2NIF0YLHiGhyFdDXMwU0qGWLFTBB5DA
	 Dk5e/Y+7bYnMfpgNt4V++if9g/+QFDRjkZ/5XA4Kjr5XKo7lt+NlDu68GW+upjy0gX
	 mgzEDQXsSdYmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E89C35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243599368.10852.4809600196345612761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec8b83c9127de9b6094c3b12d8491ae875fb377364a98dbcb0a753b63b210be
Date: Thu, 20 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742435993
