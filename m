Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65615191499
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742146194; cv=none; b=BIIH/kYd2spk7wpD4v97k2Ji/czJ+zRLbBEQ6fgK2cm+RHwQlgCMua5MtHPgHwa3FdxUDmRHopbk1ALfwo8V6GRVWCoLxd4BM4NoXQFSZhb57o7TuM2VL2w6oFosSxXrpUVZ9N6JnMNHUSKDajL0bDuvHo2kB7Kw8mCk1DkTZvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742146194; c=relaxed/simple;
	bh=JM4F0cEKM2d+o/NmlATTxvodkIOeZHTzvmkY7e79jIw=;
	h=To:Subject:From:Message-Id:Date; b=ejW+niJlYqqHmD5ZbXh4+uIO6FZ7dIW2/x8dAzxDjtBLiWHZPITUV+RgjYXKuVsQaHAKXbmEHE9OIUMAv2rw2S+R6hD1w1MytUiEBWQjum07slfdBsrXS6GIOtxmZTHv0qngWdbVqBe+DTRY13oOknxwQmj3TiYObtmoYGiE1+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsKU+W9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsKU+W9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D83C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742146193;
	bh=JM4F0cEKM2d+o/NmlATTxvodkIOeZHTzvmkY7e79jIw=;
	h=To:Subject:From:Date:From;
	b=ZsKU+W9bJkA1XG2c/nAEt4adeoej+QJEXzWqKHYfZ17ZZcf6AfxR+sMJNLmLpkQOK
	 qJHWwldFSTSlHOpM3QFQVVfZUDF73iQPpuLhq1oJHbOqsIZlVkwcqDRDdLORmq/4pW
	 aAJ0tRdClm7vSJO8o49COLZnB8DbFaQFAvv4WermuOJWHTtHyndj9j6F58Fa7Y379O
	 wSJJkDA/gKgoNIiwR9aFr16RCftyES6YQFAHOgtCcx6p2q34ZDTlHs95A8iwBEEv5B
	 Ho9p8qfDMd1ODo8+E9Xs9H237lIReubORqhyznr3fpJfSx8/EUnA7wgBfXFhIUilGY
	 P9X7TTZSGgwIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DC5C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214619368.6873.15449763579481262704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8c1927ec18a1b059089df014e43297339ad05496205300e25bcb2b17fc4d77
Date: Sun, 16 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742146193
