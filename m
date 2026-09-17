Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CDE4F3921
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789660834; cv=none; b=XLKyc/9orZC9cRlZ4a5wWdgc2QamS8jfRFDvI6XRBc7fQOLVRRgaUtQGqky6JwG9g6rND1VM7J8oDCJdnMN917vD/jrKp3t/y5DJX3KfDlU0a7TYUYAzsrY3t/WacPuV0F+oci5Ht4DGEoEuuvOFkTDQyyXiiJyMtcZRdE+fUB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789660834; c=relaxed/simple;
	bh=srS/mVZefDrbnt/U9wA1xk9SogE7g19WRSBuOjVIVcE=;
	h=To:Subject:From:Message-Id:Date; b=D7e7qKcPCATuhP5HH3Ixhm3pjG+uJhghaHGs5bCkpPH3FNd1zVaY1K+F95Vf8+LdhelFwtG/nGNPlmrihxZL8pDM2vfmAj9EZ+w/eSAeUaNn0Nw96+HOUF2jRvwkb29NW/HH2+Ug3XLVzq5Z8Je9bF+ui7NcFWhFF5y1i8J9hHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxYBEEgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxYBEEgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4EAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789660833;
	bh=srS/mVZefDrbnt/U9wA1xk9SogE7g19WRSBuOjVIVcE=;
	h=To:Subject:From:Date:From;
	b=HxYBEEgo87saDHIUF0Jby5NYzFhWVgn4PyYC+vvKb8ReGuoQjyksKx3iX8GSmv5mI
	 gNjtG6INWzp+6E7jrCtzTbzZFfN0FreYALlQgIODilS6NnvuheqYsevtPo3GGaFDea
	 S05WGiuapJubqxsyF9nVeqt7pPxa/krnB/5bls++R5JtlTVb4ZAiSamJSK5RqcWo3b
	 pWz77YW9C4dDR5xlI1rf3NGq2M4DrmfaVgvzeuoJQ50GIUX/BvjajzdAzI1ZEcuUx4
	 TNiakyeSQM1tq8Agu9yOh7gfYo3pPitgYjVq5vc36QdFBC37OW1ZhIBNypv+hfmI/s
	 6KNNf7WAyHoJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0262C982D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966083371.32309.9625869383562622497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5e6c3060c5cf4bda6dbb13dd2ba88c144cb2ead33402ef5ee333b2f129a6b4
Date: Thu, 17 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789660833
