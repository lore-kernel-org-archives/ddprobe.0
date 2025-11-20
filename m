Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCBE3446C2
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763646714; cv=none; b=GzTTwtXbHlxsncPiXuaa9gipo67EhdB/2Eyc5ftKcZ7PzBsjpQaSTaipFcvVVEt0we9spTFksIG6iCGKQNAY8P0y7sXfWQP56xJFYt8lT1MUM16QGAGJAFnRX4O0JOOCf1geroPEUZKN4+rs8irnHCiv0/OEXATBAhIHbsCeOzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763646714; c=relaxed/simple;
	bh=+bpGx1NCNnuhXN3A2KRfwLlnEGcS6AQnEduEW5+9S0M=;
	h=To:Subject:From:Message-Id:Date; b=BoK5fDDw0W4iC3Q/KIgyY2pMXdIHlFTW12Mj+fBMtmfry1E61dj8IYVR2CjHAjE1Q6cthhU4kBbLnzR36YgBostEbBDwHCeTYllKlKDMDWzdxNiVvYmb5Z+dzKtiJM3SYw4T6TI83hCimb5tslLVehW6YeNMemF6QqzzhDwZKI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNAfnzbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNAfnzbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0B8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763646713;
	bh=+bpGx1NCNnuhXN3A2KRfwLlnEGcS6AQnEduEW5+9S0M=;
	h=To:Subject:From:Date:From;
	b=XNAfnzbmwmuXh+IwU9R6Vh7NcNXvUG0MobwMQr77IDHGY8UBgHvA8VxWnRm0mT6Qm
	 z29TJF6ufrZxK4prsPF4xKdNRlxoGj7BDEVyecCefnccmkjGe8PY7Kofme8UVoQBLI
	 U4dmaph5DN0cGIO/NfHIYZOcu8nZC2ccXB7Jc8VLwd/8/4tBp9hq+WanX8/k+WzwZw
	 GwcReP514Nnzv/UQ4HinJBGv+YR9QHaHTit7saPrJV3t7wRa690ZCLtldejDIgdej4
	 IlxdLQDwpPPZesPYa6CFlVD8XSQIUwYl5XVwaS9PyNMs9kTYIxg7TFKZ/E5Q8Dzd7Y
	 iDjXrBWFpfQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B43ACF885A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364671359.2531.14011217980995969385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5ba2388a445efbfe8d2c24656efd47c42d2518f68c6af3d17ec10ec94315a5
Date: Thu, 20 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763646713
