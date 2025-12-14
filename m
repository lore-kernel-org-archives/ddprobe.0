Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAC6220F38
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765741374; cv=none; b=iiLZl3PDoLdZvk0BHmDCnOCve7WlWWWk/EuBkqJIYyKqiA+/Y8vDgb0sFjf8ssQKjR++4r3FZY657tfrdpBbGtLGvhB1daIv+ds/g/6nRxSDgWBNJGLNgg7uJ0a5qlId+IspLGwiKnJXdAxfv2W0yCcNNP8jIMgHjoQsje4njao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765741374; c=relaxed/simple;
	bh=4+MyzH1y/xb5skG6aux6thNreRMH4K/ZN5aGvtul+Ak=;
	h=To:Subject:From:Message-Id:Date; b=AnbCCUKPCahZxFCXZP1t9kC/0iFLMM8H4frO7xRT20fMWKAFgeF9s3AlnkWCQtpmTCLbrqIFnjrdsQv1CUno6x9R03XUa1eXEe+Lp0nytBl1IGusFoSVdRehEK/3eTMlW21nQW9hPr+YqIp8nYsYD9e5mCmvzxqVxxFQzFTnAqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbN/E+Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbN/E+Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B080FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765741373;
	bh=4+MyzH1y/xb5skG6aux6thNreRMH4K/ZN5aGvtul+Ak=;
	h=To:Subject:From:Date:From;
	b=tbN/E+FlXVPfBbxFw2k/qj5nmECtQBhoPvRgNFuKP8S3D01LOJDm5pl5rwBltliQm
	 U6gQtMtxJhBFQ9INm+1DpuzoogHR3ZQG55WuhUQoYSt59PxcucUWqYB9zf+3QfaXAw
	 UyGw3CAjKZljiljIjkc6gV9H7iM91ydToAgFaBPlmQ8ZJF/Ox00UOlsGnTaRDqKg+P
	 YeXac8x2iPza84jO7nwQrUdWqVoIiL2o8Wv3RDM1Q4TPzFQmo2OIjJvCeyxHoFrTRo
	 tqvLZ8TTTdXtV2+C3CdmE3SMDM0D/zkUSjIxhAOZ4CVSe3BN+mNcKm43/e3lxgDTx5
	 W/JdftsPL54rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFDED59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574137358.25744.11201212867109706415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5846fab2e07261ec1490a768d587b31810520c538809c97fd46d3e96a98a945
Date: Sun, 14 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765741373
