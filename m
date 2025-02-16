Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDE118A6A8
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739698134; cv=none; b=mf6tdI4m53brn9TR2dfZnksjsabM6mcm+jXDulfLN9XPG9PcvFzAPqBntIcg98x+Sj3D7+/tA4oH5zhAyjRIFdnTkFZ4jbDgjHTbznr/OIT1lIgvHN0Rj1PEk+XJy1iG19F7HZDAF1OnAUnUm29qGjt3INsrY3qLkwpheiq9R6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739698134; c=relaxed/simple;
	bh=NV9BeHs5rQDJd+IskpZbZOy21KFYChs4V2yumi/LVv0=;
	h=To:Subject:From:Message-Id:Date; b=F4UcaE9fAVhRt7eEt9GVW5a3pFL7w1bWCItryzxd7jhEZwDKKU0p66WKrnoRSEReW9kniw4aNGxz8vc9zDhocTD1xFGmMQRBvN3u6RzldEIgnIvjt4pJAk75kcG6OkgKW2bU7MHlpO4zr4A0gg+PncAracUhic9KuRsM3lao6TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcuV9CPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcuV9CPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BDDC4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739698133;
	bh=NV9BeHs5rQDJd+IskpZbZOy21KFYChs4V2yumi/LVv0=;
	h=To:Subject:From:Date:From;
	b=dcuV9CPnhy0cBVrh5ygYgEUbHeyyzmal/Ru5Ps9A7ERHt+Io8tVxQoGuvwv5b+9HU
	 fxNdyaRIG3/6YPTOFf0tJnnXNJK70KAvP7GUWrKINxI+DtqLzWYk6xmj1fVyQ01av6
	 fYd93cpRiDndOU65U+QC1qVJgEtvghst1NEDkdlJRzTXQr9qHKMsezEctBjcYry9V+
	 0LHWTCelNLKT8l4whaN7gG5Wf7RH9yHwvpuB4COT+xjTkIvVtxMxjXNdfmf3PG62/l
	 x7w+Z/dYhJkaap5OrE5abBBIhz8eJT0OC6WrU+tb9r1L1uPdCqZgaESzEgZwaksxnK
	 tyvdzoLnzPP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D9C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173969813360.18662.14233469039812590427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c30ffdffb793574a2d8193d3afbc80ba527f4f1bb49b4905bbc1faaf4ebee82
Date: Sun, 16 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739698133
