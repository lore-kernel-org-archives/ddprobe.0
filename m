Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074EB3B52E6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784788174; cv=none; b=rKA5k27D8yTDkOiFi2bG96Q9WXt5N/bh9dYzg67UOyB2if9t1pDt5cKdEL7VqJ4EGXuB4FJEATnD0y+/bpgkLggRHO3D+mZ7H0JyJBCouFQ2y8eZsqI7WlAKlDknLUD4suSjIHw089OfgiHmgh0zm3tcOSvycOJ6iBMgZRioOAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784788174; c=relaxed/simple;
	bh=5/Vn0S25eDUxT3jv+mZaeU/DQVtZ3U3c7SDdQZ0uNU4=;
	h=To:Subject:From:Message-Id:Date; b=RJwTgQDMkrF09J0Afb3hC32Fz5aW04ewKjI0zaDuri312ch/HynygIYQ42DMMJZqGYe+9kTAilejP7CtzdKP+glt2ecKFm3nLEZ18yK3togIjvTAnDPcKNNijQudfGwhBKJPE0Fm3K5NQqvZe+xlky4bIs3xCy951eutZaf0TsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwD/s9Az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwD/s9Az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF134C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784788173;
	bh=5/Vn0S25eDUxT3jv+mZaeU/DQVtZ3U3c7SDdQZ0uNU4=;
	h=To:Subject:From:Date:From;
	b=EwD/s9Az4ORdQ+V34QukD+IQsmkf/NUFWjLM/hQl29REzzoSIyrAeY7vpiIrE/JSO
	 U6xZZPZcAAnzsQGU6A0esgsq7q5ogcIJGzTJQPT6Gf5RAdT21VMfERlUBaFtkIYjVf
	 6bYLbHHWmmAL0nMuU+Og40csSERGnpm3+hiqfRUCmt+LPw7IiqwOd2M0uO/yseLV01
	 DiJcZCG+rOj8wpKtKLx5twzDXhBTXNATVmoEMMtZ/TOE1fQyAxWm8bdXoti49/ozJO
	 1N3YU7Twju7rFBw/AaU5ehhaqCpv2d6ddxY3UHkXl2KNYHMVA2e7bPkFIFFknQkyfB
	 5Zhsf1viHQ1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD356C4453E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478817370.14596.11386989779491061021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbc06681f739923092d7d4a6f728b81bd9f614b024606a22626e74b306f2218
Date: Thu, 23 Jul 2026 06:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784788173
