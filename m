Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3591E25ED
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743190795; cv=none; b=TSTmBRJiCp9YeeZXp7G8kzJkUeLUVTP9TxxcKZ30xhrCCfqEWgtTdRGWQ7At2ME8zXXBZx2EvZ0Xas3OCJkM+94YACMjPxhoa3aa00JB+sKEIXV8J2ta1OBDBsFOILM9sEFwcL8cBUfvnvQD7Ci+qoQQJykHyI0q02nf1AA7MyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743190795; c=relaxed/simple;
	bh=B3iSUMpD5nCj7ZuzcGf5PO2/UHO1n27PmKzFIJzWVrs=;
	h=To:Subject:From:Message-Id:Date; b=Z2vncUqrUuL9Uf4syhbv9BJAEGj6Tid4GmKmWqzWC6phtbGrAUOy+sEDfOmdPlDZeN7QnShHA7firDTANYHlV9z3z8Qf26HvkI5CP3BHO6ZLd8YYhuple2D2oXtJnK8Bpr76q4qiq/cQ/HcyoRgG4MMgO6XiGokPptorKkvgehI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSrs+2yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSrs+2yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97D3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743190793;
	bh=B3iSUMpD5nCj7ZuzcGf5PO2/UHO1n27PmKzFIJzWVrs=;
	h=To:Subject:From:Date:From;
	b=cSrs+2ytX8CFkC2pB4H0txZTr4A9hRMulgwIT3xnUvHAp5XZx5vXQeIY2gh0U+W27
	 bXKxU9VvKjYJlKy6ibn5akff+pMFX5xzc5KNqb9RhFdul8nGHvEK+4M/czxkBZ4bJP
	 hsaHul5hFLZfvk/n3UpdZzE+jKB/hl2ktun/064hnrDVy5NWai3zYLGG4eHlBEVnmn
	 eo2hjc3gmQU43CpnWEtpBEFVBEg+YmlSCAt8Ww/MGpdqoNy8fOASey5I8whdJDuvsA
	 sga83NIu+bJ2+dRAnmrsNdD/3+WRVAb5fo0GgYY1j4Vm9EQzjhbVH96+rr2hTLZg/X
	 9sdJxshyRySwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D5C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319079360.28575.1003841029925387495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273227ca3c9fb5bae4fe4ccf4c8b46f0983667c4e1a5ac30669ada86842378c6
Date: Fri, 28 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743190793
