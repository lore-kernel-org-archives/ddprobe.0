Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003963595C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757871594; cv=none; b=CK30C1qgR6yUHyqEM5jsfsFzN1gazGjY1IzsaYo5DqbtJPRhevoDnNudEB97UIlJZmkTH4Dd/HfHI4mORVqD5uTJvY6DumUiNk/bj1+FE7Vw0ZeApMh4htehP9AzekessHGbE3Qo6I3OMKEkgrW1FNgGqvj3zFOeNSw/g1i0DAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757871594; c=relaxed/simple;
	bh=uH0iWERDJCmnpKFg7LMpO+QM1dEA3hN1kzlRfQMxvgA=;
	h=To:Subject:From:Message-Id:Date; b=oDUCRPDhW9eb0RmPYJBCGbVgB80x+E8nUDHMDvGoRjMLwOCXqOL93kWQi7YNgXiqITqfaFjAHSdBt/WydAFJJlYU4YRItB6y/qoDaUGHFwN13bQZpeN1YZzL1vspOCrl1ur7j1YgTbAgrhfNsfTGe26vgiIGZx47cqYddnRCzqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7n/8EHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7n/8EHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF05C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757871593;
	bh=uH0iWERDJCmnpKFg7LMpO+QM1dEA3hN1kzlRfQMxvgA=;
	h=To:Subject:From:Date:From;
	b=s7n/8EHX8PwyJ1Ejl8vkZvHkbeaFuH1fZA0F3nsjMqztF7cJ9m3560WoB3zwwXBOR
	 MFXcZcz/iHG/IwPQCq4HDBQdizGJ/KkJekagD6JV/+C0dIvhfOF6D86JMCvMojkoLz
	 JY1868tHqoR9Ry9FfhsWgsPh1f7A8j8Ga/Zoi5EM3sLrEVeVyfKs7qutCzzRQdxRJG
	 s2IEM8/Jcr37McpseptTZ82QLj+zkVtfdu2v1JnpTfySz5daIc3AfwkskQmeIe9hde
	 jjwoxJeuTWM3H6KiOU8JeILBOzlfXzrmu9rC2ysXj/xk0LtQfW4mE9AdiAk9qNLX2Z
	 jcRDi2FtUTnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F290CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787159357.2121.9233034578636363708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9457bbd6512723352cd3f39afa0836efe0744f7e55954aac1c8c4d9e58d8945
Date: Sun, 14 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757871593
