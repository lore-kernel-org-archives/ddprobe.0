Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272A331B81D
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760521794; cv=none; b=LeeXLm8BQZ7AOBHoIUV8IUp8vBXPpO7ioF1oyki7eyXajhMvggPVRKYrBjnaNCtGhS4RCe33qJpRpaOwbR0zLCBrqrFjwdFEHCtt4ZvbDkHwy/keYppiNg8RAJ5Bz9wYL0d/lqGHeC/HlyV5PytMM6LLEm4q/Vbkc3/3GtaRc4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760521794; c=relaxed/simple;
	bh=BHDUWVGReMkTS75puf59Fk2p+quW336+pxCnPwIG9JI=;
	h=To:Subject:From:Message-Id:Date; b=dzYLpPmBH4l44J9u8U9q2O7laLbLSGtmaAUYjceiWsJMXxRKmpPB8Utzhf3Lnf1DHoxZlp8BU0D+drR5dsfYt2Ur/ThvVFg9GHoPykzj2SfzOgJ9LsPdTAk2pS+hlVn48MCJbE6QVq5fF6RHA8EzeJpPujAKI+x1HFk3+nsqy7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTH8cJqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTH8cJqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A467DC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760521793;
	bh=BHDUWVGReMkTS75puf59Fk2p+quW336+pxCnPwIG9JI=;
	h=To:Subject:From:Date:From;
	b=uTH8cJqx208X6zPluNcuKpmJJ+a/gbd0xux9B6di8k9Vn/NWoRkb1wn2gT02a4mx+
	 EW9G/+c3Nw9yBUukdGjmr/Ye8rmIk3SL4aF7OOdYv1Syz7AaRWH79BQ18nm45sx3iG
	 siiLDRz1pZ0VNz8+IsTS+fH2GirX1ucGWEDUmVFh51Y9QeJQwAfVmW915x/h61RSle
	 issXoO0q71mu9tmH/GtI+wWAs3cVC4T8tMhir6EfH6p22tPcKoYdS0V4Qh76OpI0f7
	 LPJUjIn1s9+QgyuE16Y+hQdEw4Q8ttKRkXJDptDaEfHBIGhSKYOfSrGIn0H3WWU38K
	 X6fs0MDOTptug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92495CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052179358.30668.6679147434731560434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f887cc338d33f9e485a07f546bde52fe0088e95329c7e9806f386449b3dc9ce6
Date: Wed, 15 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760521793
