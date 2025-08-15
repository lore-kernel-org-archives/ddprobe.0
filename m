Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C892305E3D
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755272394; cv=none; b=eRitVz1hwnXoDeOrfC7IJGpy2DXeuhTGRSdjHf47Oz/5CWodTFG1R4S95HCq5dIACju9Be4AgurB94utRitAx03DpINy9SyQVFUI+0lKmSXJRsi/N/oC0MCxfCfpC0wqfp9DgbbAa584QaUjQBPD3PUioyL6327+kY7yyzI5PXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755272394; c=relaxed/simple;
	bh=iCwXUkiKoE6KD1o+JbrtmecGWPwLLv0LGUXAC5qzFfw=;
	h=To:Subject:From:Message-Id:Date; b=ONjC1Qw1TohDtWNyyg/MWlvYmfUZ68TBxR3ILaiFJ7TZxEmruVi5K4R8LlEArYaAZ022wFd1SLuzij03NJs//O/iPreI1N6u2Z0S82NdaZg+EbdRITBhPpWmtU+vul7eItY3K+gwEIVB/HYs9C/ng2WVogAKNz7c8YIab0sbzK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcIuQa41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcIuQa41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C51BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755272393;
	bh=iCwXUkiKoE6KD1o+JbrtmecGWPwLLv0LGUXAC5qzFfw=;
	h=To:Subject:From:Date:From;
	b=XcIuQa41Vr4eXdbhGGEhMCRoXYkxjG97j4RKWEoQr4FNxqTGv7NZbcbZfZhYXhLIh
	 JkF/1DihpTArFz7mumPGs6FOrrm9xYZ9CQJpyHcmx0Ql6vwQvRz1ZrqrnptZzU1oox
	 pt1u/Z84QUAPo9lgOGyq66fUkeYAP+XA6XxrxrdsRniEZ3Q+NYA0PbaMmiRbA0TdoJ
	 x84aiOwpQKWhIhPinBEWUnmyd18Klt0g+byBpw1T4R2z6+EqjVvqvAEZ8CRmLGcAx2
	 dAFI2DC6F49KbUeIVVywmjh2ujRFhfdziai8CmHBYzPCNLtIyiG8V4qWA1dAImi5gg
	 328fU/9EvDGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F068CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527239357.1110.13402995636280831836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673eddf831ac29c3480dc586a297bfcc6ec6daa95128340faff012575abbe09b
Date: Fri, 15 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755272393
