Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECA03EEAEF
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792036234; cv=none; b=tzAoHrpzeTtwe6+fyv1104I75GPXFdgdHvJUdk1CLlJWgssPok2AZOGdnVkJO7hqr2inUtlGlH5jVIdLkE6folYjY3Ycu8iLqGoZlNVaf+vsgBvUSMQ8hgLr7PPYOuSJt9T3p7mbCwFZdOcQEfx4YE/ZZnSPPTS3Yfnb3pkFm4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792036234; c=relaxed/simple;
	bh=d5bfn4ui/vJAC+4iOXMz6Mq3y+shdfWo8Yeqi2x+/zg=;
	h=To:Subject:From:Message-Id:Date; b=kmaHy7rQ/d7dQyIXx4GKMDFZSsC7A6dp03Xs1TBXb41/+VsvWylyzvM1/AC8JgPLsPnvk9c2bqMvg4VWTUyAwz8shnZUOd7RdISy4OjeHBZsreJdNa2KR/5KdzeVv7P89zDR18wOJgTIUUYm8CLaCN0285XO8oJ7aOHpc/qcFPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzbuDfmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzbuDfmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8AFC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792036233;
	bh=d5bfn4ui/vJAC+4iOXMz6Mq3y+shdfWo8Yeqi2x+/zg=;
	h=To:Subject:From:Date:From;
	b=AzbuDfmALyQGJIBOSjgcJWDamjibQYADTn2o1t7Nprz4rw4zAecvmbmjkTAIHCUDN
	 a4q6/BjrkOmzVY3P7IuK3+P0ytwfff73ByB5QZZtuauFc5c+8gSZImzByXs5EGDMzn
	 X6BY2THOfIQee1thXs5FFszw2D2l/ew9Gdj2+Qi4V0EhxtYOCRXt9XOw+OCxJFcZY5
	 E9rYKcCAZsoHLDpjXmb+QZMfnaSDb2hn0fDkWiu8zuDmCLF7DhZNAo0rHbF6LaRgcE
	 DMbNydctlWp56mp+/AGPlfWMhZlbyxICtffLgSdMa9Es/rzeWpyKNdLXxod/AVnUu2
	 anhmyh0f6jp4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70BBCC6B1C
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203623373.8553.7504574794454610853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab8175b92f6330eb7f2ace49adae8816feb77d80a60d489b47736b7cbed4e40
Date: Thu, 15 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792036233
