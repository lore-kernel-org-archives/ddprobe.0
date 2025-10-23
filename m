Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A80191F91
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761256194; cv=none; b=fSttie7c/Qnyc7PXZuzOdFIMx8nzIrXZvGXRej+WtIKECZ29lFVhukzpH1lDhpOkxWEfhccluAq+ngAeFHZGTCIisJCg3q8sWZ3OxXvSmv1mLrE7gczwzPTXWhwKBK9hPZWoNhlkAhhVjLq+T9i0Cm9clJ7F9p5vYiOV4SquG+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761256194; c=relaxed/simple;
	bh=ujNb7z04EozsNYqqe5nrnZ7iP2XsaeA2fxTszeVZdaA=;
	h=To:Subject:From:Message-Id:Date; b=frvALpwC8WXn4VFRFY7GYjQGKRfzrniGFpiL0xtdaWrcscXFXxz9XkWeAN1JKDk6Jyu6gAuQNrKLGz66r7W7FyI2yuLLQyNMzxXQW/i9cQDaBVF3rdKVdcg9iqGdyk2LxSLw4qCTEVho9w2pQdVajehA8En64MzqxhSP1HtrBtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvkxmtuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvkxmtuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE64C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761256193;
	bh=ujNb7z04EozsNYqqe5nrnZ7iP2XsaeA2fxTszeVZdaA=;
	h=To:Subject:From:Date:From;
	b=tvkxmtuu6GejN9abgclSkn41qZNTfcFpviigVxpoL+efEmYLEOpCUwfrGqI1T1lhg
	 RdyPmhmSfalA1d6t0w3GOqorkhfzgxIHn4JHlN27rkDabzNRfOAOEJBtjzdfT0EvXo
	 lcmaFWuXJU3lKgiTGxQqvez0yy5ztZEF3uADRvZTdgMjD7ymjiH8+cdQ6RUKdkDjE+
	 xbrQ/BOEqXOQ6XnrqZJJdXDDCOTHMh14MJ7JYuoCOODBshmqHQ3rqTznQJuKCflEr0
	 /nMpajP01sT3Ntfr80P/aCZxtD84J4JunsMehZvzrPa9joAOqcwtw89Q85IGiT11dG
	 Z+r1ec26ylJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0CCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125619357.8197.2724669633940934566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62710200a52a1512f9085e3d021db8532ab2e0e156000c06eba898f8c3fad2f6
Date: Thu, 23 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761256193
