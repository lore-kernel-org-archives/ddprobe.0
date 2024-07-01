Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B883F9DF
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719803063; cv=none; b=FFdCkF3rdgWrHOwEPZR0J0uMe2g1P2HD7zQiOTGKAnNA1UjHDg+msslx/0HGhKqttqeP9TjBSWMnS3ofsFh13IpkbAzJ1sB0dNWjrKYv9FgwE7Ec4m1lqHemTCnyLRK2++LeFphL1GRr+CWQBjZbC70L1VRLC9lCzSrnMffmTo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719803063; c=relaxed/simple;
	bh=de/2tAjVHT7eu7XDVsofdlEciZr3ztdMmtE3g61x5pI=;
	h=To:Subject:From:Message-Id:Date; b=MCQNWcPpiZiionC3ZfuDRLZ9H0jKGs4bzES1isN9hO+LerTxRHQH9rcjOOuOwnhgnSyyL7ql0ZmkG9LANegcaNYHv0kdXTYNffg0fTjeh81o8sjrZVA2ZgL7OLdKpcAZEjKi5zO4GLos1O/SQhpZBuUabP9p1l9l9E9hLxZ4Z4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AooeqX5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AooeqX5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1398C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719803062;
	bh=de/2tAjVHT7eu7XDVsofdlEciZr3ztdMmtE3g61x5pI=;
	h=To:Subject:From:Date:From;
	b=AooeqX5O60vetM7NabtTS8n1ksHP4Hb3Nw6fZHH1lz2bflq6RLrb+Qb0+b86Zl9i/
	 rLzE582CJIZxbzir+qWGVOnIi4akUux48puBEf0xijTk7Sv0EAK3Em0cfPunT+qgUN
	 uPWNinOku7+DukX39XYIxaCkENWq3+bemi1o8rY54FNOBIsyuWeHoZcqX35x1S48Zu
	 7t/JOBtyZyUMnCiYFXc2o/RzmSfNuL3sS9rg1RxvYrLWTyqa4cVT70zx8UTTnvm2tQ
	 kkM9HQXUFAjjYaqjR3qDAxE72k82/Tpd81E1BjfxjGx9s5rUoHZSWCS0pjlp5T+1Wh
	 jWwsMb8iXg07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8F5C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980306276.12541.15209811853408923136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6d3db07ebf23e6c6143bcaba32752bde3495b9ce7128aa4548a33c7459f300
Date: Mon, 01 Jul 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719803062
