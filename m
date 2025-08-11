Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2425322D785
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754938194; cv=none; b=hdpNWDX80hla/IWgNlKqdWaLzlNtT74QarZHFwpyUb3mZsPA3S6xBHs+Z5eMw+tWE/PXqQ3QaZW6X5V9bQf7+Zn89+uVEdhMOhuVAsJbH0wcHeDETQXW6337S52oboR/XO8t2rC3SUkFxlkKIk9evjMeyyzHKT5cehTKh2GXhkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754938194; c=relaxed/simple;
	bh=3mRE4VRNJSH8sBlT8EEgbm14cM3+9XhhRL/I8vuEB0w=;
	h=To:Subject:From:Message-Id:Date; b=RRVLDqK50RqZK6JVnptM6EuxVA8olYRXkvU3X/bKIlCu+FZjMLbG770sv1+/rxG/5Lk7HMCtvg4LokuI6FfhFH8lDsjblNDQ0DW6Ue3xbhCYAQKnlmvP8DHqNOtYSUQRyuCRMJt53CB+GwzRahBQdVZV3YDOiIpHldvqasaQEcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4vwWDkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4vwWDkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754938193;
	bh=3mRE4VRNJSH8sBlT8EEgbm14cM3+9XhhRL/I8vuEB0w=;
	h=To:Subject:From:Date:From;
	b=a4vwWDkX2FfwRFCaYrryQJDwGND0jyvrFmQ0KOrOqHLpVhQQxUbUBMrfPfC+KzMYG
	 bg3fHY4Y1vfbiyJy8BSvhRmuNcyY73coH+oRBNoWLLlXIGcNVajw807cercQeMjC2F
	 b7jfb2CB7tQ2MvMkfhMVz9jzqtXXG9toEX3bX/zxZQq63mm4miXvIDD/MPkw+8ypsg
	 20FfQR0oBRT9228vRaG95mfeVhV8G2QuiH/vfQP7kDyp4yem3/JfwULJxxTy9AlOPa
	 bJjUU3g/XEZfxs7Tp4z/zjrd8L8b0ALMyfpf5qj21GSpCTLb3nOA1uqKzPGq5BAhAg
	 3SC4pmn4MkHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F597CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493819357.9689.6932000293038260377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507aba630f9de32998a449f5569d5ac00bc33c802aaa64e6b2c0053f44ed8dba
Date: Mon, 11 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754938193
