Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3C63451B7
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755544194; cv=none; b=mzxhHWwTpp4BejhklcRccLmY0NFJGkIDbtMS+Vj061M+rADKPgf6yT5cQV1EwOAmw5JZMHrzRMeDytMk+4iJg+KHbUeOEo7jhJ3LiPjpMuHZixR1cBP6uSVDSBvs/ACWvN/OfVqK/caV30Iynl88egI0XYdaaUDim9L1o8dwBoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755544194; c=relaxed/simple;
	bh=tX4r3DGTsUhAUPRFNNgZ9NdpjiU165JnomVXwGdVrjU=;
	h=To:Subject:From:Message-Id:Date; b=YNjeyyXKCmCwr59KxuBiAe0UcANAbJFvWnJgufbUE6Wo58RgZ9mBKlDzUX446Wz/7qo7Yq09rZSYbc2XhvXc/Izo3NqK/odA7ZiEP3qwK1EG/w77k4i4K48ad/wAE/HvvOklfAMJ9UDg81tXwMisdZlLdVaPZBK4NLFLwxqyzZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey2bMIGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey2bMIGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2459C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755544193;
	bh=tX4r3DGTsUhAUPRFNNgZ9NdpjiU165JnomVXwGdVrjU=;
	h=To:Subject:From:Date:From;
	b=ey2bMIGBwUB5TIiZHkllEHoFIFIV+GTcwKwCtovLJb/xuOnaVmB3XMcmQ7SzNlV38
	 2bvo7HRVo5BJ5wP6wxUso5SW2j1jAenakS+jtcKvij0ILXc2e8V2HqLOlB6AnA7UjA
	 tVII9S9itZk5+ksiyMZNwUiKY5UHNf8/bNaZZEFFjJYNWi/4Q6KXMd5rh57gc+1bt8
	 kF8+A8ER6O5HkVB5bI2CaRt9OfeBn6KzMxpR8r02xYrZO3q0srmaYbP9wa3SgCnM61
	 g2t3HUQqk1wPI/bFdAQPDXLRllCBT16lIsENLYx03eNVwvuSDbyjaHSIeUDleAwCiM
	 l+dIwGL7lTx1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6FCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554419357.14280.10782661225816104890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbef94c8faa715ca8a98f7b40b1f7c0bbc58f00c71c6b90445449ba394e70c5d
Date: Mon, 18 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755544193
