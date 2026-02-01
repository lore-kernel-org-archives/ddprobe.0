Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF393246EB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769947434; cv=none; b=tOVC9XpGrezUaWhtcRRQHbhsTFDnH3FZt5mjOSxEP2P7+JvXY9hKYT2BjkCr8EBaxrjt+8a8LNKJ8OVmsAMaP7KC7W5P4x2i1nLmPSTnaNk6msFFoPZ6iWVTWQwkoF6DXMSWQRHcIubONgzBhdY2aAJHHTqvsbs/OfkoWIN3NNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769947434; c=relaxed/simple;
	bh=MbJUXWtTQxoQ9FT2VfeEdnTwpQq9u1sYGVB7wXhuuDk=;
	h=To:Subject:From:Message-Id:Date; b=rhl640CzRCiY8kB80WebJ1hZAFp1iAjCQ1MzNcrF/mDIuYNZeOq/jMsGjVKRFobferQWi04zLKnrcNGdmTGsmqFC2qomVF26ZR5DJ2eUv7zSZ7hftw7Vmqd/0UUFk3U9ese8vVnQI9/YwFMNQ25Wdl4ltK4Tog7aklFp4RgbGw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbNB+s1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbNB+s1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F33C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769947433;
	bh=MbJUXWtTQxoQ9FT2VfeEdnTwpQq9u1sYGVB7wXhuuDk=;
	h=To:Subject:From:Date:From;
	b=fbNB+s1UX/ITY7Qt8rSPl/M1W0RRjwl2VIh4GXh5CaMa6Brci4F/Yr0N60yLhpwwf
	 Z2+c5BHCnaAqJ4UwrjZ3h8TYohWBHqzQCWwFo0skcpe79Q+bPT1fFRt6afoy74e9LE
	 Dz02HN7aGGGT4iplck3Dx2jwIuLmQfCu4mIH52tjl+izBtovwmCy8GAtW/JQCEX7qZ
	 CZLvdskJ3mkxkSN2i9Y+9X/Z6c8QzlF7BGNTbRFOQ27VvuZt415N1TdQTLUbQwcQxf
	 ysygG3vqCmUhDQcebY9eqtza/6shBOwCY4QbR44HGDDvnZB+TEpTFKikd2sOojxPkk
	 +W+qnz4ceZtMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966F3E7C71B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994743358.1409.852971469621785939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17335c671fda42ae052ecd39dd44b072d99d73054ab90cc9d6e7b1ff9ce857ed
Date: Sun, 01 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769947433
