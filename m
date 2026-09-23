Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CAA23D2A1
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790138434; cv=none; b=sYd5PcwhJt+H5pA37BtC/Bg8jng7Heig7sEoBpoasvxrxd5rRSXHOykDtV7ov/JufnVS3GniXW35bkJplfHaR+k9FZBuTuQTj/neSWtTQEDaqKsGbmrz8ArEkIgHv43gW1H+X15mjnu5V0P9YrlSoeQn6dZHno/+YTjvjw/YAkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790138434; c=relaxed/simple;
	bh=bIgzlkBZFyhR0UQyXOglfH7gqEzRBU1Zyx1D83LLFQc=;
	h=To:Subject:From:Message-Id:Date; b=RTK3JErD29GRxvBSL/S65VM6KcYHmi2AW2Lprm/3HlEOXxeGnDN+jtaf1ZbKNkF/FAWIsWApvIq8a2pjwBwCZwi+vW0kHuLwYpK38rhOO9fK8QuwoudpAEKdwS4+Wj2YGKP2g+zCoG18IuIqNaeMe9Y5Udd+E2akrzm4qrWhSTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1WeWfkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1WeWfkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07539C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790138434;
	bh=bIgzlkBZFyhR0UQyXOglfH7gqEzRBU1Zyx1D83LLFQc=;
	h=To:Subject:From:Date:From;
	b=o1WeWfklKWyP+whpKolIp+CAveIqktIq7zYe9SyZmdQVczYhWGNtEdzDM3uEg5QBQ
	 Xs2rQf4G2VDcWtYx+4irXqHtd+BTrHI9m1knue+BS+4UQJJLp4WJwU3p3f464KojbS
	 nnguToPeG88kjvhbHTd9eTHdfW5MgwAVDJhxxVxBrxuWBqGW0ZIS9HerspG0U1S7+Q
	 5srNfY8CQW7pM77+l4BTjqAms78/DpbaRtHPrCJFwXRiRK53QiB4EVtie2RO2jade+
	 ZH59jHcs5L0am5bZEGZhVhGky2i1AEYupYApWxmXgI9Gako2YyPuzYodWEAd5pNt01
	 P8V8OZVRMFiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3CD3C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013843385.10902.906643835620221976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a98db31d4ef37ecf57d6c40f1ee50dd5c71df8ef3540a4e2f49b92ab7f92803
Date: Wed, 23 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790138433
