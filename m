Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B1B23C509
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755800394; cv=none; b=U1HwxP9y/lpJ2MCIvKx6EwVz8jzxpTV4AHYOkJWf8EYee3gnu14pblx5XFObecz/Bg4P9zLcOfdt5GQ8W8izkOBBLZUsgiSYjPV7xGM/GNoR94kJMhasgBNnU+G97sMGX/6rDcCAOIOW+8TFkY1X9CkBjI4Em3Kt+XDYl917ATg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755800394; c=relaxed/simple;
	bh=qYf1B0ugAY61VKn4oFji37Vij46xfmI+6n/HccU62Oo=;
	h=To:Subject:From:Message-Id:Date; b=Ztp/13IWqT0349JRk5QF16WcUlfNo7bm3NzGPBptscIxEjwRjNal8EB4RIq+Nz3Sg9qVxv0fO7/6fHwZna8QHLmlW7E08myD/NxDfc7HLkcSVxWtZ2ojj26XzI16/K75XMumEa1zDliWJ0fkku5pB4DCcxhBGsw6TgaSkQ5mVWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWBpTcc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWBpTcc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E215C116B1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755800393;
	bh=qYf1B0ugAY61VKn4oFji37Vij46xfmI+6n/HccU62Oo=;
	h=To:Subject:From:Date:From;
	b=TWBpTcc3T3HmQfk6oft2KfjiETZ3pxfwNh8TL+5e3VmiLsMJ1UkWgtPvthRHdXZBe
	 A+5fvTHDsNxrFBo4EP3n5BMocw93wyLQXPDr5nPgJI/KWlFjMk4JtGIjoNygbfdTJZ
	 3eM4ZbM5QqvcmuCE+Ur31914Njh0cPJshjcmZn3XxbviPeX29dZmTmGHmhpOGa5iMn
	 c/a16FF5iKwoWGEG9iUhdwfzT8Z0CIzG4h2MXiJ/Rkq60QmBG8plapC8Mc8cddsiDG
	 cpbAzqTTuXJ8zxbbct0vpxaBmnCrXruWfgTxUCCszVeo/n9NP5oChW6eLXOC2iS4i4
	 BaAEzG549zLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87ACA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580039357.22088.3141579450441120809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecc2a0dbfed3cd434e7ff5e818d05e1cc3f60fcc2652875a70d8fd3ac818685
Date: Thu, 21 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755800393
