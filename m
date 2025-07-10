Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D792727E5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752159594; cv=none; b=LQQDkzmS9aFnToxYwHK2VkvYBcyk18LxoAv3FUD2c5OtPm5zTMpuDabIespEV4WgRYnChBfn67d0g4JsvwcQeOLu2UQrlyPkjnnQFzZe9IDUAXkakuY/aC11RameAuH+jIBrJreGwm67db/7j+yc4/H244YLl4xFZDP/3AjZ56E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752159594; c=relaxed/simple;
	bh=1OxhbRZXKuLV0VjYNJZ4W/VUQbX1mx+MkJXIV7uu8CE=;
	h=To:Subject:From:Message-Id:Date; b=fpZHFpzUeF7WE0kyrWOYlXIAfY4mS5qN6OkBgERPlu9W5VA7Bw3w0E0SFgebdD+eNPR0m5zCCI7rhXLn9YrWK3CQCIgJpjNG373QkF2GWXX2iw0cIfrnByUTQ7GxfDS4OT3LfRJSKoK95l2kjQWjZwxxsRaIhyyGBZS/TuzeW7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHQ93sUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHQ93sUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2586C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752159593;
	bh=1OxhbRZXKuLV0VjYNJZ4W/VUQbX1mx+MkJXIV7uu8CE=;
	h=To:Subject:From:Date:From;
	b=mHQ93sUyIbOBVIQckfyKtB/lF4klIVVdi/LnuixNpOunALPYGFf4s/t5S1NJSjNWt
	 kBG0yPFkGzmQUZ4hgLxRbbwYBs10Y7F/iRV7eomjGpFh5rneiL5rW5WLmYUaVxo6T5
	 AAPVhE21dcvrcSL1aLQx1zi8Qu+7O80KuqjAmugB7peoabrpIma/jbVWMoMQazbcaf
	 5XHJ8m11zpRKPujWmVD1SZNFjmPFjXOdB+z9YI8CdJLd8YTeSrheD/Tw2Z8EmUYWcj
	 oC8nrBfZYBlryYl16PcHwfx0RxPEc3PqPiWoNX++Qt3l0MZQkjzIvuKQuKjI69aabJ
	 RbNRWANSXj7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC7AC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215959363.490.13795844988979641148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40730fa2ad5fb5a334c018e586a7f06bd707fb8465c4902f45c35fdc61d4c4b
Date: Thu, 10 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752159593
