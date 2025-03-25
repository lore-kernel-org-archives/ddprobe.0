Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396621A238D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742917195; cv=none; b=PGSU5Occ3XVMTKlKPZHBrA54HiYws2dfxaWXcP6j/6FRquAK0EDRBkfWXq/XONLBp4W20qOx1i1gS0FyhcSM1yUj5p9rSvxtxZSj/mTd6sx7uLn7QN/+Zwc9RLyA9O9JHP3ewFWORmsSLTs+xKJgDd9Zy4YWsAdiJsyfi6e0PRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742917195; c=relaxed/simple;
	bh=Y3uG5DrkSVyjq1Sq4Yqn/FUketdtlS66M0w5txHmTB8=;
	h=To:Subject:From:Message-Id:Date; b=m8QCzscTFudBvg5p6x82jKMFAxrScFQVmmRcNOiLmJgSNk0di99B6gIjiUmlLyJRQrT7Q9ltYQfXIUp3i1dVFbkbIkiJ3hoxMui30CL4F7uK6ARDUndh+N85MQD1daTNkyLDxIsXHfjjqXd5+9o7KY2zoGlXb/osPBMvNcKjjt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck7qU7fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck7qU7fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61E3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742917193;
	bh=Y3uG5DrkSVyjq1Sq4Yqn/FUketdtlS66M0w5txHmTB8=;
	h=To:Subject:From:Date:From;
	b=Ck7qU7fIutkz9na9nQQOJjbGLzDu9Dxb7HX2soczzApzClw6z5ws8Fi2p6swlJ1xn
	 WdpwVQJyrCaAWdzbZuuBjP3Ng4pRBs085Yy2hBT+/MYO/t2cpCMmwGKmlImrYSpT9V
	 UyfjPuGkt2n5/QK3+Py07+uMcu87nRqDVWM/RuExNoiJCnEGNNh60DUYrBzpDJwGMh
	 Mr1gxhlK++RStjRcYi6YGXifYuuuSJFcUfezT1MOJ6sJgLXBWt6rlfkHR/ZoWqWmnS
	 OQXKUq+wI53rHy2oVOyisxx+jT4xdbuvcAHvnpyFrdiYG7+9O/y3kSlQqywRMzJHyG
	 4iydgiA7NGsQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4557C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291719365.25603.3107473458148890619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c822e57f944decc46f71f26dc9768d49303791c99cba03e6d375cc0a3de89e
Date: Tue, 25 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742917193
