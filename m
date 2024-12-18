Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343CC20ED
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734480354; cv=none; b=IZIQAIyI1NaUi2tK8pkDxm5f9fETtxZV+SBQYVdtx5mkfEqqwIy/hb/VlZSdfhUHQsuDRz8/G3LA7ksWYgJxopRUHA+gdWAdHgcRpJoZH9HMguQKLVKe9Am1auX8Q5dhsa8DDN8ekJ9Gw1W2Ud7/B5QfO5ccEfETlpSxXRt9d4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734480354; c=relaxed/simple;
	bh=pCjpT87yHfxdC00dyqdKbONQOFrb5G8fy1JfWBV+25A=;
	h=To:Subject:From:Message-Id:Date; b=anrqhw1yH7sJ2c4sq7yzm3Xz5HFvO7bhRXxgfVF3nLx1DlERStBQM2uBqUiAqqN7yyLAE4WbrQTfPRwhAe5dyyr9qJG2eunJI3OydooLZBLD+KnWv55KlLKnCd3JsA2suTe1fdeUqY96REgIzKsL0cgmcGvsZk/BqpglAZwAZGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rv90XnJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rv90XnJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE321C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734480353;
	bh=pCjpT87yHfxdC00dyqdKbONQOFrb5G8fy1JfWBV+25A=;
	h=To:Subject:From:Date:From;
	b=Rv90XnJPVU0MxF8V7kzOvtpRO8W5z9YiVVMCIs2XPN+xc99EiueQZ6i3fD+pUe/DT
	 mI3hZx78Zvy8fm+YPceJ35/2rhRj33OeoQzQkwIUgQZP9jEVIy0tgZCPK6zB2wgk6n
	 Yjp2SpXbYEYnn/flTDeYBZVIryfp/k+KsekxwcM7xedPPokN8wn8zbx2ttQLX83OxN
	 waXwiJLtUbKND/fuupEE1y2uSR0vSSZ22yRYRjlpaD4aHmi+n3uPoqSjkqYhKp3ayz
	 KDCQlbbv2PzY1XWIvw5DUAhBY3CQu2JjglbpR5KLqJQxX7yFOyogXOHu6jr2uBk+vk
	 CS2DrvLbyATLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980E8E77184
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173448035361.22886.4455666635927544927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b403c45b009acb06071fe8305ae63dccafb2dd935c1270f5fdb9b8989ba9ed
Date: Wed, 18 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734480353
