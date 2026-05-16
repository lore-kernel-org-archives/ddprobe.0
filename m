Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BA3356764
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778911834; cv=none; b=Q+c605ZyBopxDeWU6wbC7BWY7Jch5ILbmq35JUBAmi5pF3KlDU8ypEkHgIbKmocwf7BGI9cDbG+igo1S7111dZgwtVLk6tY3ngteWo6WZWTCZ648N6kzOQb/mzUb7mASzrx4M81sOsSWslB4Dla77oZLDybgeDY9c/o6SxtbfkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778911834; c=relaxed/simple;
	bh=uGs4DnVrvurdx0rK2RxdkSnf+y9msuHPRY+Woh3HW+Q=;
	h=To:Subject:From:Message-Id:Date; b=RhccLUnyGgX157XTmPB2+YGhiqPXzzZJWdT+sOqE8cZdbOn5G7ovv+CtTdpfnFuIMzVvXeSz68ud7aW/9Sq24A+Z02gajo+l8UjdwNhW+eyK8tdIFjFAc6XBaNikMTpeg+dSaEQvNla18BOgvWx4Lqu6oq3BTwedbCqoqz0vFRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DG0EVAO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DG0EVAO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D94C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778911833;
	bh=uGs4DnVrvurdx0rK2RxdkSnf+y9msuHPRY+Woh3HW+Q=;
	h=To:Subject:From:Date:From;
	b=DG0EVAO3CwlmT1SGrUqgFUyF0EwV82/Bc/iVhRtHrPSa25hGQiyX9krjOT5OIR5cX
	 dpBxrVKHy/CRug+DGW6nZH1WxTMuZwcnWnNluj1krsmSs1u+AjTAH08BQ8Ud3/e47J
	 PtAGjmKEtb2xP7KYq5S5zcwc/P2X3e4qIPUNdivaVCxt29ifpuki6P/NpbOYZM3lUx
	 2ymy/oEyPtS3QEFGRIHEzA5gBVI8DYsq9DjtSXzi61n9aZ18/+hKBCk6rvB2oDShxO
	 pCkIZrqEBF4ZSfmnP8IBMgsyVzcQ4py5b64xbeFxSxW3/g1HFabeUcO90NBb4kXFuU
	 tDX5bY8VedXJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3146CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891183370.16052.10484519963201203547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842041f19a449d5bdf6e5ec5533c8e4eb8fcfee777244e9d36655aa95a03b40a
Date: Sat, 16 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778911833
