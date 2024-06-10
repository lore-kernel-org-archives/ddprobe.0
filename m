Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516561C20
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718003243; cv=none; b=qr1xz9bvk3Pt7N8DLx2L0XxfglNvZbCSeXPLxZ7gzki9XlO/dNYMdHw6OaVJGamLPRPBqhlcrRbK3apuyEE1SrrA738Kz7bkM2bqFhwL+ni1SzIFxCHr5fYmTlHO9GIFglJPiuDOyuqDYVOtV5KlQTSPJyvc2b0UobnYh3QMTJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718003243; c=relaxed/simple;
	bh=1Imne47Z4cJAWbzdFefUnQdlMMQHNej8J8Kw2McLeXc=;
	h=To:Subject:From:Message-Id:Date; b=HOFIFjnC3hKnbcFu26G4NqedBpvOEP/lojkyQHyvQ0XPCJj5ImLRtE8xmDFUIUTYSLhirZBlCcBzmgz4NeeKcSMdVOfvvsfEMWQj5HIdy8u/tFnkitokUkiyb4i3xTHh7raTh/Sx3ZH1fOq3+YSsu1DPAwoDl7IzGuX5yUUwexE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwSUB/rM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwSUB/rM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B33C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718003242;
	bh=1Imne47Z4cJAWbzdFefUnQdlMMQHNej8J8Kw2McLeXc=;
	h=To:Subject:From:Date:From;
	b=QwSUB/rMbzl/cb5bZt2nb6SrIkFgWVh07CedjK5Xh0gnSAp0zPElH/aI94aF+n/zZ
	 pLiSZGpF+cgSXY8/2RSQUfG3McUK5IcvyzCtzSpXC9whXHN9eNurESauTquVaxxpof
	 tWSbxqKjLuSRolX0x16Mpshlf4LyvVs+lqFTSgY1D4nCJfxNO/noZDg3+3ghy/9aYT
	 tiANnRgKZlVb7eUzga032scpIpk29VE+8um+FAYrQ5hdeNdfvVlVXZIMqthZfVmASd
	 Gzl44HM2mVx/BmM6fLJXq/Vpt+TB5ufmmF5fiTqX+jO9ggkvT0S0xdWLnv7fOw5Bww
	 bxPA5Yu/M+tfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F59C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800324278.20886.11371639597048220533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b150fb3bcc06ec28ebf74ef682860423395e35a512d17da88e6ddf68ed658c2
Date: Mon, 10 Jun 2024 07:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718003242
