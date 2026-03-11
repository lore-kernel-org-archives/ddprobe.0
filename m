Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9242E8DEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773267294; cv=none; b=Nk+S+1YikdwLBMlVFrVrwxbEs5EsTvVgeirTMR0Ph/cQQ8O9nPNQgErxkYWa/cfdDdSfm596w2hUbTZDehYXEE+LeYreF5w/xoOG2/CFIBVoOTF96dfMLD40SHwAldD3u+H0+MCkYaprVYEEI5XsW/P9LuoxkjhDkMpg2/NoqdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773267294; c=relaxed/simple;
	bh=EwHVG6GWMOICn0MXXnOFLdhULyZ1biORgb5SKJNyDPs=;
	h=To:Subject:From:Message-Id:Date; b=hwn7CzbodoC9cgztyf7IdbKJEsXQmFA+yyBN16GTlbwxdoMZo2eP0hEVKIDh0GLkpJPwOrsEimyu8vYNcNcuPIU8BWMZMAiQMv7vEsvPDJ9MZnpDuzqDcLYNeSvXapBcW5UCb34i9JQsJmfMWa+z9Ly5X2Knmh/qQV9ZrC9ZD7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyU5cODR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyU5cODR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA8FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773267293;
	bh=EwHVG6GWMOICn0MXXnOFLdhULyZ1biORgb5SKJNyDPs=;
	h=To:Subject:From:Date:From;
	b=uyU5cODRAtkh+tpHgnQFWKPLMBmObf8tOB9bW7NNHpAjv1Dbd5uVLJYbEs5iPjryd
	 FtTEoYklRIMVRk3XamfMww4oE8EQDiw5848bWBnFNw7t+s0K+PKkMwEreR5mzyzpVc
	 uFM9IYdd54SUCN9Say8S1z6FVPMuRAsnKCjVNdyyiHRbO6zkOStbiLCjCfsmsRbd9Z
	 FJVm4qq+B9r1AEGDkV0XJDr1/83TyUVG/yhusfdNLgtKB0awn/KhbOTz+GUsGs81+c
	 2NKj1EkP92zzAyOuGWp1BuzJ6SYHrf8jFcXomyTUz1r7MDRumz3xEdZjNEv1G9UDwR
	 DdlPNabNBN9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91059103E2E8
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326729358.3929.3955386744790924837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45466701aa28d9f793146882fc77c4dd6eba4ce6b00f0572bb462f46159d08a
Date: Wed, 11 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773267293
