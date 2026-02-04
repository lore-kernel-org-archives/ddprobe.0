Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47D3EBF18
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770167034; cv=none; b=Z1r6g+DvuSyS9m7ctQT2jHvanGeR8PX4mkTMltVCT6ZVOuw9CPoS6aZJkGU1xS4e9IW25osGJcZis1orD4qukdjHwQETO34jUisIevs0tHVr/Pxrs78/nG3Y9GxUHuVKWc6/OS3bbEY7UwMQbsjNmqivB8gjS+vbXrEbBNYFEos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770167034; c=relaxed/simple;
	bh=s1QMBhM2ZrtCryf7P7iqMjlA2UqwsZaC0axmAzifK1c=;
	h=To:Subject:From:Message-Id:Date; b=eDKAAaF9RS9KisptvboNp8APJmQqFtIN/a0F5WTwAcBAa97TqcbgnHfvkyt0d4Q92N9Y7buHDiKF0OIy7f84+QZ6S0XKDE+Ppuu+K1nK+fUGqeUnRnEd1C1/t+pGteyFDYRGr6jhN2/eliZM2t/tS3J/7aSN5moHPSwJKstkOlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7JtX8q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7JtX8q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8008C19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770167033;
	bh=s1QMBhM2ZrtCryf7P7iqMjlA2UqwsZaC0axmAzifK1c=;
	h=To:Subject:From:Date:From;
	b=o7JtX8q2+rjPJdELm/w197WxpNBc3pTmB/yy7zYrUpxaJEtU8yQeFZ6y7Jf8kZ9eA
	 K7BnflPqFhnqkZ4WKH+QXBKgUU72wCnkP1fh1vzuESMvMo6G8d9YyKbSOj0HRikF6A
	 h2Th8NhjABfS33XZgON0GdjQYhzrLoych8zdaEt6du30caaqQ8cEfD3Z91R6axLrNo
	 bml/g3Vr7wf2MmaPqGGwY06fYdg6uJmAsH3CJ/vT9JjIB1+HX1yklP5m+ZQJPDlkhz
	 mVg/5awQNKz4gtoO0mBJ3acFz3K0YdemjwhfVvVusIwNQRZrf4qezEJDt7ETFiNm2O
	 wquyzE4vJ5trg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A55E8B386
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016703359.8430.13609496479002740851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573017da7fb30697d39c7641e03062ae4fb39e0ca7b2fb44edd996ca682a97e6
Date: Wed, 04 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770167033
