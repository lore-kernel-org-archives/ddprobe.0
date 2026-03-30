Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3146C329E46
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774882494; cv=none; b=HFVBnLH5eolGsHpfyYUnDm2AZngz9Prk2TQ2bATN+icVH1Yn38y6zcrOTq5URhMAkJkeHxrj/8KFVck4u5XzHTxQgUZQmBYCNodIym3Ybi8W6WiLQ//uvyq5r84NnrSe+ype4EscCXdTw5jL9aXgcU4+7LP9CzTbbkYnp8xyLew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774882494; c=relaxed/simple;
	bh=DL8gUmQ65DqGLzHDKL3BMsHzIhg581yauWO99uYn2N4=;
	h=To:Subject:From:Message-Id:Date; b=DXvHil44dIK1yYEFg4pcnpTnkD2xlsSLSmb4n3bt6PvbH7Is5jBdP/7WDF5bYB98FETl9WUpa/N9Bslbbqv3Q7XC534HnzSwCOo2L+EOQ7wGjNfv1sWqiB0q+Qen80as0VfAEgVw/zrOr37bGg5ggnk/l1tHrByfzTbf48yfGs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ph59Cn7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ph59Cn7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA41C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774882493;
	bh=DL8gUmQ65DqGLzHDKL3BMsHzIhg581yauWO99uYn2N4=;
	h=To:Subject:From:Date:From;
	b=ph59Cn7SZeD6rifu7po3z5bPaYG9bOdx0kWGudJpz2CG1inhgEe6LC6zZZl3sR/HI
	 hak2wuKqFwwhUPghHB7o2AcBHAiD3HfOem5OyauAdlrk/3u0t/k/JoM7h2SvCnsqbU
	 SmYsJf7oT810sNx/OCIAhYJfqJuiEhdOjmilkcd9agp6v8ktN1E76x8RGknKnMQwE2
	 PNeDPdqopSHMiZUPNbDKHuep8ML+i4Ax3TXsr9qorZut7QEQuCDXqyYpuEDHhPbxTU
	 s/K+pIvSrpx8U98nwXbZWhOveEshDc2wyA8z1JpntKvpADnD53o55LeI9yRrKQOndb
	 9Q6eI9T5KlZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978C11061B09
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488249360.4937.2811669355219362455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a086b24547807f6860908eccaa89dcd7bf6ea9de583024b5cd1051dc3d6164b
Date: Mon, 30 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774882493
