Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF8F82864
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749029994; cv=none; b=gGkiZ7tYV4VxGXKq/nig95Lp0h04BqAIpmsvSlgfEpjA3glhpYGYgGFLTZvROqlyjMXd68hf7WW2CLY71PVq2QovwEIIU7EI4+hpWmy4XNxoFFQXEyy5DftUznnzZMN1o2VbWnc47RNukG+TvtnL9RSX346ebT/b/QirLf4R8gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749029994; c=relaxed/simple;
	bh=AYaXMEZQIrlx0g7qXj7psBbczqK2JMKKggkPK+3A3EM=;
	h=To:Subject:From:Message-Id:Date; b=SYFePqR7YeVQ9ZTafAevgHh1PwYw0oBFikF3zHuFW1fixPynM7CAE5wVOs+6XIDO2DbC+XNNxgEu0UTxnW77N8SAgC/S91Odk3LnsW5Fl/qdj36K82wuDmpplpzJExntTvRcQIUloaguXZ+s3imQcrYmA7GrflTgl43nZP8aPn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHuvTEWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHuvTEWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFACBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749029993;
	bh=AYaXMEZQIrlx0g7qXj7psBbczqK2JMKKggkPK+3A3EM=;
	h=To:Subject:From:Date:From;
	b=kHuvTEWWyM8ghcWSCFPjQg2bhcG8+GoZFSE1IzaIrMTD7Tw3PeZHvRxd+ZOb4eQlk
	 pLGtcEXk0ThEvmbM1ERCRa9J2YvGlMDUxTlQ1xJEr97fB8J4txfpO1u7yypAxOG+M4
	 RdwGLGv01Jj7ijQQ2UUMMWjlvqYWrFo+A2GfKMl7WEZiQrFJrU2tAym+LZN2Q0yK74
	 P5OXwIh8r7obMRgx+/+oJRYi96HZXNgV2BzoZTrNAYT2hey7dzenW5eHBPewuQSf/O
	 ELe7WuSf2Qz8ABPIz+Iy9dAF3GV2TbIEbcViBQZYO0bVx8dKk5HZNqZIkCPx5bWE9R
	 jL2SdSr/O7lIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A00DC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902999362.8078.2429547281014785518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d7f21243b1ee9a34da73f5ccac62eca41ad99d8485328f9799de8d8ba5bbc0
Date: Wed, 04 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749029993
