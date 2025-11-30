Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352371FD4
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764531174; cv=none; b=IpLOBhbq/pYenkR82uW6JUD3gjwmiUF9blgGC/8nOqiKyQWnL1aDtjRmisPpWWiaSY0BwpTDnxQ35pLymmGFC/Bb7WAz2ZvRbDCgsURnfPwJ4RhtytaKSG1YmfneFOpiNvsD2iKsHjXILMlRs7k0puuLBCKaSYrKvSVpZKCodDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764531174; c=relaxed/simple;
	bh=dQFCCgjY8DA0+w2dOugw4rLBPA+kyspGQpNkznUmtZ4=;
	h=To:Subject:From:Message-Id:Date; b=dg5uvi6SN2dsaiRmRV0RGE+tlSxyH2EO/HSJQ93HxuAC5KveDN96BGHVn9MJXHVmfTzL20HJVWwzrHqWt+opXJE+rXh73ReS0qXsXeqeQF9QXGCGSPSdzONSO1yVFhTsr6faYtc0Cs4p6wMUKpl2gtwK6k9xR4RXRffm6XCCUxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAf1nq1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAf1nq1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A48C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764531173;
	bh=dQFCCgjY8DA0+w2dOugw4rLBPA+kyspGQpNkznUmtZ4=;
	h=To:Subject:From:Date:From;
	b=cAf1nq1sp1ZVefzvUjfBPvQ0ZOJryH6iVYpGsJ2Fzctce/EyhFHr+Ck3O3HjerZh3
	 pCpxeqk8+0c91vN0ZNP6FahMipsaCji9RNuOHlU0/QFnlSBlBo1LhGVHgcK9kWFCfM
	 BXA/28XR7X/KWzNv1eru1K/ruJ7ncL104TasHwZgDpNzyUJ7dRln8RQzA3cyl5cN4g
	 +Xrd+RWShzqpSLt+ZX5A8NEdReAVSuuQ5Mc/ocUH04Asfx7Oh4Npx95aPkkOChUiFv
	 VdDCbRVEZZTJlX96zrKEzAOEhtmXLzh5GKrtECbsNuGnPKqsFQBVoLSUEDPAZPPwjm
	 M+8gM9fyNPUQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E7FCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453117358.25152.1994590148423982557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7eb10eb852e22eddc21fe342c6e70595f1d34eb95611cc6b906828d5d5b51a1
Date: Sun, 30 Nov 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764531173
