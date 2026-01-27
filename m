Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDCD2EC0AA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769537634; cv=none; b=C6pp0GRxsS/pQrMGrCc2PtLnPJUpWs3N3xfm60o/9oTY6e/A8Ibw7ZFRrIs5hES5sKyqaznzb9Vbsaq0mK9ntmCChVc2pY4n2/tQuGUQDLd4vH8uOIml1dgTjusVv5mm6Db2FStADct87FYkfZ6r+yISF6tauw8qgl/cERyNEI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769537634; c=relaxed/simple;
	bh=qGC5L/7rUwdZdSS5vw2ajSocpTDNQUeIstZN2zty3yg=;
	h=To:Subject:From:Message-Id:Date; b=MYS434cZNxmCEKl3j4d27jwbZyf0UZYz/DNinBGCRve/WES1tywnLwW/e7CKvEPmXIP4jkr+y7Jvo3zQAuIOgzgvkY1xYUXwzxp4P5f4UTsrnHpvAB6BinODBcxrCInTE7g1e/0ccbR+WARGY0OtvK+V9yUzVHvQH3cvjVYFCCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJzNOaXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJzNOaXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E03C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769537633;
	bh=qGC5L/7rUwdZdSS5vw2ajSocpTDNQUeIstZN2zty3yg=;
	h=To:Subject:From:Date:From;
	b=bJzNOaXGMkiCtiIeomSDPAqAXNa2DFn0bn0ok0siprd8h4SybzOR8y1SFnn8WpHWO
	 3tO+gZVjL1H5fsjki0NQAvoD/N7sPd7YtctIiYwKKzfiC1W+EU9GmFca3HLmxw8JPL
	 MsQLNyb/CWdMYpuwrwjvBCKXT9OPEoBrxOTWQKrwZkmIRAQS4z7a8ViZFAZKMJBi1x
	 k+EeZdNuMDbEpSDuHXAcC2bKO6JgOwxrZXk8GfQRBo+fAboxljT2wYLrOncQ9nKNNc
	 o9N0apXm6S6QpEzzGN/ixsk9O3BD11UtChMS2VlNgnoNOlIMCDZjZQN1loJ5Bbw8OP
	 0oeTMYVvQjmjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0158D2FED0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953763364.30641.11021200786737738507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf37dc4a07848db98459f370aff3e1bb41595c042601f3cd3b34f0591407bc0a
Date: Tue, 27 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769537633
