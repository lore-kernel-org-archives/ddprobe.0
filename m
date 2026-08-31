Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51637525A64
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788184835; cv=none; b=dbkNJs9xVcQtUilRnUETkHcm6w0VptFkUewGX2BM0ShOuh+8LnWcL3TmhvkE9cHcULFiEm4KeGcNDHHX07VgoZKoSSSdDT2y6PdB2DudLUaLzRmk90OHR/ru6m/2lmcfts9pu4UrK8d6Tlr1oHMQCyDKQIqOhI7F4Q3801pAIz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788184835; c=relaxed/simple;
	bh=2NeRMXYoXGoZdxifuq+AXLFNr5nH5lkC6XPTMQxUx6g=;
	h=To:Subject:From:Message-Id:Date; b=oeO0exdQUqxHGNhtLgrxoSEn1TNY9H6lKcfOyyrzgeTNADLVnIE+Ncan4hUVjbTbrwmQHPovhMhLEFAIb/aSRnu5xYRFVkVQpBoVq8xET5CZ4XzO+TNXY74GxkcPxeLiEo72EER5/nnxAEEbKlERt3/cZgvUmYoXVQ/iRhc5hps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE4FZeeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dE4FZeeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF268C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788184833;
	bh=2NeRMXYoXGoZdxifuq+AXLFNr5nH5lkC6XPTMQxUx6g=;
	h=To:Subject:From:Date:From;
	b=dE4FZeeKKJdxDuGuL/8RQYmkUWfYXP0Ai9KCyWoxzC7ghxeZDDWc6Qe8wtdkgo/ao
	 hLB+VE3l7JdYhU1j1RPsl+4/lQKpGW7ikMnVGiiXiHrMFm6dt24ioW5Wiv5pnCpeW7
	 QbZCuhAuhqWzW37dR1zORM9ViKTe0ZE29UOU7lrdc1uBTrmAHLB/A36XvAivHWwQPY
	 U2NDas3vFOk9t1r3GqjY6QPlQCK0GgMlbRqCvlKZOyo8ouAJt3JM9V4xBWOb1wct7K
	 uMzoB8Dxh/WWWC0RxXOaM2W1CbCBP45z2/sHuvUTu92XgOQeQRCAwTOvZcg78xvcF7
	 Mcfl2TekxoZvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB447C624C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818483369.9943.13670138093957909073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c8e3ab5c788e7f999eb5a55508765ea0f2fe0c47842a345ed259477f41d647
Date: Mon, 31 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788184833
