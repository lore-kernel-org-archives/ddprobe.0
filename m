Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A7B3A1E7E
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766887434; cv=none; b=I4wqhgJG8DXLns77zA7ZjmM7eMmtHukqdvWFjV30O7KHVDbgdwdceSgItF1RasyGW9eTqSbheXqlNBeLpwQnwYq63mJ+UVThlpKoQf2fMGOU08tMojX+fyNF1SWINKK/8Lil3PHLjjT2ZgWgEA4xUtg962OYWQzGzcSURhZ8e4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766887434; c=relaxed/simple;
	bh=Md485AjBEGaf2sZcJd2NVtIcskaFbxdZ3znASPnNSIA=;
	h=To:Subject:From:Message-Id:Date; b=RdMuLSFpUq9tOnN/fqnDnovfJVon8r/AN0lYG60ALQCPxEOlZnFBPyR5dc1a3dGt9v0LrThk/lCV5wmUELNvNkAO69TRNvFORRlIc4SrZ5Erxzzyj/tip9HsVzJQWB+x+jktma+aQacRwqbMNznD85Jckiqrz3h0sHqPquRodM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiNSKkNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiNSKkNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A84C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766887433;
	bh=Md485AjBEGaf2sZcJd2NVtIcskaFbxdZ3znASPnNSIA=;
	h=To:Subject:From:Date:From;
	b=FiNSKkNopAbjY+e1AAhef2k+d8efUKyiY5u9eX3hPzb5ddXE06dco22wE1Evq437r
	 jUDlxbGIKhziACU5UfEw8+O7dopjgkMknwtlR/FyeWMTEsteWbNY0X+9gayLaSza94
	 YvEtea4GloXGQN9583dpyaTNe0nmtfNVqyzIouoSI75GcZjmuxdiWZjA1B1Bs8WbgV
	 fb/xzadlQZEjnZ9IJLiWqMmUt/oZUDvnCfBNtQ3xZJNDz1LGawD08jpqXe2QV7Xanf
	 jTOjjKYyVLQXlTx6g4TKtdsJ3bVhYPRIJXktlOuDmOvEm69JJqxMj4Hq3OL9SltJ7k
	 cYM/9pcKsg20g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F8E9271B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688743358.17269.12764257690027217338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c260194385a41c12f9da5ea2e384c530b1203f7074b84eab5ad077dbab980369
Date: Sun, 28 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766887433
