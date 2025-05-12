Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D3E255E3F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747031394; cv=none; b=WndP9AdKTlfYuZ+Wr1Ed3Zn677kW+ceRlPDCj9l1qDfZ91ImsLzl20Cky5alYuN8lKK22W/QU5huhc9Dd/jYWHXsV+lJ7L+HcZNC/SznIQyw4kc15bDyB/E6DOWYeuLPPRYlE0Er+rFNzNaU+PH2rj3Loao/EzbSeFYrdrhVQOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747031394; c=relaxed/simple;
	bh=h6bvY2mEiDeloKo6nmUjCWHEtFpmcseKYUUUWShDEK8=;
	h=To:Subject:From:Message-Id:Date; b=EoI8+RWRjDtrvT6xWuHHj/lBvNk+rc3Q+ZK5XGRYpipRLjXG5qRHOVimLjPwt6bMLYAD2FeKBHwOr/ZtEoQBVcwSPvWweJjSBmYzfo4Dp1xUO1I4BkEydmMKEUr4XPnV4tNvGj3xWUQJvW8Ji5YKHwFjnPmgTbPd5MXY/JqFQlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtvnJI7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtvnJI7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482AC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747031393;
	bh=h6bvY2mEiDeloKo6nmUjCWHEtFpmcseKYUUUWShDEK8=;
	h=To:Subject:From:Date:From;
	b=UtvnJI7/BtBbqCovl+R6BfSkySNz6cBtQdosOxqa38h7pV06CHiMahrdRF8uocNsf
	 v4PGspOHP4xy80qKE0MCBjZe3uWzEp4MZBfbLKfGbAYa8uPx0LnCTZce8/oYHgghbG
	 62JDMtwO/tRcV7CQu1qK887dRVO0bXQfBIxyDNj9ttqOUcTXFNeSHS6swpN2prFF6N
	 jN3UzI/OcmqIr0kYKY0BlqId5WTX3TzaEceejeVyIC43m0XfEm35VCL3BIt8vXubBJ
	 J/X1IS9V+4ftXg1RzuvKSuL882/djKInvmmaI3xEsQRrhzVfg1nUsrwyhPGxl/L5se
	 FmTtJuzFE3vUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BAC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703139358.2245.5791471719682004147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b036090bd31ffdb66ebaf641a3de3ee43a132c8fe70c8e7847caae99c9b74984
Date: Mon, 12 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747031393
