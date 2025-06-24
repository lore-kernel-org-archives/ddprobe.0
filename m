Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DC92853F8
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750769995; cv=none; b=kk4ANFQYM28akVVnsg63j7nqPRuV7qTdhI5Cv28Qix6oxJeXt+5APHhxOd09mADElx+DzTTJzvZalXLz02T1OUgoMmQZlh12ObsgMSXR9DKHzH+/vrNeY0eNg953qbNffo/uLnorsNYmn6wniCr/sYrSHxcq1Zu2wQRsspkjuxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750769995; c=relaxed/simple;
	bh=i0qowkZh2Kwy7xVuG+U3cet9YmtFWTjhRK6fHkWbVxg=;
	h=To:Subject:From:Message-Id:Date; b=L7dgdwc87QK+b4KBjHoTltr3HTMg39CNsh4xv/swROGzCbJqf0vAqTZQjMMYwmYWYm/mQRYLqL55RlQU6AoIkIgDXEvvES1qIv25Kyt3u4cv/Gb7oRGTZmdLFoPbKqYc/RJFlIEGXe2mzEEBbRxaxsF3tU1UcoI9sR7hA3Lh+mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDpjrfbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDpjrfbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750769994;
	bh=i0qowkZh2Kwy7xVuG+U3cet9YmtFWTjhRK6fHkWbVxg=;
	h=To:Subject:From:Date:From;
	b=cDpjrfbIAyJ/FGVk+c7Y46cIESUDRyS5v0locNYW3G9BubkDU+rg+MG70PqrKQ+5L
	 +OIVmiqIydLtXyuddM+7UrGQ6OrPYKhwzbcp4aZGjU84luVzDWaRZuxmbeDeNiV7bW
	 jXE766eGRPkB4asiD0XVor/SAbGtnipm2w9fSusEC0ZHdN1j5E27RDHrsyBzzI9ZKl
	 5z2s1D/or+x0Wl+wAenU94+oystQIh/HZBTsFKHo7hTR3vNNzht8cjAbBX6D/D3xHe
	 t/93RUGX4evuqpf0+7qPkmD5B9+YpUAIL89Kc9iMbKxSxzTM4hzlEKyOETPus0nHvJ
	 E7Uqg4o4IAydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B48C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076999358.9272.3249724400122917331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4b6b3c3bf53397a4012fcc50921f7ec06a0141965f8a1d867a47b1f781669d
Date: Tue, 24 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750769993
