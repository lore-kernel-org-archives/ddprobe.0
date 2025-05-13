Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E5B433A0
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747161594; cv=none; b=azr/LuopwcNoiM2MzLNfJBKQp82yykpALKJmds4ic+UsB6QFyciN5qwWwg8EPGkQkB+BTwIPFY/MCNqZW0VektCZQ2OnuTMirKEcaDCQorIym4yE1O2HZe/LiG50PrKES0Gr+9Hef76DUH9+GYleppykC0LK4w++TiwF3n8U0ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747161594; c=relaxed/simple;
	bh=47cm8QdhvBsV7laA7LaJErdEX5P4iNC9rFuRhOx/Yzk=;
	h=To:Subject:From:Message-Id:Date; b=jcvA4zsxL6i2C1Rsz9oG2ap+a8A2ZC5J1tdP6aP9drxFoxs7iXKDyNUTbXcq1TO20hss7V0saeKHE1hDYwIKQek2Utj/jPnXE5RZxUUycAFqXZjh8h7WVv9kf/W3DJM682juYgr0SwwDf9en/kCC/SLfyWLM+xeLnoRQNJrOvCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0uTjf3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0uTjf3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D31C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747161593;
	bh=47cm8QdhvBsV7laA7LaJErdEX5P4iNC9rFuRhOx/Yzk=;
	h=To:Subject:From:Date:From;
	b=s0uTjf3Euq6ldRKivSvMd69fmSmT1o2OsRihAGBeyPEm/bh1ynZn9RFwgSri5t3q2
	 RcSTeeXwBQC6QdeNmfCmiv1wLgyVuawftzvTV+4ov0zml6NYjlRV4OuglGuYzgpsm8
	 xN4poxSpf55v3CJ2DurUSz9DYrwFKmlglQf4Ha0pZN9jIaZOmbtAZI2gKDJwU95BYR
	 3UDPQIzIQsQ4qspfX7L681tROAPjwhGeXtMCxDi9IQ+OIsNS4CTuPjNf04p9qds0wI
	 xX6HcQjvBCFlOtNzguQ7E0yXHR+CQqY+cZac5jOOGXE7wXkVDKgHA6UsR5/Kz4t0Ut
	 TEtu193FqSybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9229CC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716159359.24489.17340179931809974183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695324ef61c840f7c44b04b6bbc1fbaaebdfe3fb409a81a0ac83aad2e64621d6
Date: Tue, 13 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747161593
