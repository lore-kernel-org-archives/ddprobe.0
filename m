Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F2E2D47FC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755891594; cv=none; b=lF0B4e74q9q+JvPrRzdxsUe2cbOKdTEJo3wZrCySlPyFHXcy6JwDsm6QiSHLIuqF7x/dZZ2CYOlyj+peBMtT6g28ILLm5b5fE7fwwycwXNN3jw4x5j/i/PpBOTRvGUAVKL/gjED0Zhdzpsn725GRExboAG5BSfSRzh1k6uzMSJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755891594; c=relaxed/simple;
	bh=5tnnv+RmReETAumvM7u9bWryv08qPpr2ry52zETgTj4=;
	h=To:Subject:From:Message-Id:Date; b=Ifl0Ar8yuYXDbUFn71QZC0B+bMt6SzGUwELk6x/LufpLVMfosNlnnth9/eaIRsYCfD7gm4ohypcgH9r1I+L0WKny/CIUenEbiq/zZIobCxK6jPP+CmCAlM33lPxcKj/bWbCyy2lJC4mkZnbdjoAZfrp2g4jqVu7yxgTo9sq6PfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQF5OtKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQF5OtKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC77C116C6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755891593;
	bh=5tnnv+RmReETAumvM7u9bWryv08qPpr2ry52zETgTj4=;
	h=To:Subject:From:Date:From;
	b=KQF5OtKAO/bKWIsIwEo+pwR2A5T/ENZZeWpUZl1kPHJpySzxh4ZrK6AjOV53iWqtV
	 A+Q46V6bHjryFF8dSXh80e5fV8RagCGpVEnmidJiuezprlUKAEDVcg0jW2slvxDPwt
	 NVo7eNlhFNus2vbGfuq+zFipmwvumheU0aF41RwwAVJn5IuGIs9cetrPRiMCmFM1Wc
	 W1yj3ALhSfrZY3EnGw56DNb7DgQ8AO8UKs3WHLvXYMZmrsA9pd12/X6sCHf848ab0Y
	 X/R4NKkHgLQN5NHOCDirOkl80uuy3aA5/ktYdgSlY592OfUVDQWeyMRUKwRAGql6L9
	 o6KAS3AYW2oIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E620CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589159357.8304.9078866306260482204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a7d66afaa6283161f9ced517f1efaef5693f58f9233e3c0d6e26361dec95bd
Date: Fri, 22 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755891593
