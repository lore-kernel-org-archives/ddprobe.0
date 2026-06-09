Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500653812D3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781016334; cv=none; b=luWxEkCPKtXu5l9BwRlQen8Hbw2+muw/4yzg0TFmQGKkX64xOgBStCRAZS0KDJ7N2uGEZlCpBqa7P0FWN1D0CPshpr5TKcRqX1Rmj9uReKZk0ckoztHpza4dgyXvi+YUNG2rbqSfA5BnKtt3bkbfuTSXbJLZ+uQa3PZFx7mtEe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781016334; c=relaxed/simple;
	bh=kRRS+A3U1JDbmPPAZNMGyoKz9Zf5zagqYf6Fl3SM07E=;
	h=To:Subject:From:Message-Id:Date; b=PAaqYUoGEM0/2vvlh4QK7jAXYD0eVieCGMnNoJF7g0EXoHb5IQ91CFGhTxaOhjyaRShXYCttjcGetQ7s4evOir4L8SHiwF6tE+L5y1eXK+V3IS/U20Ha65Bq9uJheE3q5TToG1XRDwUPKLd4TuN+eMezo5qzf+LaYjPFWijFUMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkULE/PI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkULE/PI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3495C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781016333;
	bh=kRRS+A3U1JDbmPPAZNMGyoKz9Zf5zagqYf6Fl3SM07E=;
	h=To:Subject:From:Date:From;
	b=IkULE/PIzKxndrPz15tGzLp7dO3w8haEUIBojS05cOEGr6qBQ4Dt/ik0/eylteOgK
	 LUmG6R2a6ddxQ51oi4Ee+1H+xVe25NtmU/jUJbU++VOQERs18jAppcSIqvY2QDvMzz
	 uNyefl7s8y+fodp4e9oOxAVj4xKWJ2heEVdYWNgUqL+q3oDP9ffVVJ6HBxb1be58jS
	 m6RYYxVLaEHYbS6LuzXek+uO1ZBjUSxPnDPf1VxZI8nZMqJT8J/21HfC+ijo9s9lDY
	 Xn4UdZtbzvLMQYNZgeMmqnesT/pP6DTym4el4AaUoH48GfzI4VgTgP3v3In1oo9w58
	 zBY6v43gpzzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AB1CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101633376.4392.390765412971073205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3ed0eef983657257ed01d45845aee0a28d61bcdfdb44fc7c35ba0e7299a962
Date: Tue, 09 Jun 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781016333
