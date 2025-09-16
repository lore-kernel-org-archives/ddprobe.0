Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F8221FF26
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758035994; cv=none; b=RT1SrwhpLaUwOTmwZhFo3l/xhLC6Lz7jzQsh7KXs1cD/SDU46f09f9HBVv0Zjf3UKZ4HLcXaMjFcUaMA/IIzvDeBiFVsVCUZ17z3koEsW1l4Ijv6JhWRoDFkHvVXMowDX2HotrkKyWyHQZR5+n0zveAZPIDrIPOxE7u0zRqkNVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758035994; c=relaxed/simple;
	bh=xBPwbNrT0Jhc0YVbJV5UaIFGTP3m5Mz+KddvPk4mEpE=;
	h=To:Subject:From:Message-Id:Date; b=u72My4SUpTdfihGpArGvcz1vlmjwMev8cD2XzfzX7GojOomuAHHoCupWkX6KPgTdRHwSFnUm80xJ069wq7nN3qRQ165hBEg5MXBFe21nTlLX3cer9cuOK4nXu+Zj3FnpwTa97ovk2xCsshXBlzpUT3vyK/BbGXpiX1WYe3S6uzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qq78ON0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qq78ON0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758035993;
	bh=xBPwbNrT0Jhc0YVbJV5UaIFGTP3m5Mz+KddvPk4mEpE=;
	h=To:Subject:From:Date:From;
	b=qq78ON0jhT2K10/V0U07crDIRDHUJ0HtV4d/kYofwcbsejNPEgdkUrUDyGEliYWDR
	 aDse8aLS+H35lCEzVaFWS7TMGguWIkKud2FUGWdIUbxnkyMGVnHhGXJiAykATmrdCX
	 mlrHz+mXeRpog9uHxoZERRgAHIaRC0wMKUwoqEDlzxBpHXpthbK08YPYrE9shfhCrd
	 SB9v9kcGjNzdHydAp/ooIp9046/XUYNLJ0PmylGQJIsOeuTjmpH9h5MIyxPIYigmGV
	 SdqEplMXegGRzK395Xp5AtqDZ+og8B6MuT32JhvoIHuN3VTMGqtRxK9Gug1yP7WGJ9
	 L1I6Y+PHn35wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D3CCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803599358.1000.16473890674565310642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72385235835e4d3d7fe216056cf2f8c86996ab8f25a72fd581fb053839ccb03
Date: Tue, 16 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758035993
