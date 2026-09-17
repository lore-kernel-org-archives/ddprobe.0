Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F332BE033
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789606234; cv=none; b=EH2+zMWNf8TryQR0JKaHFSPiLSJghT1MnlyXYm5HfqN7jnINteSrueGRDemwGYXizXIe128/GOGclbQQ0saLbHDmLbUuCLsomfQO8SVc0xUqYAf2qAgZa21rwrF0lIC6nYk6NKik8WrapAHHMlwrcG7uUIz05H4JPtzInpUn4dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789606234; c=relaxed/simple;
	bh=meCaUi/JQc/cSxdsI2n7j52l5wE9B6QuwKfLreONhqg=;
	h=To:Subject:From:Message-Id:Date; b=OyyzOlUR987Jj9wPDcrRumeBzbYUAcl6c3PcKJUQ88DtQnMdpSRB1Vr6K09jUfBWW1s9ZzIlnBs8YQAd61dT/WuHE3hHzLPjhgEhSa3qZqHzvZfaEJ8aPOsXuQsHS8vvmvt159pn1HeQHikeLAr/mx0o7EQujdso2FXkx8UX8Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQVPAtlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQVPAtlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6876C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789606233;
	bh=meCaUi/JQc/cSxdsI2n7j52l5wE9B6QuwKfLreONhqg=;
	h=To:Subject:From:Date:From;
	b=mQVPAtlYkxf4hRA9mUbNRGy7fcNnK8ARfHFFNGeulyCpmBIYE6fFMOP3bjfMQbcbr
	 pTPC9/ktTdv7FG0ehf2qZcLTBWorZypTcpfCN6m408JtWTQ4dda9U9aUK6qu/vMXeS
	 cEyTLZQN4Enhn/U7s3UBL04wWkjJClHao61xPIMZ5b+lqQJoLwIsnlrnTylzg8Lo/8
	 vFjMPEQIyaKhw9eiLJW3vt7s5Oq5hQBwKq3w9+3YRaS5veeIQPmeje/3EO/E0GIR8k
	 VDSWM0TwPFxD3RCFQL1LUyR0bSo/Q9WWc/AUv8fJ0mCh3zu2R+frfQXWteES1Kc598
	 vZwM9/ZYo2QLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FC0C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960623369.12631.116523321480176952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fbd83981179abb0f97f01d66b09dabd5a9c7f34a9f1d5758cfb6527eb50f75
Date: Thu, 17 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789606233
