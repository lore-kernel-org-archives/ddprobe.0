Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB4E303C83
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782220594; cv=none; b=mxcEUyd7249JulCpa2yFc1hIjvjLwabp9d17OUFWM9OWgxiu74um7hdwM6vNLh3lK2H5RX99ZmxEQtW0wDSrHvkSkRYMi7vu1oljp7AT1HxyeoKtNVFJgOZYax6l7ppx4SU2cTQDrxnNWcji4taZHwJMJvHWkqyVWNoKhrCINdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782220594; c=relaxed/simple;
	bh=VZdRqHUZImCT475zV/3DQN5dVHQUbHxyVdi0lJDYcU0=;
	h=To:Subject:From:Message-Id:Date; b=dqV4+8o8z58YdDL3ZRvhOJezlWN2ihuFBmMLp7OIjdm9tTwq5fd4kvFEv0Q6/7iIueBWuSRiClqAOEWctQHub0UeNe9O/9XRjLgdhBbnGltHIJd+WCCsAtcg+5na0fl9vrMa9Qs8JBcYwm3tWDqQyryxQ3jjqjFBYghFeJigetU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/5IpRlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/5IpRlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98C1C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782220593;
	bh=VZdRqHUZImCT475zV/3DQN5dVHQUbHxyVdi0lJDYcU0=;
	h=To:Subject:From:Date:From;
	b=a/5IpRlB75L8vn3D88wF1k3HYnq0KMxK0D1us4n35sY42G4BvB7rUoBjRegut8a7Q
	 /qRT/MXt13c9giNeR0lMJdGkWOJTwfOzQRRVlsSsIFvYr5MNgr8W4CLX+zsggntJUj
	 ZD0muaZP4MUR25B7cXzUGuZFBawr/fUVTLt51VTfc23Aej2+UDIieY9Wb16PzgrZzQ
	 wyw9HRwx+SzIsuX0e275/GQ5BWNC/SvYWRXzyvPrBFTE6N3FnVJoERRpKbBlUG5loU
	 xeFyldiFWO83Zm8uVGw4Q6S3lnaxEqgmwYF7WAfgGnPLAcRK0uxQ0cG4xjdJbuu1IM
	 WGjMRjMLZvzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA642CD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222059368.11747.6121633430196250076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07309b120f61c2f3cf11c5a62b120b64866f477a6aa3cfffea5084c510c71629
Date: Tue, 23 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782220593
