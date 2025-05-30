Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A78C9475
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748568594; cv=none; b=H8Lz+w/5gfgvtOUkR4APCkS4DzxNtrySe9/q9muYEoxuEoFSqwhoL/nGvieR5lTV9Nemp+PItaFIspGuL1hu4PzrlELmFOPbI+xnAPgXeyzfC8Lka+uMl5UJN/b6yy6U3bsKWTDSGpGmVHtEOxKHSVvDzqSQOAmv3eWunKwACGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748568594; c=relaxed/simple;
	bh=En14G8nqIpanNwkqKotLYkUe2ol1UWu/hPyDpXgtKjQ=;
	h=To:Subject:From:Message-Id:Date; b=G/9mQ8JLEmflAOY1nxo2xQ1gk+auTInn4UOXL9GMxPf3yvYlX0BPys2WhHNljspgzCQnvLmjt3XWJGN3UCwGDk5Y8VR8NlpWtKDSDeiK2YwADQY85uFXExoeJsXWsC0TdEFPKQsiHNbA/wlOT4X3wu5HKYctP0LAM+aV1T6FKek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL7sXKYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL7sXKYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB66C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748568593;
	bh=En14G8nqIpanNwkqKotLYkUe2ol1UWu/hPyDpXgtKjQ=;
	h=To:Subject:From:Date:From;
	b=XL7sXKYxa0wWXV7gXr0bOG5MemCSp4q8o9v3zFUacZHtkcRj06oGKVQKEC+OU+vdJ
	 /5PwLkpRvg/IhmS63uU575QSAoIvzrQjSNbeoUg+i/ZusJo4Ew63rQhYsY9/N0DHla
	 g7/tHxjtxH8Z1y7ACuT/n0Kdm5Vh1W0U/haiENc+j3sBu/fYGYlsT8MW2Hv+yjW+Bn
	 xG0/GuaW2J4iaK6euGZO/t39nM77Sd7y+hGQ9N68HyZ5g1zmfBtepIadp8mJKe9rqi
	 9k7MtOmYMjLl/Ys593uFee8+r/qY+XPrsKW7aB5TJtbw2XZJw2yGezGWpYAOyCfZCl
	 1nd4Fxi2oVd4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9661AC54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856859358.4311.4507947136627198438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6a1b0f63eb9fc545d408606de7e697c95644c9bdfeb8611eeb000ae34db937
Date: Fri, 30 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748568593
