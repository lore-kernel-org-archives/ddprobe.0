Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E44D25B0BB
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789451434; cv=none; b=dY0aeL5uibMlNG/ARmMHWX/Kmsw9hJOnfG0awlxDZcZc0jzsJMFZVcWP8snretcMfnDo0J9vz+3RpzJjmHmI+7arz7jRE4Y4Jkq1KqTM+JB5T0ELxOPEkU3J7ny/Z8RZO8oyISsnRSh83QErxUBURREMiOdZQ+X2fBkCUTXXEhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789451434; c=relaxed/simple;
	bh=5Sr0E4+B79Dx0ANBU3qKbqobLVBTjDwmYbOIt+WR+dA=;
	h=To:Subject:From:Message-Id:Date; b=XyxmCIse+Alw+nqJSu2ZDDY2uO1iQQnvOVAM7UqAbYi9yOPrSOacUpq8/QtQVH89d6SY+Sqe3aBwpNQ9rFUIWHmssntjF1MursbPi3BrIRKrcAKQvFsdHaGQkaOUgDZY3KQ21uFjG+qT8OFS0yQ1UCRLou1gPh0RXa1QSBdIGsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ur7R4MU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ur7R4MU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD46AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789451433;
	bh=5Sr0E4+B79Dx0ANBU3qKbqobLVBTjDwmYbOIt+WR+dA=;
	h=To:Subject:From:Date:From;
	b=Ur7R4MU246+39mJCVlKaTLkCCFL4UWSqIZlebkch0pHvc/iAbgIFl2GnKhW+5Vsz3
	 AocE4CMvEiC3DQ8ekBR/5Jy/20Q9uiYEY+kZj+f9MhmRrGzgLEMwfvQHJcCHQ4pFlh
	 hvkE6guoYlPS6Q56GlebNi3U8XP0eSF4mefX2TWFOQINcN9ZTvnH5cUjCNU6+hj0Yi
	 IcoKX7v51eWSawdsqFQ1lDWoyx7C75HEB5pdO9OVTN/XuC2rKGMFWWcb3B8vVSKg/g
	 CaQx5H5t3jR+8X13LgK/qscsV1ZD6OeE9kjc9hreMZNfTlNpKOtA+HhKy9IS/qSn/W
	 7JysVOwyEUthg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFBC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945143368.1160.13966082951422837777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a813660337725f7dc1bad450e9d385c0d3cb9b1f2a7701041a383a7bc953b5e0
Date: Tue, 15 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789451433
