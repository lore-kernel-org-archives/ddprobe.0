Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466F81F03C2
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742242794; cv=none; b=ewxNYR2+zFgpUMGJYG1M2GClJB9Vas5szohv3uCQWs8Q74Yur0zF3KxoZbLDv/n8kInvy833RSe7uuXW0pTM23E4I8eXGuZ/9ch2ywnclaHeUDe9ZrOCyVWlApFhKcYHZ0xCILysLrDsYTGv7kGgzg0UEvnpwfF/OBZKeHpshwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742242794; c=relaxed/simple;
	bh=3RlrjR8LLRgUTYm229VjT4h7gbx7tUSteyZIz+Gf36w=;
	h=To:Subject:From:Message-Id:Date; b=kT/iKtnnJRhz+ClJMMnrQiySYi3maAbUMHPyaRfO7NYkgDEbkVSBqy+ZntrQ6hrYAh6sWEAkvQuuoFOBRj4yk2Sid9h/i6iEClUZw/padiB3lzuCbrp8pERgVNB8icQrwvuQcY4pMQGwBv/emRdphByQAkbhZ/6EYshhIKehiS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujIUcQcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujIUcQcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D4CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742242793;
	bh=3RlrjR8LLRgUTYm229VjT4h7gbx7tUSteyZIz+Gf36w=;
	h=To:Subject:From:Date:From;
	b=ujIUcQczwss9PI0FbMU49nZ24lU6gRYGF7TGni7JWcDURv0vDZguQV9nBtYXCQMrC
	 lR4nmRYCRlRTQvqBDgJZqRnB2Vkv+YB4ixn2Vc5FLhVndXr+Tn14fIz+/5J0WG0nhk
	 8e+vbQDZ3x2srOldTbpXwv82x8YuLfLqtKx/CZ6HUAU2GSST0Z1O9K/cFYNL9U1qMb
	 nDtOxv6GSgI09DTao0/hT8L0hTZCo8Vbv07RSFWxuiORh7/lPJ6DS4WUpcCTHtQoto
	 XVTBfn142ws1ywr2VZlnp0LVuewkr+j+CQKA0KEk97y7BrMXdRfU0iqVhbJsg01FFW
	 MaH418BB3RRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA89C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224279359.5629.3058966326114991870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca385978ab2270f8cae5f7432254dcd52b04bbe1915ab56a53a9f2b56303b32
Date: Mon, 17 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742242793
