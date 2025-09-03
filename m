Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B932F744
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756879195; cv=none; b=Y9LOdiIISdEfmX18NQAZhTSM78A7DEgb5groU01rMywjWdsgac0wPJwP5hTuG52iLKxMN9U6auEXOoV6IzQsbCY63T0OPNV9j2aM38QKhWvhkYjF0wDU8huMGFVip3oYRZHzDQsLHJF5BbII/0o0D4Ll8ZLxFTsXb6+AHBMYps0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756879195; c=relaxed/simple;
	bh=zR9g5ci621J8Nan2qeA4Bi288g409022Pu/Jjng3/Dw=;
	h=To:Subject:From:Message-Id:Date; b=Oh4VuCDF+uqAkG8ErSsX3/Ap32Jv6ONx+nKKfp6j+HkGQ210RvF8I43gXdevVXtMX2oXH3c/slTnmGvewTE7kU4jwrKq768JyNbH9/vzFp+zupYb7to9j0lBawfDQXA56AlCGi0+xQt3cWluoODWO+mSO5pBn6wZp4TSTWXa2co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXrBX8ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXrBX8ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBF4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756879193;
	bh=zR9g5ci621J8Nan2qeA4Bi288g409022Pu/Jjng3/Dw=;
	h=To:Subject:From:Date:From;
	b=NXrBX8agcOws+UtWcPYdq4aGKzKO2pUcMIPVtA5xo//wZ+bsieVYihjjs/HwIDJAl
	 I7uBq+ip60PUAk68QcvP6kxLGijSWUNIynaGRekhCWfeW7NHGvYuidWYK5qi2iZtm6
	 jhgUtsa7du7qpy3vbyzvCgkB/qH3IrC6tH799GdGIaxPTqYQTi4+trF189GH3lw1Bp
	 dTdHZMIjs6jeVoH5Uw7Q3i7FicJAR0TtRIErtHzAT2S5BCG7PDUNqxbZjpEyBTJcPa
	 MrH8ZzRWm4hVYyxDNww8epnvuJQrY52QS0gMOGxGDwGrH64BeY1mDAmU7Umlzq5MrU
	 7ar2qajth1JhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FDCCA100B
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687919359.30503.3310046174174590877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe40f0610652ddd2ad3570981feddcda310291b5c3ffc4b69a8b7376262d0ba7
Date: Wed, 03 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756879193
