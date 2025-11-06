Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7034B196
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762450794; cv=none; b=IvdtW1Lua9X+sSKZZYLE53oiWD+gsfK/+DetdagDcNLpbD6mQ2uWuNx0Oa+y0ZOIr+I0CaOaTK34XGNvKyt2omTDkOf6NloPhzIajLLptxf9t/R8SEQaluFW+H0ouO8GGAyfLiS67FRDs5oc4xrqk9yvODk4dYx/JrxFs7fGRKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762450794; c=relaxed/simple;
	bh=GbJY6ayLNcRiM3jH2SjTtjlsaHkGSPLWvb6df7jC0i8=;
	h=To:Subject:From:Message-Id:Date; b=nMM6qQsjUS9wYzHbzZ48cHG7+DUpK03hC3rM+NMpv/PgML98+G6aDMeflmpAyg0zy5DxptXUT4fhO99ihIOv4Z0wQbpajzRFj/fzo3g5twxzCThjV4QIgQ6GHrjdcKuB9vguYbcBnzQjFvWCZyfHSIop+TTRqZsDQNiWXuLYTtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK3RLTr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK3RLTr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B92C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762450793;
	bh=GbJY6ayLNcRiM3jH2SjTtjlsaHkGSPLWvb6df7jC0i8=;
	h=To:Subject:From:Date:From;
	b=eK3RLTr7WEkP3TwYH/ajvx58nlHRnGYv7WJasM6ile2JBXyPKqhrjqzVCTID7OIzx
	 rr9VX2SO/hNCj0o2FOGYYFaNHtHzQxqiI7iIgFKa7W5/03WUhDmz+JovjIbij+N1dW
	 wh8d4+4u38Ba1XUBPi+pea2QuATJjvwI3pTZmw0AoqvadMsAPNOyrLEeFiqERCk83o
	 XvxLx85hOWeT5Lt3hScLh7hOJiNjSnoVB7eQjxfToD3118c/5Tg+NB0m2mjk+UawOs
	 rV0uszYuR2A4af/9ekEeYPUcJS9Cx4xGAyJ23YzUu1kAzlIFjuUWsGx4pY1RdB6tAO
	 4lLPMEyyjZqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F6CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245079360.4435.15470444955394741244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17309efd8296972f3b79ab0b043e223c1ad5c040e16a2d58177cc474ecfd3183
Date: Thu, 06 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762450793
