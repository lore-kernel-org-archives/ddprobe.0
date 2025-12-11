Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5741DF26E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765446774; cv=none; b=rnj/7wxGCwmP++NOsVjMW2sIdFeuO/fTimEXD4ZnTeZx2Ejun7waZyOH6bOC54nzySzz8DSAQUD+EmPtDwKjANoSI5BijhTE24FupACZzlrfPU68yRHSLcG52pFEISnwnp34SeFT2svTedVqY/RlvN+6+GAka+Ws2EH1kqFVVD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765446774; c=relaxed/simple;
	bh=Zlg6eW2XX469ScIRf/1ouyYxydtlIUlJN8K0Mh55Jl0=;
	h=To:Subject:From:Message-Id:Date; b=S+BgO6aUfCasOUp6HuNQOr/4nxSvb5qQMFHm7MXj7sANZ16AHe76dzh5E4OQcQ2pd4U1pFxZMnjGfbBhvHljWqvB2gqB0Eub0mjRD/k6H4gkY5NazDX3av+g6K1zascUhlDF1oyykEcnbw6D9aCXVjTzqqx2Fqpe0qDc7uEueSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FICJB2eR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FICJB2eR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5085C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765446773;
	bh=Zlg6eW2XX469ScIRf/1ouyYxydtlIUlJN8K0Mh55Jl0=;
	h=To:Subject:From:Date:From;
	b=FICJB2eRugeZs9jemLXvVmAlR79YHV2XCy3ZRKe7/U5B8/tdF14ELQkoS3OYHskBc
	 xF0heP/0B4zkAf+g0GcHCwI7ac9mIObysPRna29NKtD78tTUS+KuCA2euMXWLZgK8G
	 QEssqnrQfqJXdyxUpaZxteF73Xl+MIpivvl9q0iFqD2BmwnYc94oXyEsTZM78XgSbz
	 wDWGskIHAme6yZO5rEzgqsbNaZ5KscHmfRUpY5h80rrGJmvUCmp+mVetC+FKMGW3p3
	 yWLna2jpQMdqp6Rdj5ee0BIzs9ush0VmRO8y+CPV/voTsN9RgmeNB138uulEVx/Fm1
	 lRUEo8VKzSGDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92082D41C12
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544677358.32041.1945682401903578160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a4d08fb53a0239afc869e11d1c818f6cc15d0fdaecdc92abd9921e689b55de
Date: Thu, 11 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765446773
