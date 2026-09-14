Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539DE421222
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789422634; cv=none; b=X6zqoVJHKedQfT1B9p/3oqLzkix1gMIHZuT383zcACJCKyUO+8Yls1NywLN8mgqQHs7vRpJUU2076JO5YocEIzcc12WVQMa/xg4i2GiQcP4LlWsaZ4wKJTC8byUj/0Ct62ojDogJrLEHdzLovikgAkZ2VHZ6/hESitOjqDgYYR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789422634; c=relaxed/simple;
	bh=8jXT5CfG9OcrF1zODPX4TOyqVSQJC28xkNwP2fSFUQc=;
	h=To:Subject:From:Message-Id:Date; b=P68ySGYR9sDexsjBZXxZF43AQsHfEuRVl5tC0JYYPCwZ/mDagHaThjAMCkZi62zYtPT9eduYCK02bHrKWBicH4ET4WtPRDxO7NZXFop4ZS/TzzdBQka/UZC6DDMh3mq8hz0PXjlo2EcYk/Aa7g9bRY3KZ1cMhv4JakX71/NqRDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkQ5DQYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkQ5DQYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D085EC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789422633;
	bh=8jXT5CfG9OcrF1zODPX4TOyqVSQJC28xkNwP2fSFUQc=;
	h=To:Subject:From:Date:From;
	b=GkQ5DQYuxBr2EEAhsg0rHWKc3RGAmtcqfFvGlK2/DxnkbQ6FsYbgk4nx4ngSlm9v5
	 28nTmk2zQj6s91/y7jCt7fmWSWQfhLGD/DpFXKynQkiTF2OIBZ7lAEzZ8hAhCPJKop
	 36GeFxQKyhGie9y9G6ZMKLu64h7rGINApHMOhWKDw/yN6CwXsAtzHDNRfa0PXBZIJg
	 YhBDV34SZnYmXEaLbdDzAqmbaK9t9ZCiNE1TndTjKkj4Jk2Jj9qqWq0VIJPPHYFJh1
	 t+AoxUjRyC9+s4RW6qXbqYN1Wuqlx6cCAR7yLP9hSQss8KONP7O34T/+D7YtxpUZ1v
	 78J/K9QtgzB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD35CC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942263369.17913.15952888756782399263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7d2b06e219dc8b02410ebc432f125e969f75636a8d16e3edd091fd380e9d44
Date: Mon, 14 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789422633
