Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5809E15B14D
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715811743; cv=none; b=rguWlZJuQ9hknpc7Av8N+A9zt+iqPCd74DmuzkAYl6YeAu69ETuMvDwYhYMjXyZIZOdjkpAcs8AOPgiCuSF+Xd4a9F6XC95PbiF0vYy3bWMW458rRaNZlJP5Rws1oU2idUHB4W4o0hmz+5Co5ySI036S7siUkIm3cSIQkn/HZjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715811743; c=relaxed/simple;
	bh=gVg2ZYlFlL74PiD4Va6y9arl19zDrj6nNCPdFSBF0nc=;
	h=To:Subject:From:Message-Id:Date; b=bW8PCFiVahtJ9lEr5xWkRDYr67XCFSr2IfGWGhuqI6mU1PTbCRxowVwkO7sEEkcidGeCcLAOd/003/lQKpR6ieJM7eBJhSYL4+1qt4Vl9vjvaQEiE9kiEZpj0pch0kA/uOM+Ome4lzFmODk/lsD+W8r+5YGvXm1i2qJW5PeZqjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuHUizjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuHUizjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DD5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715811742;
	bh=gVg2ZYlFlL74PiD4Va6y9arl19zDrj6nNCPdFSBF0nc=;
	h=To:Subject:From:Date:From;
	b=HuHUizjMKviLgsZ/LWhfjAXKEP0fvY2t57lPDwwMjj1VfrH2tYsP//WyYz5w5Qvc/
	 cNUoswssM1hYRQwSrq+X3s9QRe8GcD+hm9NCNAV2EKdvIO3mVviG8QBz1jdLDZf8fq
	 TZLm3t2pEtJS3xN8vnr5ApUUu49mMFoO82pseE9D2IqQB9MQ5hkq6em77z7LxhEyEa
	 zEnUMGqSKAufkk8GjcuUeaunmWCiUa5ey9iFi8VWlvxRouhRL1FE9r2kB4F5gqGAsh
	 5SO/QzydWsp3zDvk0lXig2/volMVrY2B2+ZoI7+YFSttV8GyyavkQrEdWW1ffomiRF
	 c8YQDBaiDoeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF4DC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171581174277.28834.16796977514349728077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86e313f3089e9d56acb0dc22b2c4b768af8e79aabfd3e0b81e888eefa415e05
Date: Wed, 15 May 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715811742
