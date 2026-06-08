Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F3134CFD1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780890274; cv=none; b=F4XBH3Wqh3jCD7IEyYaZ1L7zofHG/Xqpdje3BZCgn672EbLx4xG57S2y5FaTaejELxO9FxJOiGVPV7v1McMrgwNEcCyut3TXvL7YYVv68PcaihX0lwq1h2IoN8rV3djuY3/UUEipjHuQW4DIfG/c/3XkoPqrO/QuT6ndMcSaCXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780890274; c=relaxed/simple;
	bh=SZd6AGcOAH78m+HrdyEPIda8roQx0ga868K5hMW8MuA=;
	h=To:Subject:From:Message-Id:Date; b=sRuUpv1VnNV4Z7KTwSvi1WoMx4ltYhndLbFAk2Ttel6wQ88gj5Ztf7WMD4yWXq4+o8ddFmBByUXTAAMCkB6iKVlr5E2krpIwW+ZYWgk1X1Z3WscfZnWkbK1SUlKRkG55nne88GFUPq76VKgTF/F7N+nNNy7nWlpjVv/hPyQXeRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCZV7usu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCZV7usu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EACC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780890273;
	bh=SZd6AGcOAH78m+HrdyEPIda8roQx0ga868K5hMW8MuA=;
	h=To:Subject:From:Date:From;
	b=MCZV7usuct8XH8BoILqdRm11yUy56homwy+QxhQ/CQjYM0j1df2+qdMeffPWvkR6/
	 tKyQml8JeT/xX0lTn7/DC2Gns2MQzbumUvlS1abdmu+UO2McOpvthSSWljPwOK2uA0
	 pAuZO0LvdDhZfyFs9/hCH6rfZX9cs955VXhbvg0p2Vafqud9DaDBa7BoKE0iIkT0/k
	 +AuYlPfhAm6hr9NDKrwXhS+xwuaCWV0Vrq0e2DA3frKsJLohaNoUr7R07DQY6S7wD3
	 392/HZKDEk5n+V2DiU3YD1fLCgRlAVAEnGpzLMaM66mda9nyoMgMv+gWyOaT7XqalE
	 38XY8YvtEsuvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD222CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089027370.2396.14878387521897639252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc9a903eea44b552799ebc4bd8d6337122ec323862be6163c21648315e71f85
Date: Mon, 08 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780890273
