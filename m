Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFB1392C3C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785170434; cv=none; b=BqzzFXZebhMOTZdT/XD+oyj7sR0KTaNMyKtNuAuu8BHEwt1ZDQ3q8MKlS/3uTCoxl/CHhW7u3EeKG+QmJZSGwyx4Gz9qLTagdI8po2W55IEHAybNzlSYzUnOE2P72KG5nOb2LonfHUIccKxGoqcvsinaymGe6YhHAI7GTKHcnjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785170434; c=relaxed/simple;
	bh=m/JRHKoe31olYZCnCfPI+gISbhFFxlBG5HJSoafMVtE=;
	h=To:Subject:From:Message-Id:Date; b=KNC5xqbwPItvULoeNVOl8eP/5NZFgHyOJ6YkfnrnGZnASVTzRg90PgjIN7GC20BkOwya3C1evGhTWswxXI8xJlgTMthWpE86fm1JXRJF+5vrkQ2tdiOKCAI02dJG2uV0cf/rJbJGwOtIq/3aEkutudPPRo9oxUKb3k3K1lOLeLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CY5pGXNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CY5pGXNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBF3C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785170434;
	bh=m/JRHKoe31olYZCnCfPI+gISbhFFxlBG5HJSoafMVtE=;
	h=To:Subject:From:Date:From;
	b=CY5pGXNue56uXHsT/ZIfH1SHEvuozOSAiJKVAzm1+fLiUYoHw6zz1hIQ9DXadPpP+
	 2bRHxkKsArUDK57p2o/BejiPqv5r/SIGIOWd2BAu70Z1bY0rKDD8B86NG5GQx/J0PH
	 S859EwPfTt5uZkt6FeFculPMj7KTRUl2X1IfLo/o5OwW3Qt6D3XkcSSQVdImvt41YR
	 XasJjFup5pKf5jclhbBAHuLnT/x/J7QlxWAUOspYzmBrseKcKeBDk0+TZX4rC/F59k
	 n771F5sqj8w9QvrsWmdo+6llnTGWFiOFLAv6gF1XJ2se/kZN8uxY9yqrJEGdhu6ZeE
	 OsVUa6GcB2BvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2173C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517043370.27691.1097378282108067989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9782e326160a057c93a021fb3992dfeee635637e2f5960936b32094888708bd
Date: Mon, 27 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785170433
