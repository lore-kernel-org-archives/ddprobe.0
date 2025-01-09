Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BC1282FA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736391354; cv=none; b=lOJ2cggMsYA70YHaLKi5Jatv2iYTlk8SryOyBdZFc0p53FVnbl8YmX0gM/zGUUQIzApmQSL1zCJzohbUzc6YYivTKa1UtUsTeNGxbRx6mqwfUP1J+BnRmOqDdy3gdW1Huk5pzu7cRd5FI5ewZSX965lG5eLplqhsYEmbKLoV2CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736391354; c=relaxed/simple;
	bh=n0iF7gA28QmilQ/jnySNjR1EAWA8wfutZAt5bQiaPyE=;
	h=To:Subject:From:Message-Id:Date; b=paZYJwInc7HmyUVzAMKD078NXtAoE3O6985qw1RnxNeoYZE2Y2fNkfcLhft7mpM7MITlSocHP1DFlF2A1Kqi1eXG35TuonzN6busyj5AcATCs4VbBHT4NTT9rFFA7ayuqv9pzbftNOwFgmi81m8H6QyhWC8p8plx+7kQPea9xCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5jEgCda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5jEgCda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EB9C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736391353;
	bh=n0iF7gA28QmilQ/jnySNjR1EAWA8wfutZAt5bQiaPyE=;
	h=To:Subject:From:Date:From;
	b=J5jEgCdaBiMX48uKSuUWwzYT5vu+ZhYA6aEZ6Cr05o7hfAcYjuA/sq7Z0WZIOx0vJ
	 UIpm3bbn0F1GM43wMtiiMJg5HOtbl1d38l63HtAPSppBUgCaAPIUGG4RRd8N9EN+sl
	 vWrAY3iuVxR+1ioQG8MzEGME9RpExKEnsrGqMGYngtR43Yabz1N8rPLrrra2KnEo1u
	 m6i2qLBEpnp6O5zn1oMh6Fsx7rT2QLOsVpPSlMrS+Fh3iyVaY5hdYedXW6w5W0U/d4
	 XdCD1Z/y69MqdKHUcTm06IXnrB5e9lmgbaMM61bPh0zh7qb4fJ8zCSyiZ8sS8J1xZv
	 RpgJHa0W/tz9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94690E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639135359.17691.2180390128767638082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4b7f2f86846b772c0cacb13ab4041420913bf374eb7bea8187834b7b89c464
Date: Thu, 09 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736391353
