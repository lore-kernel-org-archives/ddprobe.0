Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537957DA6A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737998754; cv=none; b=t4A080Oo2Xu0itK/1GYeLGvSr/4MAD13mYDn4XxgXzKhNXSvTUq1WcRhL3ylCpXC8v6RuS9ITCX3aO6yKem+Bs0UnU/M9RM6FnOhyAfj5XcsFrEvUq58N0T4IGEtJGEVz7f0BG8CEd+7lWxksNgS6ON7riUl2SIJqI7B5n0ZgXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737998754; c=relaxed/simple;
	bh=R2QlnVmvTP3ksKU0AZRsx16pZDudCmWClYrjbgEeijI=;
	h=To:Subject:From:Message-Id:Date; b=AVpeuwDy/LTYnxbLQOw968unxJJ8bnqHtk3H43GI0VZXb1FAfRtyIHBK/pwafHra3kqYcDSjDfYGZ9u0MpfZVtwWNe6XSwiA+mPWK668C6hCjCd8TphhC1syl6Hw8SlopeeC5xnEJCjW75VvCif9vq+qGcT77YULgOVbV9O8j2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdJ2qPsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdJ2qPsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8639C4CEE0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737998753;
	bh=R2QlnVmvTP3ksKU0AZRsx16pZDudCmWClYrjbgEeijI=;
	h=To:Subject:From:Date:From;
	b=ZdJ2qPsxb+NKO9tchmBFhuxP4JzimEMTyhvaJonFNbP9tiuhhjIBHCWPtHEVk7Xwo
	 wHl5FQI1RSrhWSAWCpkPekLuRP2KEeb9XGNEUjmC+YRA1qstStnQ0++4IAZ1rkiwMo
	 wVLTjUbhJGc5QWvCXIChj1r93RXlH7luJP8d8un0wHrParhLQDaV1SIR1a+546St/A
	 35dNTa4nZNayvgcYCue4NsBx27iVWsh7mFjTwy4MQ8rDRFEXC4AwxiGPZ6MWNqWze1
	 K1cdj7Lq0a2y5ZiBb8jr7/wB1vGsPJZ6dJeGa/TlvDS1+3wk4l/oLNdgr5yee3rMpH
	 S0RDt7SzyiTxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B55C0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799875365.19974.12513568141630580995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3b84540a0166c02afdb42c4aaf9f538cbfa8b7ef841b98eafa96a1abd313ed
Date: Mon, 27 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737998753
