Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211841487F9
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723503954; cv=none; b=tt6bwrcZIfuveyfBoUoGia+n4rAL5RRV3Ebw6zIEN/eVsPgrxS35LH55HsieGNWA3cgJmUghu437TTmA74/IiLA3qOvmonb9/wS9JL73EtmoG9T5wTZg+D+O+dOk3CoHjV2LAZMA3DTMRRag6HZLA3PgSkX+FPFshDtEzsegzHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723503954; c=relaxed/simple;
	bh=b2h5t2x5tq9fHKBod7KokVtLRcTTW+ot5FgKwVswWjo=;
	h=To:Subject:From:Message-Id:Date; b=U7OvLZIbU3O7YwN5To/aw9q7JYXjHz7Wb63B+1EjyloMQdJrSxAB4Ue1MNvdoEKg2OhbJZ9gpjEW2ZHyvEygCJAhGN7KTUvr2TJMklpLUM0+EWITB8ZrkXGFIkBpU2l1Nv31CIF3TsqrCrmDTorHXayE0OEfKU4TmZkeMS5uqRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pn+izCPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pn+izCPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC68AC4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723503953;
	bh=b2h5t2x5tq9fHKBod7KokVtLRcTTW+ot5FgKwVswWjo=;
	h=To:Subject:From:Date:From;
	b=pn+izCPkJlqx4XrZMdEtJmrEFozV3UuCiYJhXTvtM9YOzoaDGVeH8NvPjzkS5swpB
	 GhzfinM6YPkioPXnYjB7lVBpCM4WEtluPDQcmnuH6rb/LpKN91Lkk2OhlFzCJhC19k
	 pELr+s+TUFUJXU5s29RngSoZgYHv4jagnho0quz3vpBxV9O5YUx65lcQA1MXtEqUB+
	 bCRhMhz5LVWmXZDuq1KllV6rRUy6vOstFZpG5V+nKqn9TkYvpbxsYNFq+vqtle+kQi
	 Vfp/roHuNNrdYzsKZL65WTircwjiDfYao5UnPWT5RKTq1FLP8RYHhSK3FZ0rp66b9o
	 dDKtRN5EQvXTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93836C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350395357.28472.6079747794625104718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4435724012333391d991e237e4278ca0bab0315093e848b74b9f7cef779831
Date: Mon, 12 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723503953
