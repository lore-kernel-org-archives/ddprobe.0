Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492AC1A6810
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781546794; cv=none; b=lEwx4IK6mYnwUVdwaqpAPs1OzrUFSmKglPGkYGAZ+KbbCXxPjOoAcbrcTy6fCL9OrjZ++Vod12x1lq/Et9goV01tfNS3L99locm94dC3as4XyE3f1Y+70HQu9oW7FaXdv7NAsBTbwmWhY69lWTes+wFqEQ2qhU8YfFhCK+wi1aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781546794; c=relaxed/simple;
	bh=mNNNCtyHa/s/GSJNS2f+okQ4baHEOVA5CUWgQ6l7s5k=;
	h=To:Subject:From:Message-Id:Date; b=kBHaH6d2tVZ8U1swbEX2fThETvL8DHldhPPoLoOvrAMJhSbFqKCpkjrlSEo8ETEpaOAE99MgJwlDmvFCBjKrZgXm8fpCYf7wZdF3I41TfKowzc874UixTDGJESp43IlUUaUVtYGWH0xr5BiOXzBi4+jqfHfb67h7v+fn3souwwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/oS+8vK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/oS+8vK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E239CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781546793;
	bh=mNNNCtyHa/s/GSJNS2f+okQ4baHEOVA5CUWgQ6l7s5k=;
	h=To:Subject:From:Date:From;
	b=I/oS+8vKzAo4hgQZrPZtR2N9tgfRlFQBPi50Ip+T4jGunSonDhTifevjDBk79hxbJ
	 5vrkbAcnsRpSzuO8RnPEpa7xzoOSpgp/at7TzyHr6Ds21NxyDmaE5j4SNveqJ8CzmM
	 NJOMYixzQgK3l/eWqKdIv9LN3+sWq0LCELyqfldUtNSgcsKPidrsuYjdA3l8kRYeqW
	 R6m81hu3XDwBckVxQgcYxWIUazHpkxV64JIjJdM4Ps5b1ADPnT4RGB5wOkhc6Nquz2
	 8uMxKWSgz3Epq/V8OUSVS9wgWWsXnMWT2Uh9CRJf+IMSrwPQpsmxTLg5lP+88M2uqN
	 So9wpa7h5ssdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD02DCD98E1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154679375.19820.12727943970745856836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346cce646ac4f5af1803d16a61fa6462a98abc879f36d05a4964f07b70e21190
Date: Mon, 15 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781546793
