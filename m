Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59571622
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715907743; cv=none; b=hgQ+yuRcWQdNyfjQMpktUBW9CTVSd63eE7d/lJpC03LQVyVP6zxHCBvU94APfqljA/t3EG9RYoBSMBWKbmOx8zyVAcS/d6iWpEItKupo9vACBzacmYwC5qqInLZmhf/hYfOtlr7xIbR8KtAcq9mtdrS5T/GgVc9gv1Lss013spw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715907743; c=relaxed/simple;
	bh=rpw6BxHxDgEW3nrWoIVCEzXlf/tJcjPqiPQXwgtxD3M=;
	h=To:Subject:From:Message-Id:Date; b=GR7rsucPUKuUYv+x16Sg52UI2+sUhBJWlqvftAmu1k434I07OQyrRKPBPWFhukiVqG08TQzj0oflbu+2JRb6l1B/UN/xe3Z4b1YDw5CcB14pLcmCfRviPjm2BSs0SMGQ7NOQsksAMUe8hiXWAbanRkr2Wirq7jr9WGx3UUv6mpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7HedHaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7HedHaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E263CC113CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715907742;
	bh=rpw6BxHxDgEW3nrWoIVCEzXlf/tJcjPqiPQXwgtxD3M=;
	h=To:Subject:From:Date:From;
	b=H7HedHaCg78yZW5Geq0ZJLoWPBRRfsxm1HPBKvSOgeanr9jH51aoPR2eXUC2ZohXV
	 WusSCzB/YMV1EZB62zK5EgeAWh+K5+xf0WfMBnhU4cLxGzCD4mn8vaRDpVBJIKpGah
	 pwCzGxW+mehNWyl8yzZiK8/EUi7xPNiTlJl8gOr2MWlz0cZFwONHnDbUzQcM8unHb8
	 DXclkHc3ajs7yRF5wALO5EfUMGxVcCXFn4vcjlPjRAApXjG77sWCq5/jj7gCAGDSgY
	 +nvJaSdYl8Mu/bIIFgR18u3BpjWiFrOymO/kGaFMppRC2/UO/017s8lMeJVlO5y9ig
	 YGF4Wq1InCALA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C814BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171590774279.10647.1357966280211850635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9265b199289283929a63e886b9c70f057edb037f9fd12bf45e01d9a8d481173
Date: Fri, 17 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715907742
