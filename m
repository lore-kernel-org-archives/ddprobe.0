Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADDA13C81B
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741057135; cv=none; b=J/Ax9U58kUXWaPVH8NqrcNqPMBz7CtSnLVsG6OBiZF75mHB37zX3HWNPdftBBDwZSYOp+d+vQkYFJrqybcN8wyaRVul6m75hqO2ibqCXgON97vFGfo5r8ER6Fvea47tJzi8eV9u0i0afRxsXtdlkDwldQCv2Q2ct8G6X7wfG4M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741057135; c=relaxed/simple;
	bh=8ZMXaeLagRMJ5rfpW3UQe1eCJ7EXf1kn0ZKjxQIHR7s=;
	h=To:Subject:From:Message-Id:Date; b=tHGIXv14mcr58d7w+8Z6oTbrs+1B8fnAAmMcvBZ8+DmVi7RW2FXoLWs2PZNz/C0zYDbXsUoMjq/k1nvSxyiUHWzsDfza7+KOtY4sCflSEzSO/YlJsbcPHv86rbz/GOrbdmNphTEd6DDa8lXUkwVmYqKCQJOk2yN/WWjq8P5hLtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9pTSXLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9pTSXLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A73C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741057133;
	bh=8ZMXaeLagRMJ5rfpW3UQe1eCJ7EXf1kn0ZKjxQIHR7s=;
	h=To:Subject:From:Date:From;
	b=L9pTSXLLMbWkDhfi9BKMazF09ieo7toaOlKtucHZijDL0P8rHCegHAh0NF4pF9JCD
	 WGCKr0D565jKrDsepGUl9WEGYpIxJCJGnTlIHoMPkRNmCly+N0z0nOqlN32fRrKapY
	 eTUJm2d9b9H2ILHiHQ9RLWmHvxUhVYGiym2CU+xCkPqY/VxUkq8+hvS0Xsm7fPDEfw
	 KFCaJvzP/6WIfWm0tcd62OCY77WV+bV/mfT2PfqYecGTK2pAAdLqseGcmrgXCpNLne
	 t8zps1kq7waIVC/1BZrAUbaHCryf4izZeotw8qsSYeX5HPlQQJdR0Ipq9XGS+wRDDB
	 SzVh04bzSk7xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A598C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105713358.30432.15885176818600425282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c995ad99465dfbec59632f26e7c5d33a2cfbd3164601522625f8e60eb8fb55c5
Date: Tue, 04 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741057133
