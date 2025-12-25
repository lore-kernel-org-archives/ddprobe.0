Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343FA1B0439
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766699034; cv=none; b=KOHLB7gP2FMU8l8MPtsUxfWAYDCIa4NlKkSukGumS1BjPjPjCBHBirhxRCkbftHSFOkU0IAg9X30IYAReyzdvywlzDYRBeHc+wbjx4jRv1gcu43FwYzE9EuXg1iVljiVzRoCPzwsbnNPSj/yqz7I2JwOndC5DE4vHFak9sQebUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766699034; c=relaxed/simple;
	bh=+U9zipQTSNsQpjOP9ripjmarTNQrn19WM8Xx5bINIM8=;
	h=To:Subject:From:Message-Id:Date; b=nyKxV/NRUyW6tKA37E/5js91sBlN+o4xPIIhUqzmspab70Y6NoW4w1TEJ2/lj9pflPM3IHtRq9M+4FJdFuA075xHxKhp3uRQIKWU7RCwh3OFxDcXLdxPUfbegtm4MR+D6EBFKzebvU8ZecnPSR/6OXv0dTlpNeYQP6mGjNel9Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+VV6P6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+VV6P6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAA7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766699033;
	bh=+U9zipQTSNsQpjOP9ripjmarTNQrn19WM8Xx5bINIM8=;
	h=To:Subject:From:Date:From;
	b=l+VV6P6jYib/8Yv+iUMkpWGCsAVoZdyJA0Wn7lfdauGmI63vzpzOBaadYX3I181ej
	 87dTZGhPMSOCgI5malg30ulcJ/xnvvtJUGbWaUVQFWuBjLmAAPqlz2KT3N8zIkTXiO
	 xP6VUt+KWfxc25Ic9KfqDQhfiB3G7JoitVVYpYTdh8XYLmTv35b3+DN98PKxFNZPga
	 Hk7sqt96OpuqJy5p6E3IpJqkleO+6x3bTMMb7QRZzAjdQWpaNRcq/52pk27iL3fcdU
	 zyrLP6lpgPDaxhFj7xztktLYOmQ35vjuv+J5IhdsOEmuTTpGfuLiyr319TZs6GTI/L
	 Ibvi4tXsyHl6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A630E7AD71
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669903359.2563.9531110091892710950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2785553efcf0fac60e31addc13a22f6bd95a870c394e1d97aabe93bc7879ba15
Date: Thu, 25 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766699033
