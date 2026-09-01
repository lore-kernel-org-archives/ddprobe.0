Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EF33BD63C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788273634; cv=none; b=H49VQMCxUgkQTV4RugBBSmtvBQDjZPrb8CUlohfr58vR0RwmI6eSwkyU3JOWSgxd0WDkgMOWCRxxJvJh3dsGvE6mDSPY4JkhOuJJieaY8ChlSyjc6kJqYps+rC/TvXqqnFPwe/N3m7YofCJU7sO1pqopz8ukBTBwDb2a2skJ3BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788273634; c=relaxed/simple;
	bh=NUYeCwlZwOenbojH64sSUrxEslM53RGnvAK9nGWQaok=;
	h=To:Subject:From:Message-Id:Date; b=HX3xtj8brLxr3y6ZGQW84g60l4zxANMssoRizO174ip2c61Gu28bFDd+Xfnhqg7o+lnVUDPz+sy3Ao3BQh0DawybA1nluSaquYFGiTTJLlRglyoj7CgRlKflR/Jo+UTkQHWV6TevMfo0VxnYG2m00eIH/3OnkoflvIlcxAMRN7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXuhMpFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXuhMpFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF44EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788273633;
	bh=NUYeCwlZwOenbojH64sSUrxEslM53RGnvAK9nGWQaok=;
	h=To:Subject:From:Date:From;
	b=EXuhMpFJhFJOf8wuZSc4TloHSIxtM0qzrB7d0qvST97h9lR6Uks7gUT2+7ywlOfhn
	 hZAPMaAyAKetZJOBdF22PVyN9RmE0j6x9lNhsNstSjHChivHq2Keq9QZ3IO7GBUUeO
	 6BkFesuvDK3joB3C7wg14prCSOy/bC8mm/eokdvEXKKVba6OQlKdyuOXguaGUkF2pn
	 yC1WIN8LN5Q0RNR5XkkfqshhiwGtwGFXmaINduccyXdy8iOnrHdoGIE3F51+jT0gD9
	 dQcUJA2/+PKaTLT4cnucrAEyImfaCeQ9rpAQmLzICHPPJNzH4ns8KrKE67IIrfNWtK
	 d1FpZP0pPl/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB963C624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827363369.1922.10552410455435750404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08eb523b301a0e32ead89d73c01b159a1e15715f21d34d77b96c903a16d4b462
Date: Tue, 01 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788273633
