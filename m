Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1384234BA2B
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760320194; cv=none; b=ChdCBkqbmTOy8OPGmoR6XjkMRt+AeSqAN25v934iIq/2XlR0h0voLY+ef8SGPIUCGpE+ArBXIkXtybzVT6ia0IerwDQva9748vpebH2nLFMb+Fku8AiWFZrkWFz2LB/+wpNaTm8doN/Nzyf6mb5381JkAmnwRQFY0MPiWiszThI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760320194; c=relaxed/simple;
	bh=EDB8Sed0+k+yymuPFcAvKephDPxwsm3zceUA2gGtKSA=;
	h=To:Subject:From:Message-Id:Date; b=uQnxpSIRQAL4/da/fqPIUNeH/wq6bY9zU7m39NnOCVtMcEI+l4g3GS7WZlwOAHj7ykof038hHdetWvfFVk09AXHCmDcxTw0GRKaAlV0GN6gow8UCmsykTadfScvSipdE5TFqmgK1dx1/pAMbIxlrgo/by/LdmYO1hNKrq4vObXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgxyTebo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgxyTebo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BEAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760320193;
	bh=EDB8Sed0+k+yymuPFcAvKephDPxwsm3zceUA2gGtKSA=;
	h=To:Subject:From:Date:From;
	b=YgxyTeboYx8Q2n1RAk3HZ3waSrY5hvLdUA4fnyEGxKrztBf4MYoAUxrwU1GiCTkbj
	 YbJi/1p53oi31iabhqp+ByeNbXMM8bVWfn0VBebTBa+9rXj4fAzy/Bwhle4CkFmhww
	 BiPBD3p+jGZxOj/AcR8HyLL//pEaiqWnndNZh+EdjCpOHNhH9XNkjE7uLHFYQRIxi6
	 JQNmqAEM4BY2e6iWGpqGJrfXiC16guCOv7gIH1AtIOI83k4sawD7YKeMaI/DuCxqEv
	 S1mM/PidSiqdgyfNHsK2Xptjk4HSWwUzZv0cBYgz8qaoAqbNa/MV+xiHqCcdTxygYg
	 YBaguujrepgfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89ACCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032019358.5487.10701274265214871387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b167e3c51a6872f7206752a85f670e5cefe3b1e7cec1423f8df6fb01cd2002ce
Date: Mon, 13 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760320193
