Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D2C145324
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727292954; cv=none; b=WJQRJ6KqqqKFKAqJS31rrGBsPT9+3wk6ziJQzwikxI1lCPfqExIC8Op1FHGE+gzDsvzY+1AgEE+65vP++SleGhTdavP4y7FaHZe+fhFLkcgYheICRjoraJ/pAJWpiYeN+fpR46QKvIKSdLaD5MP6ZSvNaxGpgztbGgKDHhfr+w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727292954; c=relaxed/simple;
	bh=931ngYnQ9D2o1gt49hLDhN1XCoK654zLkTJ3+Ei177o=;
	h=To:Subject:From:Message-Id:Date; b=hsoyA6kKBd2EmX7WC29KKigRHRR0WdaTcjjY6LKkNa+K7bio0H9COLWaR6cS1Yi/aDzYB9Srjzz5oOt7dGoEKfq6o2RJ8fmdo3pGVs43xNonfEdmUqFfaSuAgi+NNB+rs7/OPES6GfaWzdrvk1X90QWhe66V6BbkRHuxqoKqD2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcHuwGeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcHuwGeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B47C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727292953;
	bh=931ngYnQ9D2o1gt49hLDhN1XCoK654zLkTJ3+Ei177o=;
	h=To:Subject:From:Date:From;
	b=VcHuwGeLccqxFj3DvE8p4dUPNMOPBEkbwdjiHJGce+CAXq4GLQdX5WLHUWy25IvOG
	 NS24pUZkOjnBV8MOVwzMyl9dB1Q6t9A9aF16pHvegxZaN+8ffYLdfiR9m9yuqI1yhT
	 jTcKDIYb/h37W3nvQzQ6l+AqLvfOVa2hMnpvIQkpCIGKOCtzJKzNyLlGN7+dgwFkSC
	 F5xFrzUxx1oDv8wyHyK6almVIafEvtQcLTNQzjBob6foWtXZ8eWDlmAdr5Gb6RxQtS
	 4ZZC1wJv3N+70jpnMpuAL8Pd+hhlxhxvv1s0VlGcB1N8AKyRpxNi5gxL8Jh2Rb3CRN
	 G8Dp8SUP2fbng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D242CCF9EC
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729295361.5669.2041246663859681710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7aa52762fcae7df53c5399423eeea991d5326034478701a24e989f9b83b857e
Date: Wed, 25 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727292953
