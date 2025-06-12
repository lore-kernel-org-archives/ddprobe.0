Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2834422F772
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749732594; cv=none; b=MxtvmPav38bi/vVmSWqaCi5F7CtV4KNlTnGEQL3UsgxkU2xvB1djEoMcafwJ6J/0s6Q/fY+RALp4kiL1V7rDkDR5zMwqW2+dIOrYIglZXr1UlUySQBlG/0paMgf7ZortLEovsTsnGxQJHf9x5ygDYZzKNrJhH0jFUeiKXdYfw1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749732594; c=relaxed/simple;
	bh=+vaNzWAZZMZgx5Es8ExiaFzjY9yiJjQRJfTuWg63fSU=;
	h=To:Subject:From:Message-Id:Date; b=Odc4u0KWnyV9pF1EAbV6zmB+HOgDWSTiB0BwvxPF6CfeghXXgZMthEFbOKByNmUG4f2qp41whBoXCHhdt5UvW8X3amRvD5JV1ZXd7GoqeJ4FN6Hv9L9A5LlQyEn9ES6+skk6A6GqKxFOIjeBXWyG9/v2j5b1xX+qCTG4w1HITSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovDH18pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovDH18pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3753C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749732593;
	bh=+vaNzWAZZMZgx5Es8ExiaFzjY9yiJjQRJfTuWg63fSU=;
	h=To:Subject:From:Date:From;
	b=ovDH18pFYPBHJHCeeYuFHzihGiVKvnvpIrg+EmEaKlOq6E4PMeuuezbRIACX3+8dp
	 wzUbfS4Piege2zynkAHDdHpzV0sGkxNt9y26B6XHCa48NvioLfSbYPQOWXxgN/LtDU
	 JV+s/Oh58B23IXSkyvKW9Pvi10sSqwiXAEolko5aPOQ1gVBEeITrK30Ukib+BnckD4
	 gO8bYjs4Zr6nl9MzSUSGEm7U20wrmQMOq5FetVfK77tS9+Dx+nMzYr6gaaWQQwAeYl
	 IiCwxlW38kln/uacm7O4TOvySLrPQ+LARylOl4W0hAKwL5ypNtH5Sp6Ffvkw/+zj4y
	 BvlYrISpar2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90453C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973259358.16601.17136980682772706305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb4e3ad9a02490d9b06ad62e4024aeea30f89d465f3c043c04b6dc1ec2a6989
Date: Thu, 12 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749732593
