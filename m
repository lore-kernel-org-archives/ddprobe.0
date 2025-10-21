Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096EA1F16B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761016794; cv=none; b=rj9IlE8rCW/lS2H45jpImGeGttu1WFoe5NMGruACR7kDlPzTonHS8jM74rr52U8j0mQMWkGSpE1NOvg3ANNnYIrAnhJ/gRCENnttUgUMC5D8LA0U0Kkn5AytsYwclDFKPND3839JqKnQmgVLjPcCAiL1TNERYUWT/o2K59uHg+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761016794; c=relaxed/simple;
	bh=GW0dSR/ysDmCczxjVqfOEj/Z6WxxFo+N1Nl/zTr5y/g=;
	h=To:Subject:From:Message-Id:Date; b=qx+RyjRswLXQVDCAxjBGlg1JttEoKDya+y/BHZtWQQdBRzLfDnf5xOs7rRsTafM5sZt0Ri8ofSTxls2sRXyrfuhY3sR0e0bP+QBHKeNz7B4PPSCMiPUv3EMtUZ1hlh0yC/42Q2yvjIKjTArakYAtTwlXNXb7Gt07KOTwVD3gkEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQtLGcY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQtLGcY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9701DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761016793;
	bh=GW0dSR/ysDmCczxjVqfOEj/Z6WxxFo+N1Nl/zTr5y/g=;
	h=To:Subject:From:Date:From;
	b=QQtLGcY7MBZFm2W9FTTT7xwwXBXISKr7nIw6tzD6PLkIkWZmvaaKXWhzfwAzJ60T6
	 J7YDTtU+taK2ccDPRBU9ah1eNoIWEBm4T07p2F/sHySeZ05mrevGhqijpGy1RBe7Hv
	 gvm+PRd1VR+sYDMgLVTnYUasXe//R7hwPC+cqPboTjiv3zR4qt4CmeQh9nwNs//7fs
	 zv1MLpB7b1maybD/l8LA5xKlVbNGMcAC2drh9p2WshE1boYXgkD/VWLx8NnP5a+4QS
	 8hZvWnSbduBd4AYqCFKVljcHXfFDzbk3nl/fFGtra04cwV6Y77ljICubLuSquSn/sb
	 vJRr4vGCHzFcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014FCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101679358.18387.7717103696406170660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679422d8a17aac1f8aa9aac83e237b99375d6a91991bf303465df40efa71e08d
Date: Tue, 21 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761016793
