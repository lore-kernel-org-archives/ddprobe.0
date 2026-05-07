Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220C540DFA3
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778135854; cv=none; b=cNQMKCRNXSoOm+ShtmYiN+CzcFok16RJZPp0fM4gss4ecSlouENSaTOWnqSMxbwkAIpwGVm7Xemh6pdeNfuBQIUQrG81RTrulxZTlkgAj7ctBpeNkQGaJDc2oBGyuqfQGJNZiOBdanUQy4cAbLENcRkEQ0LSJ2ZpaFNULfcCAKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778135854; c=relaxed/simple;
	bh=ADrfm13Om2QRmAg0ad6TUA2cfkTfbcdZLSz1inn+3pc=;
	h=To:Subject:From:Message-Id:Date; b=ubABdFo8RPKsq/Mt1NKrPR2v4lhuj2kcXMd+nR/hBS0rYUf+p9hXohijcOUAv05I+F0Ws7GJ8BQlD85TgLlE8ar5U/hsGtRNGUxeu0eYGMq+2+vIkavAoApLXQ1XgdJpZ/xxAcj83uzIEbVDHP4guLOIcPY7lkvWswHQ9YnCW20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rl+QVf5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rl+QVf5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB7BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778135853;
	bh=ADrfm13Om2QRmAg0ad6TUA2cfkTfbcdZLSz1inn+3pc=;
	h=To:Subject:From:Date:From;
	b=rl+QVf5vAHiXwvEfrc/uhRzYAxV6G8E9ZzdC4WhcKdSIonCVMwKabdxYe87OMBwFS
	 BkqyPzMjFMM7JVh/d5J+61PvsMASPDfdAfo4vBe+G5cRd21ZjY8P/vwzYQUMbISKOl
	 fejZehoDIbDMzCseelHnHHh0E/0vtn8xIylTZ4U1kb5S8ksHkzg087RqSUBkSMdASY
	 7VoUVuXA073o+/ftX6G8b3Jg3npw8SHXInFo75vJXF/EcD6mth+QSoc0NMgBqK8pnD
	 JyRpOXXmaDLrPn7SnyRmQGD1Kc9FAYo1v0AoxIg9XOBv8cvo/uvsuBPU+RjBsHtorU
	 c4WAQr8AWBzew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E9CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813585369.12619.16033089366406899577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b7f63be0ab255b3b7ccb69693cba19664fd3be82a6b7b5ac95aaa907c13250
Date: Thu, 07 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778135853
