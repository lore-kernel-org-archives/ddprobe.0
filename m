Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFE42744D
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735412754; cv=none; b=r9nB456G7Dg68l0urvRRp6Jx6D6Tg0LkUdIBe7IqiJ81O1sCm54n/qfGj+sXQn+6LhfgNTLrOYHoTdz4Hyx6/jAZ1RU9ivrenwj4FjxFh7QVi99Nn9+mYanc8knca8zd6IMy4Fs6CPnGPJScylqggjej4912EEEkFtjLrQDVEfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735412754; c=relaxed/simple;
	bh=g1YNKIfTyLCDrNTwkIKBLhW413seopWtAtTrvxRo78E=;
	h=To:Subject:From:Message-Id:Date; b=kKZ1uECEjuY2ViJJ/KMDZEdcJGaFHKssoqlhP9mbQBTlDuyWF/QJ+nAAqyItJueP0OUL+BmWPgJJBuLT8MuCdkcAz/i71KfeDjxNlWfL8v5vVYDifLCtBE3/1qVjbaRQxnA7c/E4xAwPh90mTSwjK0YTyWhx4HkE8sAbFq+Gj+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STdgsWMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STdgsWMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC177C4CED3
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735412753;
	bh=g1YNKIfTyLCDrNTwkIKBLhW413seopWtAtTrvxRo78E=;
	h=To:Subject:From:Date:From;
	b=STdgsWMBEh8oSHSDBL1qSGXfjWy4dxwoM15ZgMFeo0AY3Mc0pQGR9KEVAfbjqMlQy
	 YSZzfE3nCtH36xnEe8EpCc92HOnVgMoLhqoHXALWq2cC/dukvbdQZgwsrYh4UnVsLi
	 SsNkgW2ujQpDqbyU+2A2n9lAFtP+UKcSa6ozPeCsnXNKQup2lfEddt0T+MTgl6q0kL
	 dJAtrXJ5LQIx7FrFnpOMOoUa9Bu3qUBpaPtOB3bKzSRToPtae05UnGx8Yp2PKNHmEV
	 K/HAbL3a8nXWEm9gY9Tw5MAZvpYlU05L/VIiP+rD5zSKMRtLt3/sonaWPJFukCYdlX
	 k5cM8llWqoASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A528AE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541275363.14499.6396376197941740614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6edf1efa4a6fb7eb0fbe04a97bfa953a7a7c4cffe383f94ccababcb622c15a5
Date: Sat, 28 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735412753
