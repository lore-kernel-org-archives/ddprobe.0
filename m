Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477FB3438B6
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779250834; cv=none; b=JcrUtgExmfMz8LTtIdwIghqUHWAODi2kQtreFxaBW9IHnwUG4BjHMZHfUO1kI+3wHLiV1pICYYk6u7jLM8cCmu9ZbzZaFlq15jphjnFoxiUeI9k0ed61R+UtR/RKRGPnRgP/bo9kXnu9/KOlx2tGUaa7p4crW4TlPR5sLvisjY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779250834; c=relaxed/simple;
	bh=lrDA7JvTVJtay0xwIT2qXdwZaOzqkWd6MmHMD+2/i20=;
	h=To:Subject:From:Message-Id:Date; b=KFFq740sbKQGBTtDDzBsq1TLzz1ba5P07w7PiyZ8DPLugXlh6MuNuz9VdBUy7tx7ewjD64HTgMAkxwFn/DOYUdfJqIF7Z/Gpf2L8VsXp9CEqkm3ag37RtkcsR93X+CKKEnEHYyIUljirdAYWjpKjki6DnH4eg0AC7M3s9PyfjQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fw1gu5An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fw1gu5An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54DFC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779250833;
	bh=lrDA7JvTVJtay0xwIT2qXdwZaOzqkWd6MmHMD+2/i20=;
	h=To:Subject:From:Date:From;
	b=Fw1gu5An6zsDr/oMm/J04Cgjp11uGZJ05GHt5fmZhOUthnj/svXtviEZtNGGVK1RI
	 DO6v4nRZfCjOw96uMKk1aw/zzcP5bQXxgHkDJWrk/HdkkYMFOg1YlMN6XrbtYZdOsf
	 GNKt4S2NCmTMq3CHmwDAw7Q5MkT/efqY7AJpx2S+Wb7S1WlXh/X6oSwhc4fFHRMmZf
	 71PZyZgklIjmcfv+apCEkDp+uD+HdWqzOOnayFJ3jyIHOxo2hb+z8rzn3KuQV9ClV/
	 oq13Byq0EnoGfxFf85vyDDug7bB2i8Nik14dcI6zC2DCLt1RQ0I04SeaqjpClBb50O
	 K3Dhdndp2f84g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5852CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925083372.12790.8356221663361304662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95192504bc6cfaedf5a51783d962b1005c98e0542eb3785fd81efd30fa24dc52
Date: Wed, 20 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779250833
