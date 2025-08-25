Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E002DA776
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756117194; cv=none; b=ZhBY4buEG7oLJa4TtFX/mRR94vUFNM3sHcAZ5N20JEr6YsgxkJq74m3ZU2ORgJd79oXBNnNiwZQ0xBfeyFbotuzIXpEnmnNqt3k9DBs8pDBxgAIp27f4fOICEoDK5BxZo4yWOGHiZgf7FUUtrq7bPa7L2/MISqLkY9OYSQN/GUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756117194; c=relaxed/simple;
	bh=33sRBQMzyI1jZfCDl9K3G3yZrGs75irgyE24DZ456gw=;
	h=To:Subject:From:Message-Id:Date; b=stK5qwh+MNadzDx2eUWZh6kbOXiUQsnMxmkKHjTnvaUxYalE2O+/zRP1U67WjzanGYAR4/UiDXQPa2N2IR7JMc7OgAl0ZzZP3BTXniExfBPOtaHbOdqKcUfMFgjeqT9X55UHO27rmKOAqMDPtSosp0pao1dpl71EKGKSia09y2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFKJ26+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFKJ26+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F63C116B1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756117193;
	bh=33sRBQMzyI1jZfCDl9K3G3yZrGs75irgyE24DZ456gw=;
	h=To:Subject:From:Date:From;
	b=GFKJ26+6jIvSK5QaRJ5BxufQGj8NRKZ4DyATw1B+MoYN3de8O7m9UjsAlN66z2lul
	 3yDoAWNO52vsnWAW3iaWPdtXeEeifwimN83z3+ZyxKXdMidGiCBDK+Rqkisy15PsMs
	 xJKXPG79n8RIoCpIRTNs3dpooPMlAV+0P+9ki5M4bwwg4Omb+ZcfS6kYTMIDSRzpFw
	 bSNEYwsch3RmXhCUPuK5EVOb6uu0hNatWu7By6Fgvea7XzeAksXSXFZZiUsNTwaM01
	 +5YTHeo7hWTnUbCj9h9Z2A8sZrFanCFfuGcpkAD3MlYXN3a3kyIusqhtvOzko38+R0
	 9qwYX6hdz5Gfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F506CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611719357.4589.5635548026994633689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d183f4c05ae67fe7fe8837ce55f2d8ef12915ab736142b434641b338a3e5cf2
Date: Mon, 25 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756117193
