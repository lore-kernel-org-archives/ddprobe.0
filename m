Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADFF242D6E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766875434; cv=none; b=LIANnle+FvhvMlz2lJZsBe1GnQ/vzOZQ9Zcj551zpc8Du7vBYeN4N27CwHWasRlpGqNAGSB9zlzjLU7ieghYRVkERFJCY0TVEcFUhuRmcQDGAjrO6Cz/BWIXhfDlqCaoWdMRc55IYeg79Dzd06jKKPsT8vIU1eN8Bt92JmE/EDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766875434; c=relaxed/simple;
	bh=hJmem1ldSXHJM8/nkDwkJJ3K9O2CMmDM666MMDsS2xA=;
	h=To:Subject:From:Message-Id:Date; b=Qewx+R+ppvmSfjcrG7q5W2xJZskKfP/BANIQcSJQMoiFSXRk/BsDlGF8WbA9CdMwye241QkV9Ge1xyWtQ80zqHzMpCuYU6dfZFi6i/OQ8XDtmQehO4Hk8GDTeayUAB9ZQyEI/keE+rQIMGzWpiBmIOwGHOpSay8CHCwnO8I1BMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zqq06qmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zqq06qmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E73C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766875433;
	bh=hJmem1ldSXHJM8/nkDwkJJ3K9O2CMmDM666MMDsS2xA=;
	h=To:Subject:From:Date:From;
	b=Zqq06qmE/301fsgFQs2TU10htzfnuVOEoLKe0hwCt1UEfRbCJMx3AW8x6gRzGWZdx
	 zxRsGqX1fPYIlxB8iTZKEShybzg88ReDDl1p12OiZyVvGA4zogyCVj59Lp27VwA3OJ
	 D2oK5d3AEgZgZk3tWF8zPYFBaRtFzVJGFtUJnp/c4JZL+9G5MrCnsDPuJx5+vC3Fsa
	 DUMw7uM0I6XPfAq1XSrQYLwGu7aDTirg7lcGNrVRZUxd5YmPWNTl+oInM7IGh4/Ymj
	 t3BurgdfGSvpIxNRgKCkdSRutMRY1qfHFg49f6OMx1huwEGZiqL+v7pWjuGhFoUlGn
	 +1cFrI25VtFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10F9E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687543361.8527.16839988098636540275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798d7d259b8a0b4f529f8e2b99dc63f470b690bc433f086cb6eff5e93f8d79d0
Date: Sat, 27 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766875433
