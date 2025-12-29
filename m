Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291EE3C17
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767036234; cv=none; b=QmBWFiFwNNxkLIuHQ9+b06cL2g8+a8+4hnzH7YxnLo39sdHhM3lqPpT7/soapBbjYJT5gNhpILICQkbo673lAMDq8BpgHQL2HBp7CNDK6jIQYwBmk6EdcRjbVN52c0a59reI/gK2HJXlNUjuMfi+vUclS7LhQ14rnKH4yZOV2IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767036234; c=relaxed/simple;
	bh=6m3XN0FVVqWhsKSYf+h67YhgKt9Frb0qzTNkWdqg484=;
	h=To:Subject:From:Message-Id:Date; b=uO622fu5ht1qevw2k4YWUQMpff+Ln1j5+pwJuZsQJ3YXZ5+uOg/LoaXgYQMfe4ai2KlhaoL8ELxCg/L0jo9L7EifVzefdd45amMp1tvn91M+UfbWJQYtWcLQJX8PP/iAhEVDLrz+ToIb2iGUBwMpmbLD4OOGhBpB8WPaJLplL3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyNTPmYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyNTPmYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA33C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767036233;
	bh=6m3XN0FVVqWhsKSYf+h67YhgKt9Frb0qzTNkWdqg484=;
	h=To:Subject:From:Date:From;
	b=MyNTPmYP78eOESgaN24vAZZ2HS5dyQHT8x/aweYA6hmu0S5zNf59w9X9wpfV47Lp6
	 eQZtbmM/kXBKuM7/Aef3t8VuJgKbCbs4vFhiYOM+ytSqzBmzCLPAuhCGtaB8Ve2QVq
	 eYnWTuh/5gxPkLDBNZc6zS9ZdCocEWHKvXjNsX5jiULMjmeUnNljBkDQuNkz+shDkC
	 pJvobSl5zYpfdUh8eCBGast7y1pEviF2Hq6peN39cjbFZvhM94Gy1YVAIsD0LvW7Do
	 mKOnDnEJzvobanGkqG+vlGxUMtlQ9MrUq0jmYhbabjey2vA81Tu96O4OUku3lBgIf/
	 G07vgMrJxJMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DFE92FCB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703623357.17571.16487985711535564504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a51f3d918eaa2b3d23ee3a43aee2e5b21531c2f03c469dd618cede399700b78
Date: Mon, 29 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767036233
