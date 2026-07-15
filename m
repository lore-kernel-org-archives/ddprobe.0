Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926FE41DDED
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784107114; cv=none; b=MUjg0GdGQ5x90rs5O2m3Jd9wxAs6CUjfuhnZX71Y9cAjNzOdp1nxKoUp61GW3ADVUUK82Bo6VTr+WAMuLqRNKwhbiaFa/KjELO5lW6lZ1XT9rl83u02lFminCMYjeyUQWPTObU+DXajdm82GvozLsRFzYKzZfOKMXxJJM33Ce7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784107114; c=relaxed/simple;
	bh=UQ6KicPaxLKdOycHcO4eAAtQGcWBDCz3w3QIqlr4frU=;
	h=To:Subject:From:Message-Id:Date; b=oO/sRv9G57D03RuE5cL+uwPDIDWmuVgrw2uqtUaYNnLF5HkubtzhEFzziIfvtz3thuB4HCS7zF8b5vADo4RF67rYos+xji/zS4efS5Vb2yuvpe93kuOHElZtRqNw2amMfjgYmNvXkT2eoq40UA6A4bCCUrTsLZpwnBxQdLIK/GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osbnOfUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osbnOfUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23FCC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784107113;
	bh=UQ6KicPaxLKdOycHcO4eAAtQGcWBDCz3w3QIqlr4frU=;
	h=To:Subject:From:Date:From;
	b=osbnOfUsGeJJbMcg4TAWjsnTOTcwjFFH1Jah5FnYlLOTQYyFP7tMMvLap4WwxHw0m
	 +6RjgnJ7dsKH6vF7dxAXLlzeF/3gU3f39eLTf5PjLysgB78aiasV9fUxhSd9naL3ds
	 JgXaBi3Wm08qSrdKFk/T5bD9Djb+Dreg4Arn9w/Kf/xuQaVWJmQuk5RzhhGaTMVWp+
	 /Xs/sp0UCyj6bjBYIj6OLuiDxREkGxgHPza+OBsx26lO7L1jyZCd5kb6bxAZAgUY5V
	 H/m+7h+aLceUTruIKl7ykxBMrYVsJrVu1ec/cH7ACtFdSNSZt9ahGBXZrcTWwaMzHX
	 tGm65Z91k+CMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94A6C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410711368.26135.7282581610983344351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41692f1af9c27ff3698c57d2dcfc598413b05fa71264859496642ef4c8d9823
Date: Wed, 15 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784107113
