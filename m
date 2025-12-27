Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4321E78F26
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766849634; cv=none; b=fvRvosZz60BY19UMEKl6KOtoIyikUj47VUBUY/iDXpEhIHZJwmMpb1eSq7gSVysubxxaMYK0blG9lMBey2+wUjhdluKhd3B7GGtK9EEdTVwHzUA5O2hfJbz1aRejHhn910Cm+QegWNWiETsmKo4jnvHeqtd4/PEO8hxuCoWYZzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766849634; c=relaxed/simple;
	bh=WAE+/Av/+hSyUEBxmoqJBcaJNu/3q7IIbxavGKXkEYA=;
	h=To:Subject:From:Message-Id:Date; b=hLOA+zj80vzw6+lbU3HLX9zvowAjg70vqQUM+le2Eytna0QLrPlHMNP1cUjEj8AyNF+n/C0CIlFKLlSeVsG7YYqiSkz9kSE0VXj2PlGZBCGFgkqGvbcjWhe8//PeG7yK0ni2TlNR9yMM6yZ+sZU2RRWwsk1JUHGQYDOtTj3JbfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll1DYnGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll1DYnGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52D5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766849633;
	bh=WAE+/Av/+hSyUEBxmoqJBcaJNu/3q7IIbxavGKXkEYA=;
	h=To:Subject:From:Date:From;
	b=Ll1DYnGIjyblINZ4cXYiyBhRmyOiqYdvkgkoB06AQbhWTs+IkQCwEHLfuWdHRfuIo
	 8VZ59G7wd+ddtrxk3yqK3bWnoQR0Lbk/PQdiDPTqsIi2M53fZOis/WeWq8LrYbCeZc
	 uTidz4X+/w1j0oy9l+EdUm5D0SA5g18CBAU6j9TZ50DNvbV36BlLtqxCzs7Rv9L74W
	 NxuW0jFVjAEr6bHLGoeFn0rMbeq0mXfSfSRG+ozsH186YzdFpew/HRYdYEnEKZjLCF
	 W/AqKSMGFS0HtUDigtmJG0HpxLgTPWwa8wqn7zpWipZQynSxRx8TD2yprjSZn7LsI9
	 g0UOmL0k+iemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A9E92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684963365.18024.16639878348570485679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85416be8943e5c7221ec84f6a96bb3b1a052667f47fa5f97c1ef24896486f09
Date: Sat, 27 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766849633
