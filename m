Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E9C15D5C3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722105354; cv=none; b=kD30DmSQJMvbzYCs12YdqcsJtzvXsOg5nUxv9oOiqmoOw9BZFC20oJ8QewlooyTbnIPROXdLC3OnuVFWgsCHWcvQz994ZL9wuMvrrbBQG0oqkqXN2pHTPpSBvsti2H7BEogA/DTKwVBSwBjRvuBoTc/iLnjZRvelljKFA68Oy94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722105354; c=relaxed/simple;
	bh=zBHLGcIpm1MSBCdILFzfZEROW215lZYhz15CmqB25cg=;
	h=To:Subject:From:Message-Id:Date; b=HoChF2FuXWt8c3CJAedNPZ2xz1px97Vi2YCwHtmDinvoA+RthImsH4GB3+p6OozX1rNF1j/76S1Mck+oV1bAeJYbqZdjdaCV9yOKad/ticusy3ppAFnhh5Bsh0mH/JDlDUApYcz+uqTuq1WYHs/lK/E7VsnxaCGhEHRPlnHhfcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZuT0h8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZuT0h8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C2FC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722105353;
	bh=zBHLGcIpm1MSBCdILFzfZEROW215lZYhz15CmqB25cg=;
	h=To:Subject:From:Date:From;
	b=SZuT0h8qDzKMbuh5B79w1JcfgLaOhGP4ajodl+9XAvo90VsoniCv5PRSqmp6k9hTy
	 CL1zWEgdlA0iE/wLK1kjmcrbD3ZxH9t2QfV0GsHjs75GBgS76UBRuo1ZcyOEZXTzv7
	 OpCBktyQwJlkq3nuqXHaeGq6NAeKjOsTvaWHD/SvmCwvlONUs8tVXFcEMpvTSnVqIt
	 3gMQQSFlS7uVZMIbq9bf1s183AVAdddODofoPwPqA7KoaTUTc8GNLXmEluqNjfSS2S
	 pDMi3/cguuTZy9n0cbbNOQ0iG/5nAhoMStYJl136Riqrs91OxQIvHxXVmbBo49AfHG
	 a5b8lkLHMQUJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99997C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210535358.29062.6442458273089803458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58756dee8244c315a4aa64cb67306215ce43d12b9e040b6e220214eb34eb320f
Date: Sat, 27 Jul 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722105353
