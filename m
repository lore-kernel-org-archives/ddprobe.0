Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9AA2DC344
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767075834; cv=none; b=IuqCtlYHyOkSp0TOUfEtTlF5Nk9I8/vkbpa1MiKxlHqnZ88ffhVpMDFRdQCvUiIBX5pSsYQMWhX+PTqbNXy4XK70q3ANhnkzsUt5RGyEhO4WhsYaj+utL2v8ojPfqTSchmGv4F7d0glZDouYN8FRKuFKnfeHTvOSjGJKwbyYU1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767075834; c=relaxed/simple;
	bh=WdyytJzgZBpajfGuHjuq/yYgqSvTGhB4vokiQK963RM=;
	h=To:Subject:From:Message-Id:Date; b=MUQrNinkTGonaFhHrO8fkoIwK7+lyzqAcDQC3v6zHH2J6S1wROT+nyrtEZ1keFbLamwDdWXreN/himpjYVDqSeq2p6D8vyC1TZi9JHApeR6T+8SdesM12i1n2lITQCoF3Ur9WxIFWAvBOrF4Ov0xygCcx5s0rlaRUzEKeumhiLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOA9Nw/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOA9Nw/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB7C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767075833;
	bh=WdyytJzgZBpajfGuHjuq/yYgqSvTGhB4vokiQK963RM=;
	h=To:Subject:From:Date:From;
	b=LOA9Nw/wPh4yxCFVjwZDXjK8mB/OEa+ywzDnnEfBfU25iI9IKk+A8ZCFWLCqijg4o
	 JfuWUiZO0WKiY0HH9GmEH8k7pH6Lv6aUeV/uEsV67lOfZb8+pDbxnzOc2FR0zqaXbb
	 I5uWEfD0aH0uq6aBzRmXCfOLpb2l+PfUzRNj1WQs4ORiTQZcRaN4Z+nHFvB2rtS+Ay
	 dPyaAnZeGqx5pcG1G8W4pQbJuwBPYVNLBsuBpOPkR+LZdKaThaA+1+A+ojwJQ/3PEY
	 YhpMk0b3OYgSsZN83zCvUCs4zO/0zK+RzrqpLbkfaZA+ZZXc3MSJkHKn5Wlh8DpHCw
	 x1zlcBvZ2TE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95337E92722
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707583357.22325.4887641513260999081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e832ad05b417065dd314f70e64fa01addbff6e22d7db853f3cdc22283f43b7c1
Date: Tue, 30 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767075833
