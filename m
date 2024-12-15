Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E59D653
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734225354; cv=none; b=a8UuNUeU2NWiG05iOzuJ4ylZvWmXpS6oFU+3j/Pxbh53112zYLytzMe0zfyz3C2tl6TvyALduIFfEAzm4cFKzDuHD7NN4u/YGnjJRM5tjbza01vbKMrk5riLY4984HxuyHt706IEAoOc1YauxKjwrIZQyBHOqHoGkho6ZXL0+qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734225354; c=relaxed/simple;
	bh=3fTZg2CS/A/MEUVLrHHA5Uh6hn6xZcoCkjH9i3e8YWs=;
	h=To:Subject:From:Message-Id:Date; b=VoUdmozI//vWeB7BFQGrcPQYuW+HldonAWAPXXiFEz/o9hEvQF2FPkGlAODT4h+0OIml5msOga77NsEo5ZXM0U8vYUK4sXznNKkpXUxTlLp0k1bhtQmbajbeFHr128LwExBBasnkCa4FYpmtpnPGJtKw60FgTnnqf8RQ3A0TMtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqggzJ7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqggzJ7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD99FC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734225353;
	bh=3fTZg2CS/A/MEUVLrHHA5Uh6hn6xZcoCkjH9i3e8YWs=;
	h=To:Subject:From:Date:From;
	b=dqggzJ7iCdZET0ZUC0LJx/3VYNWyCX+zjH+i10To7O8mj9F6vzNgzYK4j/DA6kRFG
	 kbA67L0cF4o0PRxsMEkEROTeoHvDZOlCglJRzsWMd3jmxgWARGchcd6Y2D9VG/XgoU
	 tbeU3nBQR3xQmvHk6KDs0Jr1qGKwU8e7SsW4C5ZFb6cqNSoBfpGPw5derwPFrHXw+z
	 dvcR+ThemYEDtl+O7qd9T9E6AYyddp20uPReJyCL82ePxLmTh2P+5FlJI8p8S84I5H
	 ya1GnAFVubNbMhw3XqyqACNEABvrTUdh3NHzP01Z0XPY4KlKAm5M++XwJPQrTQ4y+A
	 7ZFD8FYQ/SlxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D98E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173422535358.31300.18136380493898067861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becd56bc71aaad85fcb8e895a55cecf478072fa7a43e6a7f90673a7b47c2662e
Date: Sun, 15 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734225353
