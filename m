Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0D9125D6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754763594; cv=none; b=oh9ZpeG2WA0sWR+XlHsEb6DruH9LjIhVoFSOPTm+WGd6DA/uuQOSLO0AdTAlUWAjXxlXPzbTCPsJTk89jFwtZkFlxX4hAxDlR37B/CRv18V7XKcWPCM7C/siEWKGLqBqNclcrK2a8F9rIKF2MFi1ym2ol6txETKL8/I1tHzo1OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754763594; c=relaxed/simple;
	bh=9Gs1fPHndh324vFoSh9rpXk+VEjm1Z7TsxdH1qVfMXU=;
	h=To:Subject:From:Message-Id:Date; b=Q2qaA5BwEQ7YMH2ST3LN037CUlQHUHWl/OGcCNkJReHMUL2UZHiwLkBF+bMIFG8FT7enqeVqWl58DNG2FUrknrg+EfrTTb//VBYNN7fg/Ee7CCCSBFA+zTF97UAuOocZTz4jT8VYIneqIt2iQGnTx0YMmppZt5c9C3F5JKV6RhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZbC1BzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZbC1BzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A269EC4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754763593;
	bh=9Gs1fPHndh324vFoSh9rpXk+VEjm1Z7TsxdH1qVfMXU=;
	h=To:Subject:From:Date:From;
	b=RZbC1BzNpBN3YZrVT5HYA+/R0mQde+AFLgYRsFlP1dGl2zXaJxwXhQ7cxbEJTREVi
	 w3gJkMY2Axg1ub81yNdzN4xnHaVz4Tqn3pZorxsW6c3YsUNMWu1IgZ8VBHUwrS1pDU
	 nbviJEgHcnDEVWHfaNx3jCgBGKdkvaKb66QBRHzqBC7g+hKAR/q+GDvNSlZPbV90eT
	 RpkUkXd38wjOTWf9EiW+iff1SgErNPtD+aMsM6zJrkrniBG61c14fF/Ypc6hwOVJiw
	 RmbpAs34h5IvdSffm3xGylvDlDsFIuA6mKhA2N6bX2lhid6xVNUtaIvbK2JtJ9NDtL
	 weDqZZBlQEsPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94138C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476359357.3213.17902024718012845131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f5eac136d4d6f09e102b57d1837aa3e560822eb93fd5fb3aa4aa8882c94c89
Date: Sat, 09 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754763593
