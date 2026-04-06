Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C02D136358
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775447734; cv=none; b=AvprU0JSGnfq9+ubd/dtrnifXkFEzbXC3Lf/ikmORuBeFRyl5RIQPasILLsc5HgP1sdSBHQR3gw+gmpQNltGveHIwhGxyEB2246kq/ePWb3stxK+quwod1hTX12Nv25oZ757pnpbiKFkMHr6KsuUIMzWCCnI0lWfzdrQLCI8qVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775447734; c=relaxed/simple;
	bh=pXqiar0h2x060DwoRt3P6FW3RJhN2IjiSQnaCfNV++Q=;
	h=To:Subject:From:Message-Id:Date; b=tRRHuYsxeN73FrTrdef1elZu1yYpvqctvRz1Ce7W3CugTQPOcDXJahLrBBahNZE4DQkxZIgJzjVCMM9/XprJSwhrYcJG5fkQOjaDeCSRrG6mKKNHs50fvLQMKpvG4UTAJQu8NK7lQJITTxwv0NGklzoXFGOWTc0zY26hFyD96ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex4ftBEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex4ftBEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEC1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775447733;
	bh=pXqiar0h2x060DwoRt3P6FW3RJhN2IjiSQnaCfNV++Q=;
	h=To:Subject:From:Date:From;
	b=ex4ftBEowyXds8catFnxfkEASqWA4BnQf05sWpnYH+4x7Kh0F9wkFLyFqPYzOuejM
	 ALp8+gOcvbCbOGGPIrjILXmHVItK4G1okyoDiHTnk8w0YRNxXpbQEDZVn/kHHMaiMv
	 dOcIJ1LjMU/TQNPaufhW0+i/wpSOGK/ybN1CUStKATOtkhw181Goyq3i2UKPBKTU05
	 afKohknHsSBAwAvzilq8VpfzzHXQgWQ4bNqSNDiYVrex5olGLsUsV1HfPBQGC4GNfP
	 6eTWI1pjBrv0JKb8gRtVBKvFQcl0IijKOemb4IegX47ae7f0Q4Jtiwvx1vdUOvDwwI
	 pWK0IyUXPuL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC23E9D831
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544773369.16593.8122550259293243219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5978d974f6a43b7cf240bfc475f380fd408769e1386dcbd38ff294c8a9fbbda4
Date: Mon, 06 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775447733
