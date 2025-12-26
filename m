Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE91CD15
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766748834; cv=none; b=bLdPr8ryq4vaG4W2cZf0IMc4JfSswJoyVIyuVI2bXNflyu0dg6s8LRcQLMbTlpLFU4W5d68iFBBgZIJEFmVqUlEDreWsx/U1qOOD/lzerb2OxUW+1LXaC6VaqfNqQOWCCIJjzbTbAGRLMn6vqnuy/mfarrAm3loRVratvxv+C7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766748834; c=relaxed/simple;
	bh=+u5idg2l5+1UnWIvXnAryQQqFafsdeJsO5rqp3wPutw=;
	h=To:Subject:From:Message-Id:Date; b=ApZqEjWUCzX3gjy0fLs+qtW1Vu4IHYqpVoya6jBaq0pILLCqqqnM5M7DA1AUPv4wjNP8lxdcUxDah7J9j3lWSlxF+fd5+6SlUrnY+ZEwpRaVtxiTgEyJ0DucApIz2fX+lJOCyk7plYmF0QYuYnfXJjeYfKAp41LxCS3GRMpGpgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvFIXHe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvFIXHe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766748833;
	bh=+u5idg2l5+1UnWIvXnAryQQqFafsdeJsO5rqp3wPutw=;
	h=To:Subject:From:Date:From;
	b=tvFIXHe3kZ5YuCIg0ZfE2gmi5mstWghsyD+wXlHl6m+sY0TTmu9YBSzD77/Hc+Au/
	 TGhP+7ImB+SLwIz6xBRiCxk03f3fiSnBfZldeKub1zEQPsVHnUHgZEhM/BNgSyJib3
	 j0cXFEIzO0MCFmcyBbO02cocNoD2fEyBOmRiinvdHqvM9ZjU2lRilVS1D9SeFJET3H
	 /xapXd5Wak3b1czSDm39G/VlcoLfOEMZ4qOt4puz/nvd6gIfw9U630Lq5BzizAtCxq
	 VIThxRkrxjDjFURzaxmOPMu2VGLjG6n3RVdZq7sBmJ6W5HWG/QMfga5pFFfUc+8SAR
	 5gdzluL1rOcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063AE8FDA8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674883358.5159.6964966406933628747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e0fdbd0d6bfc22d69081d8c97e9141066ed59c6063a5f4bd3302fd8e918f1a
Date: Fri, 26 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766748833
