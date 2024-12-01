Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4F413AA38
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733063754; cv=none; b=To03delSA2ivbkejN1lUoQS1wKeIUkyfKXBLpcQpy3niaB4/T3irR8bO80TB7RejXKC3erh2PVWHY3VeTS86SFvB3GIuZ2DlySA8GXPz/DQD6SrIwLl66iLzmjfesJJbqqOoXlQktkJIMg+5aym97uqXwG/sOGvsjts0PLWMX7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733063754; c=relaxed/simple;
	bh=xM/5bT61hdQh5q+ofJdXREbPIybeS+X+idAXMnigNVY=;
	h=To:Subject:From:Message-Id:Date; b=RL+j6jzx9JxZRH5cDBzbnZP1u2na96erMZ/RPr3BZVG201gTArbUmRMoazZQIslo+0w1JmrsshPnju3xpQmP9t0MWGJBspN9FBMXuqkPBRXgFQXILZeDrcoffOCKMZMp7FtUdQRJiwmXDfNziv9NeDM8VecrTqBTNDjKCbOwvn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZsfB+vD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZsfB+vD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE53BC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733063753;
	bh=xM/5bT61hdQh5q+ofJdXREbPIybeS+X+idAXMnigNVY=;
	h=To:Subject:From:Date:From;
	b=bZsfB+vDHqr8BZ5ziKkIp0JUAavQicVKIceDL5gxBem6vpaHh9snPaoYKgQcsld5y
	 Eu/BSeIQqCp3evOeRwgSNFAvAl3XnE86SjfVhiLz+jicHrufuGcWzVj6/udbeoWBYi
	 Ihwm8qCeCgC06eBKeNPCtRTmGWVIh5AsLocndM2PCPHmu9GSSDgnGPfYxV8aO0naqQ
	 pZeX6gJbEp9qXWECfhWLRaU1I/XpBc0Hz7mPvuN6KwBg82TbgdkwF4E5JVXF/TBr2N
	 9vkhVsbxKRapyOpKLiRyI2+8jNx/UZzAXe0mzKaqbDMVjKFotEiCPhd8TW9JCwIVFB
	 +t6LWSxh0jMgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E2D49771
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306375358.18238.2188495571234730437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840c462906da00ee121243574a86833475ede8ddf0c2e43005b1b4acdb303714
Date: Sun, 01 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733063753
