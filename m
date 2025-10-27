Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E828E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761551994; cv=none; b=ZLpDTccaOLxr8MCrGz0hbWDAztabaVj0YtEhFEgN2aoDCAZEErXc59+AyNlrzDiChkgfxpoX3xRwR5GOxL4GRisQejwboq9iQR5tpDih8ombe7RBZ5lf5hKuQ4uPlJKiFceovWsOXlRIv8mFbpEuSRzM0x8mJ3X5RWN13pm14jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761551994; c=relaxed/simple;
	bh=ZZBirTPrgNrTetcZSBegnjwthT0f8CSmyhNwbbxS7fw=;
	h=To:Subject:From:Message-Id:Date; b=uiYt0x91D6ztUE8IrBY7wnANeRExXeTaE+3Vfc1IWvCOkCMwHp90SMS41YWXYQz4lSPKqdU8PxAQ+cKVFNZ4b7ZWvl2qb6aRtWBzcQbpSwPGkC8q40hQFeIy3/ba4u4FhxraDdudqPbYocpbtlwKFnaJtAk/wVEh2SE5ET6Omnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDqXmq74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDqXmq74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCABC4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761551993;
	bh=ZZBirTPrgNrTetcZSBegnjwthT0f8CSmyhNwbbxS7fw=;
	h=To:Subject:From:Date:From;
	b=LDqXmq74vAokIQijVnIe3rV+wLdn06+hEE6mBNFb1fbuRGS9GgeA5fp24RBQZGJls
	 9jnjFWUpjX+CYtf4PuuaggV6h4lYwA1QVdDda/OIgPzk4Ln0XexTTVk1ib8y9KBBMQ
	 LaqMIrAsCIg9FJQYVeJP32iUXLosmbwZhLNH6rS9s0MJjjYdj5Z186tvvixHdcYO30
	 OK5V84Szyske9sOX8xbB6cuwap/w+7T14Y1m5uqj7DuFeaUmPtF7rZ5QVsHUO5YRm6
	 ThavOqB2MuT0aKsBo3xBgRGUqnBmvrQ6oK4RKOngcfievXsSFK1TzI0FfPmcHKKemc
	 dITs160wlyRuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D59CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155199357.16577.1518726257907625245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a0fd654024a1375d628ce30c31f0204586f2b75466459613dc3b869de7e044
Date: Mon, 27 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761551993
