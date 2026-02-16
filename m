Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0894C30C62F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771248294; cv=none; b=exf7iGkcPCFQTNDZRYBGDgZX+slES/iWkHKzHUsCmFYfVEJXMeNOkWoMY1OVwbAe7GJpliM71/N8YfCEG/2KcGHBvFaXq4JENgFh8En4/XAvWl13byILD7D9jB69DZWXb0SyoGLJsgoeEdejMJ5g/9YsR1tQcBxLnZDuMoX0q1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771248294; c=relaxed/simple;
	bh=FMPk/JHHhO3PhnI76lg9Thzg+LmsvdwXC8f0k5wSG8o=;
	h=To:Subject:From:Message-Id:Date; b=leWhUSzOMaruDgeS+eBmeSU0PbHyA5KZPpeVSGSleyiBQRh7LrjJlRyDb049lcZLumHcVtdHLOvYOvqtJ0wBBlEY12lFPfTR8jCR0qVi+UgetWB5oJXTFCvV1Pw6Ku0s617Z5LrWg8md31X16jWyy5/XoXi79AScOGmbhTaWnsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+LzMSfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+LzMSfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6B5C19423
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771248293;
	bh=FMPk/JHHhO3PhnI76lg9Thzg+LmsvdwXC8f0k5wSG8o=;
	h=To:Subject:From:Date:From;
	b=Y+LzMSfrdgyqTspIwEfx/KLODyuw8KbqyiwNAejkiaEALNLPgV5sXNdfrJUzDPLns
	 0M0aiDKBgqVpUhov1B5R+7Sl+Z5hk8nQ1hMekyTZ/ApEsZlvLh4ZmjpwPYQzYB1UEo
	 RZlEs6ISFGKVXMER9hVBLANC0r3HPRG1js0KaKl0C23hu04atxqmVhfYAkFxGgUib5
	 9u2qmQOuQampPrLq5AL9F0Q2Z0V+NoPjgmTze7XWWHDimV7ixDEfp3DXBo9Lfa179O
	 1TwgondsLiAKe4pmojc3hPwIAi/onT2Lvj5kCU7xzDuiWfq98p04nyNmhmooo8oPEV
	 jY+omFTFs1f6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E4E7BDBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124829358.2535.4393355393342804502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22a88159fc0f0916f9bc3d81037811bfcfca2ea903f4b5a7609be23b93a4844
Date: Mon, 16 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771248293
