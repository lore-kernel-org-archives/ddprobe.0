Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BA6A93D
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743124795; cv=none; b=MNzO21itvIyseNaWGsh4EahAy4CTf/bKZZndK0vzthklh0BFW15Mv2xSxGjNDvyESlfty7TxXrjwRD6Ft12zUs3GWiZEPWh819UkWlVGZ41OkjKpRUa6bKZa+QS1ZqR2apMkeUAysTEHSQRuVw7InwbXpHpmYIpws+E72frFxxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743124795; c=relaxed/simple;
	bh=XMggWS0KL/rsUT4+BaoxmGHZbA0/G2FEh5dydm/R/9U=;
	h=To:Subject:From:Message-Id:Date; b=GbeB89DstG7TdzxnBoYBiIFIPFt5JymSOkGrY8gCaWQtt4cejgg+6CmTtZg2gFCMHyZ1bXK49r0MkpK9xiPdZ1D2nck44sFJOJMRDo8c49arnAl8iPz9P3UQyQCpBBfOK4LHRTJRf8dvkLj1h8I9PBvzUVUGLeo+5JuLHBvr1Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndbCIAfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndbCIAfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B75C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743124793;
	bh=XMggWS0KL/rsUT4+BaoxmGHZbA0/G2FEh5dydm/R/9U=;
	h=To:Subject:From:Date:From;
	b=ndbCIAfOasL3pNhNmPTKmowWpb8q+S5PYZ1qHX5MbUnF4jXaEnF3stPU/8918Ssv+
	 IuR00pBCYJUFuVZVnYcLQLJy07/EcS5JUgf+2T7yCsXHFncrWKFOCOHY8hESPut+ye
	 ql+DBkk4vAuXNjWMJTH5VA3haiQdWtRUHEvFaSujAdsiJ1pA2iC69gn/hMGz6RVrm3
	 qTvFN7E+XHRyL3DCZBGrftB4/zuILZ9JaWGOCZuBk4MxOkVtb+rhBUcQW5S1o4Jo05
	 SdhH/qr83jE1Qqca1Wt9ILT/JmeK4xxGnaL5HEnf/JIazDKawnNmaonzbiliElHn1p
	 3kBOGYuIDDl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA188C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312479366.9493.3999706620948820002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6b3c16caf0bf44688d227ee17120147b08848e2aa78b0d8f29410f88c7aca7
Date: Fri, 28 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743124793
