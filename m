Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DA637FF75
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781260594; cv=none; b=dbUIjon/lerSxyxPSFhD3v4Fo4gpMTSQl+6O0XiZBYLBIxcaK0Q1yXBCpUr3moMQrXjhNpUcynvY034h3fkCV7WK0rJu/EoN+X8E6JL/3ygtgF7qZ7YLQNAeqF/kv4ckiV/3C7WTTT3L96Oy1UOdw5+I+Zsx621SkiDWq5zJxlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781260594; c=relaxed/simple;
	bh=4ucpPp6eF19GWSRYnnR0xoLqh1ChsCrUMMKAHHNRC80=;
	h=To:Subject:From:Message-Id:Date; b=R6GfGFop+MHQYg2T8CEHfpnXJhtYNAaj+UZ7ECXOTp3iuxY40KVMtY86/RjA81hx4qMjADzI1geW8idRUbPIsQWg3TwVW4Lke68S+uLZsYR3ou+4zP/QM7IHlf2dNvHQFM4fDk08260yQ9TUVqEx2O29eNeI0eokozTH1GpJ3yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjkYnm96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjkYnm96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91CCC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781260593;
	bh=4ucpPp6eF19GWSRYnnR0xoLqh1ChsCrUMMKAHHNRC80=;
	h=To:Subject:From:Date:From;
	b=hjkYnm96QeGwQO01+auaOnnKJc4T/wCiQj5dm7EZoU9dP4VMKgxA9sngUlyiezRUe
	 gb6RxKEYXmelIsB92CYYU0MsqRVUZMHfrH7JLPVOxjcws2BfosU5xtkXmhSS/K0PEE
	 eoD42abRHK3jzl3bUdSn/uUOUNwVUVj116DvCcCfI3pq4vLGKScRiHaoufwl46ya9U
	 EoTATG5wkhszEMcIgH6RBDDW37ALwLhMFkyUE/KABsq6B/1FEurPEIW8cGKVciMMCW
	 XQbtCyytKyr/y603XrdIrFv1XDeLq+WQbMNpJsXACOzV7kHO9w4692Fco/cYJB5B/T
	 S8cEJWpYRzfGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEDBCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126059368.11284.17391761911726576429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc9e2f2697b8c43f9136ba56f4107e05087170f7a78751e8d7ca7cf64193f63
Date: Fri, 12 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781260593
