Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C1E168D0
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707905297; cv=none; b=lkf6tmejt+hr8UQzDWbizsYTa5lhWCrw/yC1l7rS8hXMhAyD1iXC6VaqciCdxyS023wRE332piy/3/uq9UrfkdlmLa+8dpWX1PQOZsiPO+HIua+LW5x5eAOOVHj9l6zGx9cARJb3MdH1uHJ5evSv5GgEn4av05GbgXOqdvlU4t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707905297; c=relaxed/simple;
	bh=Pt9ERaHVN0KQoWBbsHDyKdPrIqyjnTwuVdL1rpkrO0Q=;
	h=To:Subject:From:Message-Id:Date; b=Fnvxkj4zU0gUxE8pmPXKoY+1+54KOvPScAnBFNu+1e3nET+YR+YyRt0mLrTIj24cPAcnMo79FFnNKo0gm8hffYOA60dz7nN61oXEiAjM4g7fxMNXZcn017eW0Mdkv9rO+OVEMRzOwT58fNqRQgu83UiuZCt34CFSXBhG0JevtZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTaFzK4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTaFzK4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7577EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707905296;
	bh=Pt9ERaHVN0KQoWBbsHDyKdPrIqyjnTwuVdL1rpkrO0Q=;
	h=To:Subject:From:Date:From;
	b=DTaFzK4KSUApSJKiwqB0knROBcb2Pcut7jdewKiSdMkIi/luSQpsxcqqmXtN+Mqcy
	 9ZujNYvO92jHXMVZhG/Uc6IiB8n2YIiqVgeHiGcWjQ4BDeiYn4oMaEYwHdOF5amhjX
	 pBxWf9vj11ikZYDHR135e/1HYaSslA93is4ttLoCVGSczISubOaFMun2oQMjEExKPI
	 WUxR1g7FjjiXiWF/un4p6R4Sp0vhyfYiYNQSQgYfFJ/+aTWKerLCYTJ8nvY8MR/Tmf
	 MCH4JwNvoxqoQCCw4NYzFntrrcI1K+V8xEnkwzwJMOAMrAeugs7AnnLr76rSDX+8T/
	 y3QbPpy0aEGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D30BC48BEB
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170790529637.7895.5973589684979930139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b80cd5e73e7ead9b7ae5e4d1d7bc9dffd06ccc21d0c4742855b3038dab8726
Date: Wed, 14 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707905296
