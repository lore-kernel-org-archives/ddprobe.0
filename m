Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DF5188000
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755297594; cv=none; b=KIyA3IzUiv5SBe1jPNpESudxK/M7vSe4RY9kCRms2HNvMWx/5AHknlEA9DqGRhzVgx9ebb5zv0gB+HZIBg+gs+EBlllvTXvSOw+bLpRToZPS/UM7oZ/E3y788Dt4yBt7Xc7AyAJZ94qgO62Gh0k8+xYSsfjRxVYkox17ssSaFiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755297594; c=relaxed/simple;
	bh=UvMwr1wGrdat8K/nrMuJn/Ycrr9aTBGKvfdSHNMbiUQ=;
	h=To:Subject:From:Message-Id:Date; b=TyKpdzy4vYXlJQcDLWJc5YPki6wrjIFQZCEbfJ6LRHODcB//7U12neVcpbDrEkV0hFAFH6QHVdQX0Anm8pMF7raxHAhm/W/oomnkSCaUg1X9WsI31e6dVCnI4O3cf4TEttOUT18tJAG6JwoZ2G/LDjXnR3ZuQiD2hrTFlun8v9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1IRtaG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1IRtaG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2BCC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755297593;
	bh=UvMwr1wGrdat8K/nrMuJn/Ycrr9aTBGKvfdSHNMbiUQ=;
	h=To:Subject:From:Date:From;
	b=I1IRtaG+j84wgt8liDOLlwf3vGkyHO7LopBtqYdEXeL6mdPPAude+SXBcNDLJTdaD
	 zbBSODLGMNlRner5WW99Ozdlfv8JcHxWyi8xZLNnrSHeGl8BbnhhjjQacIO3EsKa0H
	 Iuve9rckLIki9IK0hO53aHMwiXEOAWqLfxgRwgPSI/kMt6DJJ8MCvvtDlcVIO6Wasv
	 f6lxV2UBkGIqm5evfz8xCMuWWVkAFCniSHwa4e5p4mzvYYvpLu7fEN3upQRB2fzgkU
	 ffh0ojLbFm/kxz/ttvN50ldLLyu3znCh6J495KXM3pdI3v6Et5KPZydTBcNXMCqWuz
	 gntCQ0uItGTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D2CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529759358.24232.10915595808447250087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83adc119b17baddab759ae94a7f85db84fc2730ca5807405f46ac03d5c2b7b9d
Date: Fri, 15 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755297593
