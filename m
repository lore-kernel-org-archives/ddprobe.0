Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1885715B984
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736321754; cv=none; b=lBZhZVvfFUd/rWl2JH0kLBGcWcD0qr/2XQcNmeu/h8v43iF5lkBcX72HGdICKa+OTvt7R2LIDtGhZrvCY3aHChvseSuH70qRnWGBYNB2hgd6PqToptRm3GvT2yJ3Ya7Q/HgejjFA/5kyeFbv2HDvYdas2FkJqAvTi/joGkaKJQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736321754; c=relaxed/simple;
	bh=F7RGRfzM1wWXWEoXJZOslKV1ytBCx14/2LCR7lZeba4=;
	h=To:Subject:From:Message-Id:Date; b=iTsnwJDFl+Udml9AeEJasCejROGaydfJAdUSxhRU14tRxeWaD6Fveg8NvvFbm26V+hEErcII11A08ILA10jNvwDRN5RgiINhYUt8/GaeibNpCo2rrB+UJYmYOGCyifVNfUWrETld2JcKY42K2IXDpv9GyKU14PI19xMlhzC4ltM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwToeVs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwToeVs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834BC4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736321753;
	bh=F7RGRfzM1wWXWEoXJZOslKV1ytBCx14/2LCR7lZeba4=;
	h=To:Subject:From:Date:From;
	b=QwToeVs3zQTTHSH5IixtSbi9uqT8NayQKHDnqD8NUFlghPi7gT6qTLux+CySE+l2U
	 I7tdd6AI4PqcZJuYMGNAurtoO6Fty4dKH41jvLvud5nD2cGR5IOyjkd6/nQsTqSpUa
	 GswOwojySKN1HyK0kobyPXPPxrw5uFYXApFwtuiKhQOhFv3tPkREZrU4kIzYiMN4Uq
	 B+7sV593gwof9CcP0P3qn3qH/BuGbHCCicwBFmwfIC4tnEJlyCMlR5MoJ6IQo6Sg0n
	 M8Rrv5iIt/R0Fv5TsvCqvSeSxPFUNJwmiA4s00Po5bBfHJepXhOkdZH3H1dqM6pCHa
	 H0WN2zs3cmkuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986B0E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632175361.19162.2587070113481277969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645909446087648cdacd13f0a9d4ca517f3cc951187488e266e70e4e39b62312
Date: Wed, 08 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736321753
