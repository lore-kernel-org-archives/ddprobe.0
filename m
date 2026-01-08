Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F552155C97
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767857034; cv=none; b=mtsj7mwaq8h6FiaQsDJe+yGMkrWNEgFDBH3yMnPGyTw0mH9qvrhbmoicD2DwNa/afNWBnPs6REF/t3wGUGNC4yDrmSRb4AKg7X1PWn6I1jUp+QrM/i7zcaraaJ3Ss+4eCfWPmdRKcP7/F1KoKzphpRWlNN1zqm0IHGXySLTdxgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767857034; c=relaxed/simple;
	bh=sAWYVpr8g9Z9ED3NtTIl9RU9QxwSe2UkmfkeZ7ynqlM=;
	h=To:Subject:From:Message-Id:Date; b=HF2O33yGrWVOjaglQIuzdldltBSrra3aBt/pRseFjgo7qC9ydSXzZ/UQS6khUjQa0E+4++KgvmFhymlX/0erCViSo2QgyROHfuQmcFWaVt2x65wPhsccszzeagdVH8d9rPF7Rc7Xl/6sVoWgLSytGQfsUaS//P4iFAZ2W1RJQdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WedzkpTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WedzkpTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F352C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767857033;
	bh=sAWYVpr8g9Z9ED3NtTIl9RU9QxwSe2UkmfkeZ7ynqlM=;
	h=To:Subject:From:Date:From;
	b=WedzkpTExSbloVWLxUqCqur/+difooV/HOI5TSl7ryEP8UDV7o5AjCkabzuQWC4Ph
	 3+N3F5NZ/E0LgBqvNAbPNJ/QwstOh5tt/A8/dVp1XEVt1d7U72XP4yLMLQc4rcpRwp
	 ZGXzvf6RQfmRRH0z0Lh+Aoy5ncu224q28sKuidzAWQNITJbHQZcC4J2xQTlnPoGqON
	 nsAJxdzwv+2yQCMbKp/rAkksyA6j8M/slgs2ycvm55aG9vRdc+uU8GZeueuAHUk9kD
	 RxN9ANOLjPkb7t+X0+XC/WVozqWcJWy/kIhq8mM1AYD8WRh1NjW5pRTnbEAgftWaCf
	 5E2xcZQVSPG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5CD148A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785703357.17547.14128630686695909685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02364c432329870c631e407c36d13b15e9fc119f14c12ec378534c8ce6a0d668
Date: Thu, 08 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767857033
