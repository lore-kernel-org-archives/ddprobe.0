Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B7869D01
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710231497; cv=none; b=TjVQ2pcNMt7pDxyLI+mUDtf1MHDphKrlBJ8WywAsxsc2nsgps/HeWfkXg+dNa5bf7wmb+KYFrDjD9vMrewCHlmiuzshEQlm0Oyi/UBZrm/XHGO44mrhjS0nCUsA0QHqur4kqLXkHP8bmN0UOhAi9aSbh9DRDRLN4aof0RIzsF7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710231497; c=relaxed/simple;
	bh=Tzea6KFcd4NuLaVei9wmKmbkV1QpJxVluDYY30l65fY=;
	h=To:Subject:From:Message-Id:Date; b=hFx3+nOMFG5+ZlTAlvjEHrwBXWa5M44m9bkSXlEPkequBOMdUnfzw6NrIxye2HyEf5TsxWGesFTFNW5/MAlEhNnqchxQsD3eeq0xAHYre/rcEhmn1YNGElgrlPVJlEs6COaYzjxR5PnfAzCv5vmES3CtToOuWSjiy5+2mdo73Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNzQDMFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNzQDMFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71876C433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710231496;
	bh=Tzea6KFcd4NuLaVei9wmKmbkV1QpJxVluDYY30l65fY=;
	h=To:Subject:From:Date:From;
	b=KNzQDMFTWolkfIH4pahz/XyfVq2OK/4z6xIwY9GK2w7ntI5nKXoz2KGiFhQtJ9LYG
	 NKkKaz5gMwQCKyC4b1x+ghvT7E2wj7S6nFn8d6OuXTHzFaPNthyqZcuT3IW/QUxe9x
	 vyWksNGT8jwOT4vhhFcg8EI4On2PTXUzeHqx8ld60NUmvYFft30P6SawXx6t9OwSGr
	 SKa/Df0rnl6FGQho2gjZejpJs8sWznRoz4XJK0BD4KIRY8fp9IHujYd/zgc043Z+UE
	 hr/my5WwsJKzj4jWtV4OpDKKi3yF9mqxeLoxnkX2iNPpSeHeb1iKf41cHYpQL10Iqi
	 yLPc2bXs7eSQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDD2C54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171023149637.22805.7839309367849019194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7833771b574d48666ff9531e30e8234bd512ab908f1edee980d6e633cc221d4
Date: Tue, 12 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710231496
