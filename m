Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D361190490
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718406504; cv=none; b=mKTDcObbot2GHusyOa8eKvDIzC9cBbf0BtTveTyISynQBJpyJy5+7Rqp0McrIRgPZ9wOPO4zzgb3jYyNdvcW92E2X0wPtvYsqnn08978cnujBS9eLgAUeNokrGlq1bdBZoNHAhUvbacjtKD4GOVLzU5CXZcXWte5FTIkZ6PrIvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718406504; c=relaxed/simple;
	bh=hXO4ZLU5A3cEbhqnL8MpMPCfRFud0mfFNQmhrPejpp8=;
	h=To:Subject:From:Message-Id:Date; b=mofKb2aIcTcP6W/3N0Pj56nAIm/n0P4p4ln8hIKiAV7TpLByePxyQSsAJWs9tjPaKNYw1kU8ihcVqi/McTnTAYKgj+LGmqxMHDDtJ7r6JuOgvWkw1vjfTlhnXF9dvntr6iMl7lSIQ4eFl3ukqe389rNaHUetwoSe6dJddyvD5FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfmcdV+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfmcdV+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4208BC4AF1C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718406503;
	bh=hXO4ZLU5A3cEbhqnL8MpMPCfRFud0mfFNQmhrPejpp8=;
	h=To:Subject:From:Date:From;
	b=IfmcdV+H2zrN4bVJQcYphzSI8LKS8PA2J57yTFbQenTFdYcXylAu+mDGRlsj+VX4j
	 P0iyMePAiEkANGc+xqWcgWIBr8kKZ+4cp/qHWzi9Gpn39i+EwpHq3/WbAIDxFQkUtS
	 YIw8sAC7I6UIQ+19W4+xynwJid4vEvxxGM/i+QjVRhUGiFUzZlE5uptwrxur0RsIjc
	 4sOftoA2L5/BVIiM32yIRK1fLhlvN7fxJIAd/FZGgUj1E4WDtNmS6fcaMkKFKFq369
	 1aVkVvXFGu0CtxD3u0QC8ddn8YfKIbgfL7PWtiaPbRhwIYbjoWx2jkbd+0c68LIbSo
	 s5Zn/3fZHrLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12AFC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840650276.25742.11648985420941033927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f545d87961179b470be30f29b2dc49a048c0961d64860583a27191132027807f
Date: Fri, 14 Jun 2024 23:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718406502
