Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECA71C5486
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760572194; cv=none; b=TNCLjuIVveVAlqKraVL4gr5Tr0hUkghWQoqKi/9FMx0Lx7wYghc15EQkRespyuN7Um2YYpCyD+EBb+GlzRtOrJp+tVr9Web1P3Td3k24apVUeoIdfF3YUNLoaraVz2/BQyvFOyKIoikTow/+lQASa3eMXM/jGIlzU5KYrwzxQWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760572194; c=relaxed/simple;
	bh=9BFKee1RUKJKEqJaEGicpa6L6QmWMY2kDpR8+HAWm2Y=;
	h=To:Subject:From:Message-Id:Date; b=U+MO/5AV/XEimuolS10doa6mgiowzLwE0VVi3DMztHgAOgAjUWzjDLaVjVN9lsXO5AzcG1HjFKtN0iNYjWIpxEiH9IWeDnyPKMj+7ibqwMyD/3JFOp0pMF2oe8e4YrHdrMuaDc7wha+AuWh7hxPJC/piIPjs+DDuhurTdqwFM3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8TSY/A+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8TSY/A+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F51C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760572193;
	bh=9BFKee1RUKJKEqJaEGicpa6L6QmWMY2kDpR8+HAWm2Y=;
	h=To:Subject:From:Date:From;
	b=P8TSY/A+rHEtF9h5qVpLn3Y+CNeJBAjShD7UkNKxwEAemsQMtwssZkaQgzM6zuRoi
	 NLfYY2f78+CXnddH2yi6fIcbMR23UY0pLAMX525ru4CdsObG2uMCEJXqL5QVasNsqN
	 r/wP8rYglmSquwRhfMZKkCAdN51hl9DwyNkWZ4PW+Xcu1oYQjUOtoC68pGmIVgc7Rs
	 lQPnz1KluXGJrkpTh2zXlgjDbIheX6yMmiR0GY7FOep1q4xHezfdfy4Rs3Qi0TObft
	 GSiqtDq71Qp066YHFRGSUGC7auKUiHb30Lfj0+GY/OaSEtxhqJ3diNjAF9EpnN2ar0
	 0TA2AsmQpOXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94752CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057219357.24813.18070596293267205488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16a4521e748319ae622a635d2724bd3286c2cade02fddcd3b730a81c2a84686
Date: Wed, 15 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760572193
