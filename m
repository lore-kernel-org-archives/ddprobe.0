Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BF923BCE3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769251434; cv=none; b=jtc1ENRsEeW6mUxfFfMSk/+tUGXg0SpebyKyy/Rl+roun2Gj4JJ2Wu0EehKeMR4JIupxDLDclnE4un04hwY0hPjJYnIfQtQLAehIpzOBy9Vng+AtB4RR7QFtCMW2lxVl2yyyrAdeF+ZGhbKIVvl/5TCWfF2e/b1ntkF2yV6xtWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769251434; c=relaxed/simple;
	bh=ckc/2V8evKGId7AJmuhASlvyRjr7fHWBnvpspSgz1ls=;
	h=To:Subject:From:Message-Id:Date; b=kmLI1JuPsmjcQCug2LZmnWJOVQ6zvxITheOhfePyDFVg8JDtZa4SyZPLxy1I/cfVk0TosfXFXpaIh6UdTrpWot5SHIVWcHXFbH34Xu0pHJx6JphbfzdbG2FPe6p235JGYnbEul9LEoolS20EynnSuDbgEF92xoGRO5d2bVqZKjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNv26qv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNv26qv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91C5C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769251433;
	bh=ckc/2V8evKGId7AJmuhASlvyRjr7fHWBnvpspSgz1ls=;
	h=To:Subject:From:Date:From;
	b=UNv26qv4XX4w/NjLcDtXT71/yB2CBBKiTaj5XlrJ15+nxLf+W0SPjVoPGlhpwGrnJ
	 G4FBpirGKDkj392sH8RxZEoOGBEXZuxq07xTKbf8I36T8uSpGDbdWuq9fUkA2rTRQg
	 zb+TpotnZgNq8BgYmUNCOz1leNpCsAozEZo7DHFrO/uIYjbX0NHR/cyt7sTWIwD6yn
	 a/WXtnTbirm/wpCl1Kkek65iUAXpuLEedzecli5MYNFD4b1TVHq7jCZEABtqa2xMWG
	 GnU2narMflEERSMtRSHNa/3uyAFDQ97sT51YtDBma8osqhaBLeEn8nyPA5TqmqJSlQ
	 ag3ELlS1R5K9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96849D715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925143358.20570.16536275892273178558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8ffd3153488b7e1e78ea366b88788022a9e341515de7e2b6ec02e4cff7b834
Date: Sat, 24 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769251433
