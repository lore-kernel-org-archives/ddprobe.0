Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D17F1FA14B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736810754; cv=none; b=RRCDiso2xnQG6IdDb/OkMjZHJaeLpFeZW41AkfucgCWx5v2Z0wBjdQ+Z6gMukKtGtpKAirTfHW2H8eVLSrqnPUEIbVHpzXY7wHP9W/EOHgiDpP73vQFlrDA0IP+KYZVfxUG7GHJtNHk+njZkz3yRGq74Hj82EhHRl8MOTIFVhs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736810754; c=relaxed/simple;
	bh=/gVmVdFVm5xJ+3mYkeVdoPaPT5jNwVNUqk7u1AGek2o=;
	h=To:Subject:From:Message-Id:Date; b=XrfsZJVRtCjzKNqH820KTe92nOJlPn4zL/UEmUsB+Uao05GOy7Bso08TwTp33ghMoLHdhjg/4NmLacmtahYXOce8AYzmqhyZKcr1gPkt0JwBhdrCRGt4OkKXoGABW6/e6MvX+ZfoJGy20+tTAH3l2OPVc+lIqIC2W7qYx9H1JIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvVZZ5rB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvVZZ5rB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17AB8C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736810754;
	bh=/gVmVdFVm5xJ+3mYkeVdoPaPT5jNwVNUqk7u1AGek2o=;
	h=To:Subject:From:Date:From;
	b=BvVZZ5rB5szzB27gTFEF3a8xv6ryOcVmsyV7Vv9hdsaUKY4uOUWmIGO1Y/kPmRxOO
	 O0cjDTPzpC5JqhY9s8ttYC0KklhQZBj57VSklKEzC/k2mHKmakgZgxPMNa//pGNxNJ
	 FHey/SPNsh0H3/3gScOqrDIEai50f0uYn6HiKM97N04hoc/8Ow+CFy2eJBwXGSeZqv
	 B9QG+n8QlFV9vLeS9+2/wopUVu3FWVBMxkW80aSg2WYBjRvnvbxAikZD+RK60/APFm
	 2bgCof04iy9SuO5MgUVf3SenSCp1dmeB+NbJO46ggWfR7FW1rw5hhCJk5Nsqu/ULSZ
	 ZHOCqDWTsZh+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E49FBC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681075372.31053.5775882933824892717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3f90b11afc30b22c70db660496ced900d9453d1674e2d0fc2316083096d38b
Date: Mon, 13 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736810753
