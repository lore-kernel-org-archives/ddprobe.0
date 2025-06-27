Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29881189F3F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750988994; cv=none; b=ZsDI9MlNTXJBst4qAVVCMW5aanCgq8w2ARpXQmD4Fw88gufgdKtVBn8+mUuWnbdl0zduf8FbRmqL4NE4Q3yLp2e+124J+bOB1AxPbbrylJxN+VLZ8Y4kVPZURXT28o3wmUTvH66jyOUP4rMcK0h6xrswGtDmtJXQLXv96MGXNpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750988994; c=relaxed/simple;
	bh=mAJrprCWgH3rx/RL96LEkIKw/a6uqcMTcsRDAA7cbL0=;
	h=To:Subject:From:Message-Id:Date; b=A528audq9MdYG0jq1mn5YEsnBpxp6v9lsjakB9B3GzTjjlvtWgbB4EBKoOe12aBpOr3BPptcz55zZXRNudRQcyTFefLimUJbPCxfuHrxWCnih5M4e+ZJeEu0k7CfpOUUPeU1zr/ttnnuZBOEq/qSRsnaoCMxVTr98DdqhnA/Lsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAZLpp14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAZLpp14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC2BC4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750988993;
	bh=mAJrprCWgH3rx/RL96LEkIKw/a6uqcMTcsRDAA7cbL0=;
	h=To:Subject:From:Date:From;
	b=aAZLpp14YMYiIfW3hCPnmwmMYSPTzp6yseZHplylr35Ln+EhQYK1zLLNCF/qU8NFr
	 TTT3dnqPO7WtX/0abxm19XWg5RK/hgnuzQg9xPV9UhTiAJ85+OvRUaydFts5LIpD3p
	 0cJ91IdsEYmwwcTdCICfxRxXjlVWnHVBbpvar1jnMXQ7/y1+/nF0Gs/JEGLwT+6yze
	 wLg7zsWqGbRHwA0jhSaIic+fhBcgLa2D/UdJiUQYqsWsDS8PEqrG6JUov6C8yvq0Lb
	 6hhFUUxRSDzEFMKRHeezNhxMdP1EUmIvV2B1gFQ05zjINrV/1NcUUBIr0i32dfuJPB
	 lJwI8p/F2xE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5FC7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098899358.2154.9617514805059947686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e859a520acb23680873f0c31d7c0a1e8213134b37b251d3c80a508b093107b
Date: Fri, 27 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750988993
