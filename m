Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706B04E9C02
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790782835; cv=none; b=W3OFMuO0hHCiri9UOiRVPWNpX2jlh7u4yCEKp/JDuXfo3OIbF+yIFPFg+nOTXVZ0mDTwDIwriuURjTzN5t8CmStIQNjvFCGEUu6RKEau22+U+NvWGM2zjtfr3ZCyQVcgZnIYcZbZgBc/Qn3rISenARThtF/SqZOEff+RwrtzUAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790782835; c=relaxed/simple;
	bh=SKy5guIvOdZRnFE5Takj35xQv7IcaAtc/sbhEp3lthw=;
	h=To:Subject:From:Message-Id:Date; b=QnJ0Wu3BnoUTykX8ArTS8qS9w1XmeWOeP/7LR2x3yXBna9T79jOgvbUcC9LzGx21LZdIv7KycPDn8NLdxVfFuIlixDlSBQ180E9AGSLLN0ANQjg18ryAaUoScXHwSoyT5kMq9K3IqkNSpcAP1GpsHDvrJDJBe+LvpPXBb7w7qv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyKH6cLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyKH6cLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED82C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790782833;
	bh=SKy5guIvOdZRnFE5Takj35xQv7IcaAtc/sbhEp3lthw=;
	h=To:Subject:From:Date:From;
	b=eyKH6cLiV0GmFtmB3CyvtTW1rZvCWhf0WfeW3O4bCr6jpJQfNT1SsQ9eev5Ob5IRc
	 SZJ50uOnA9Vviyflovr1awmfTXxqvd/nNpkOd4IPxmh+Lnj6LBsL0ukrVhktqxtAkh
	 gxeLpYVDv3GhBn9I9xEZi4tprX33kP9ea/GRpQOjlBj88lKbNJ5f93mxsVKr9JqlwU
	 YopMBiLDE6CUvTK59qj5K4H4cpMFAnwJpaTAMKH4z0vA5M33bbajcS6dUSSBFeQb9J
	 55BRZQepz3SXQyOAzcYsa56gr7suJvdt5rh0U/6YyRr9MbV3kdomsiWdoHc9nXZ9gY
	 08gChNG622Ydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB583CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078283369.22701.11952597513640976365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324898c07dd398f6097d74e37444e91519f41087c1d37978d80776a37d6045e4
Date: Wed, 30 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790782833
