Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C5815749C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721755554; cv=none; b=u4iyxSCu9hxbyppREy48Hn4nuKGxELaS+2WTQ+ERm7D1RzeiXRrZ1nL5nj8cszPKhL/ah67GoR4vW3ylnQzKQ3At2la9JqnJTo1tiK++2mxEyJI7IV4iB3yIfYMooAfYAC+LbZ4NIbr/I1S5gb1/qc0FOzwIQ7LAvYt5Qn6YjBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721755554; c=relaxed/simple;
	bh=Qoulb2vTza1Yre0RiruZ7RO5B+1Za/QgEqMTrFDI7ac=;
	h=To:Subject:From:Message-Id:Date; b=HY0YSzQ8qu1TfDy0PHF76v6lCNuO3gBP83gCZJ03En2uweNJqrEhheooe39jUpX7HITexzL23+hm24f8VWIBOJt//alY0MKxyWrRFGuGSQhLkyROzobQMhsbVNohygofDlGfEwWJozW296gOoXhiVmVfAz1Ym813PHQTO0YzZco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUXI9biZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUXI9biZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4B8C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721755553;
	bh=Qoulb2vTza1Yre0RiruZ7RO5B+1Za/QgEqMTrFDI7ac=;
	h=To:Subject:From:Date:From;
	b=fUXI9biZQ8yVukM6virNgcbr2hl3IRIopFU9iYyCfH0HcWbN9JN0Wv9xa3uIu6WLg
	 c7WzHD513m7dQV6kbbEvaYsTy33kt2p+TNon+VjamjPmmTCi4ozgCx/D22vVTBTgka
	 6hchVdcG+F1QbLGr0hHQfluief8hqVkysJcgH+Vxr2I5RXcAqnNQDAirxrugGZvmoj
	 0V6/43bjf9jP+YVyx6eBPE8TUbl81v5KW/ZsAYSTb9Ej+Y++BUcGysg9youaOPQJ+v
	 0tqvoxNtkPVhbxNJw+P3uC6u0Duf05u4zldaVziGTo+C1de1PMUOphPo6Z97a0t2y6
	 RoBMrX9pG8ZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE9CC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175555364.3792.13533160938720766963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fd42fd2e0a4b66bca13052a7a2a4065831ab9dde7cc3fa125e79c7a5e97614
Date: Tue, 23 Jul 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721755553
