Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B314391
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721522154; cv=none; b=R2q8vk3BknLm/5xD0MtKANFn+waCduP5J0Rj3gAWACeKodYJNuQ1TxDX/HBgCh8CNIbDH+FqbuM//yuN+wflFq+Tc5y8MVAmE4jXONpSKHjfiJfm4QeThV78bUuo31dgkKu5dxoQGr8dxa6R33h+mEpdahBqsXHyRV+DqO7YyfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721522154; c=relaxed/simple;
	bh=qBqBQWL+bkiOh3d10M9oKCXz4RtAg13WFJE/2ceqc0Y=;
	h=To:Subject:From:Message-Id:Date; b=Wa6C58z+5xEeVZdSETSlB2RRZWjzF2pIlwoe5VHToIF0gHI4dJp06YruaLQ0k/aeSxjIZ08l+pWJCedh4GhRDwWRQMg/iuX7UI+NaEX8INihZzM9wqx4No5TIYOzv238hNzGqdtRsV1ExaYm1o1LVW+ISj2+q+9kfH2wv+8NIVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okyf6bzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okyf6bzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74C9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721522153;
	bh=qBqBQWL+bkiOh3d10M9oKCXz4RtAg13WFJE/2ceqc0Y=;
	h=To:Subject:From:Date:From;
	b=okyf6bzJYzskB24EhBr5dnlP8eXhBvRrNiMUxABs0t1tcfIrHH1HbgGaOBH+RiBjv
	 NSvnZGSKw8rytIeMY6nREQO8PoPmGwZIx/CSDkiEvaZtBtUhFSqKeVSDMbpHrT2DFm
	 gZc1yl+RCjYRj7I6O6I2EWa4yy6AnMkuOjJqWsL2Z25MUfh25t43CuiGScOmbGAqS8
	 B72ude4oDhKe59q5TDsNZQA6sVbBhsJA6d5OZ3sciTNKt420mOgy4e/pDTVub9azVm
	 nGilM7mLhrxchxYB8lvT8cVQ2+9O8FAMNZGEJ9xbBya1ZfzyoYezFTpfDo+MmqU/hP
	 RmjLdNKBoJkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE7AC3DA59
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152215359.16247.7002502249836938061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e287282a67e6ea73deeaef338a99184d19bed8c61f4475b7705089e05ceb88ed
Date: Sun, 21 Jul 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721522153
