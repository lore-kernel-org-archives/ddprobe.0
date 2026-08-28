Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEA018A6DB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787875234; cv=none; b=ub6FSC0wow1ft2kV4sFs+b797b0pA7LPGf/8njcGPedSVCTZncfRfZB10Sk9JrJMLNOHXbPPUjR0Emj/mFRRz9VmpfF16P/vZcO6B2CtGICZPxDS7TTSKZB+MSh5ydGaJqup9IugfqOYJXHQ+ltTjzXa7LeaneX5INSTSSFdQf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787875234; c=relaxed/simple;
	bh=cA5VBHWvfKjqpyBpJ65uSzofB/VhebG/2TBdKloL9cU=;
	h=To:Subject:From:Message-Id:Date; b=RMAIsZblaRHxO9dIaqpWXoAK5dsWgvttFyXL4W3xpmnSYYELM07HROJQEDtZ1A3NrUfRXBCHStNlZSDUqlT4sGg7h8n5EhvrHkSvrH/LdHcUDmx8rKtbHOj6DMshnY/MLlFRzPkg8OjaD3ne471AwIc3TxwWSsWGAENc9xU4usY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBBpL/o8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBBpL/o8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D7C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787875233;
	bh=cA5VBHWvfKjqpyBpJ65uSzofB/VhebG/2TBdKloL9cU=;
	h=To:Subject:From:Date:From;
	b=hBBpL/o8YThW+lrcxoAwghFlYCpMXfCm18DAKTEdkVY4jA8ORWsRSg+FIiZ+N+ED1
	 doc/cUX+iuQwW7MBEKNthKsVTp7+Wcm/MuKFNpQE3/HHEoR+NcectzxYELyt7CH0XZ
	 nY4/J+SZYvba9Rax6YWL+3yF55c/X5o+rDBYHBc1P3d6gnHcrpKPtxXuiGeIe0Lj6U
	 LSWYOe8b4TFQz+YrEjZRTcJo+odAhHn8S27k2DTLvXHtY7ggJhcg40ed/QhMKB2SR3
	 fjJlWvW0gqnIQu9was7dbikk95TH1G38IU0/6yR/kgA45+Il3qcngoAbIteAoV0NWJ
	 paKKDxoi2n1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EF6C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787523368.14470.5478831050493979066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3329a28327200a6da0be17f912dd5e8e9e1e8437d0c375896407df2780f72b3a
Date: Fri, 28 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787875233
