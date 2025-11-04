Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169AE2FB619
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762265994; cv=none; b=S8Ut8BN/LCqxx4HwCwUNKbcAhf/J53bRhCZjzoJfnTXvOivA/cx/VryCJQaT/D8fwNW+WlNq9pC0wfLTBA1kU2PKFFm8519xjHyOYuRC8te2yQ2F+NDk+2faz2fa7bKkWZA6HeqQ26ylPBaXS/r2ger+eOUHxBR1M/edeIzWlPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762265994; c=relaxed/simple;
	bh=NPBlMJopcNf9dLlzvJBNLkYLLdSr2QAL+SdZOSQbog4=;
	h=To:Subject:From:Message-Id:Date; b=LdJZSHB0P1oEISd85aHzBUE8OM/gRKqzmC46VozUuTA/HCjun8zZYeXhbw4UMvIossTo3Qcd1p9iui9FrLDkXYZwUVgVQUEve0ZlQtKvPBg0E9XhF0No8ZkSrYb6Miso4vBAqWOX/MO9zPnlCL+W+ePvqVt4t/QQlSKYb+UlHQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5UqA+NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5UqA+NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C651C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762265993;
	bh=NPBlMJopcNf9dLlzvJBNLkYLLdSr2QAL+SdZOSQbog4=;
	h=To:Subject:From:Date:From;
	b=p5UqA+NV1MaIovOa4UiU4LgRQXGTtISUZkwcaMMhnHPqZDXUyIDPKp+c3JqHGQi01
	 lEHA2H0lMvVvtERVnbmmKRtIAiUVxOjvG2raFz80nIP22+cFENKquuaynjSXEAJLD5
	 dxWZoSerJJlswfZj1hRkKcRLsqkYfETPk0H+uXXvg80ZrBeFl8/O68coCkW+iwyby2
	 pVjzNR1tgHBQ/gV+PvuTIfZJ4ZHCSAG3vKEaf0yVU29ttjH5GKt4jKd6G4aa8vRr5i
	 s2tBD115JxKGEHqgSUqglJqF8yDgwBj0Gax64h8GE3fBsNhWRmO0AhD8I6lLgwrcsr
	 BtryiHUs0p/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90318CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226599358.9021.17132984814574499151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01346ef67bba7a0f2a006341362619c753d18887c1f93e3b283562f3736ba8fe
Date: Tue, 04 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762265993
