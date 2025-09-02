Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3302A17555
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756798794; cv=none; b=tn1LPnS06eM5QKXXspIp0v9/qYgcyEmwJ51tfK/PM3bJPlBw8MFMgBsbFLGxglhjJAD9ReYA9RDdLvlSAb5XwMeuGPrkmm9zj1hbjZTzNCRQFN2pJTZtG0W4zPVi2oBKWGw/qOcSoAmPwF/gZ04wHXQp/9wqZ7zvxF+E7T2FaY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756798794; c=relaxed/simple;
	bh=W/mIJ15z4h/uCT4qNMShnGOM2uRyzSOWV/sWlYsV4U4=;
	h=To:Subject:From:Message-Id:Date; b=OrEctNtAkoDDiu+ILPV0jZJlDrTsM/TfAHQ4LIdnye3eyPWK+bTtInftcl2utfcs+LG2kkXCan0Pg3S5gciRmXOJ3Yo3zdOIXtE3Efl65rfTjq8y7D6XCSj1rqIYGts5oh7vaD7qfnEHud/xbhw0EBtsJIEjObi8zh7KCMYuQzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0JFrBM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0JFrBM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4635C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756798793;
	bh=W/mIJ15z4h/uCT4qNMShnGOM2uRyzSOWV/sWlYsV4U4=;
	h=To:Subject:From:Date:From;
	b=C0JFrBM7geMhHXfVf0dFGqT1Al+4aprHOAa4qFiJ9xdXJylpEiX694pLVSbAt1V5I
	 xPpy2fRVqyJ/jHp0VSQuimZ+a56rOw/XVFZ9FzdZxwqJs48CUwsQrJ2u65TFWno7kb
	 18yGYOOMx5HqG6wyp9gT1jGhgNFCzRs5JLQAmWOnrPvkxS+01Li+TabKeUiijqNEvN
	 2DbW92LPAEsdwSYlu1/Q/resFeT9FNMbdtwK0LcAVXCBdPvpN+mypwdi1bzbcHspbA
	 +nAZ8tgywocfw4zH+wpXBlXA6Mpsf3UuVXgteWZb8WA2mTPtwPS6aXh5R3kgWnhknr
	 8JNOZzquViI8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904AACA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679879358.21922.17489703172280874112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77892e9bc3841c5877104790088c5dbedcfbb08650a5d475bc7894574f44af56
Date: Tue, 02 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756798793
