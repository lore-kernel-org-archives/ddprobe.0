Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C6434BA50
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779713554; cv=none; b=CzsQ3/L0nLllOD09Kpk8GmsGNRsT4sB9hsCxxEFvTNCjGm8UOcqLlFkKtTIzi8+irRS7F0F7G/PaUJ+Nis43y1qRT2AlfhnI0Z+I1KZQ2Gk50dA0g0/kyiNa2Pdn2bzNK5y3SZfxYWIfWRxwK9bJWfmzeT1F6xmwxJKrdIioi3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779713554; c=relaxed/simple;
	bh=hTxceFHvPYCRbSetiWuneho62RN4flBn6RNYAg18/IM=;
	h=To:Subject:From:Message-Id:Date; b=JAX29bNkDA0Onm57BWGwLthFPg+N7qSJCKVjqCdtjszMfctNB5uoVAolC69EwHzfSWYZp9HhFF3+k1erT7e+CEJPz7cQYxOptfE+12tMR0BH/9FugIZzO75stdUomoC4uBzUzFV6RKRswK6MovM41Cow5Bjfs0nwIYjYhsIK2q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo20mbAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo20mbAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F03C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779713553;
	bh=hTxceFHvPYCRbSetiWuneho62RN4flBn6RNYAg18/IM=;
	h=To:Subject:From:Date:From;
	b=fo20mbAKWFltVlOMy5JFL7EAErP/2zaH0TTFFb6sOEBJ7j9idLf0ZNr8wEgseHv3L
	 a4TOlE8oCkn54NY3btPAMCXkVm14j0jGf8TSQVu0d2E6E/THgYDa7jdp4bTqqNnF6/
	 xP4pmf388H4KlegulrQ1qlQTW6VnMrTjWF8KxE+d3pnHkHhkktvwBjHtSrGzyUfIF6
	 7LwgmA+StMb3e99Z604NfIOAhVCjtWia/pUkrQA0bV3qLBDsSgEB4HVOBKquiGwnLO
	 JaE/9oK5RpLEi2KwvNXxm17AnrWdnCiH2RdmoeYQvSSBb5bQGJRTTQIIn+Ve5bUhX7
	 sj7DgBaNbzESw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE307CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971355370.25933.14765900058351540100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617cfb5d2d6b2bf2ccedd46f10ecd4eef2b9c48536aa3393a9cdaa5de71241e1
Date: Mon, 25 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779713553
