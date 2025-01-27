Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5027D1E89C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737951354; cv=none; b=CHSRHp3ucxtKyTAvgBSoj+V9uZnI38c8hcDjA36hJsx4U6M9BvLctdF2YuK7OC58TJYG+G7HphfYEtCsO5F25mAqOGtFg1LyyKq98MFwk6vaeOcoBiotVlKs6qwVzfQoOWFYJO75DqNBVKkpE/yTYhffiaXNvh78iz6as7NElUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737951354; c=relaxed/simple;
	bh=pIeOO5QU4uqQN7N1bYkrCwcK15fXW/Fb5cZM5z6ixSE=;
	h=To:Subject:From:Message-Id:Date; b=Kk0QSvBcq4+jirLYth/S/1f9Gq/X5a1bzI3uDbaWcvGjIpFK8ZqHdwibRWlHMcV7HZK0ewdHifIF3tyPML8n6iSUfq/Lg95SIrC82KVzfAQ5QdzZpza7YU9Cx5E5cD+o7iua1RC0lQY76NxQZPdgtXtMws6LadCYaZPCE8+RAz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRtfUobI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRtfUobI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE322C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737951353;
	bh=pIeOO5QU4uqQN7N1bYkrCwcK15fXW/Fb5cZM5z6ixSE=;
	h=To:Subject:From:Date:From;
	b=SRtfUobIbLyoJNO0Z61R4h9IH4qOdXCO7uLb1P1YghDXtUq5Ynds3EenegNOzq3N5
	 cVNqp3lztIblzOSkKhr3cFbxQKVD3SR30Vvqw6TbL8/lOydREWJUCHbkISloODq7WH
	 EWlYBHio/JoBJJjPuKJ7cOIUQwW/PorvbBjJoaUjp3Ojw9DX4bHFxLiSYVaQI1NX9k
	 d1W4rEUcgH76dN1rI07J4bpwuVs72l5qVUBiBl3PRAatM5WKh4mkd5pFnjf1DLRSpt
	 OGL+J7FTBf4RPQMCkuxt4hTSeCSrKEYzO+EpYEMuU+sqzLfbrGagWQAhXwqIoHBXLi
	 7rBKXJCA6rwyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABDC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795135360.28755.10324232795348940099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c649ea62e94b596c0e2a91a0fbe5e24aa2a06595645e13d3e3855ce05adcef28
Date: Mon, 27 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737951353
