Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E16330596F
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786086034; cv=none; b=bMlBXW7eC3QVPzspA5Xf6oBO0nVI2befALhBbhpgcJNImUo4PSGJdhM+hIMICqo4kOh6DNO9l99A9dlRk3wrC/47ve/3Mkl7uX2B9Aup4jRZ1UZ6RmG1hTVLPOxYlhac9ip/CR1U3pIGcDSYQaCxSFQbSUx1kviJzWX/St/7DyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786086034; c=relaxed/simple;
	bh=59jOd5jl6hmqUhNUMmKlXPAnXP7XYGiP5J+mk6432r0=;
	h=To:Subject:From:Message-Id:Date; b=V2bBRzXwc2g4JA1NqBEpSMOyXQl1sHRgBsJ6o8arWM1GfsbYH/mtXDrn0Y95b7WXVgmG+/a42vJm8MQ+58K+isEwwSgLeGelYKTi73QRkPXPSdMOwi+yWCGTM25IN2Iii80WXxmOt+IHNJzULhdbEDMJjhhi5AMKvVpS+CWXn6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8EfJZEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8EfJZEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AACC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786086033;
	bh=59jOd5jl6hmqUhNUMmKlXPAnXP7XYGiP5J+mk6432r0=;
	h=To:Subject:From:Date:From;
	b=I8EfJZEKW5Y1tm8fIeV1KfclrLDOmPkc+t4v/civEpBTYONDJOF+jjjTecgq+QIRg
	 SP/7rggicVOCkT8QpBPpTR0HtbO1hPUUe9m7e8PVsQrdsYtHkoYiOOWLfEgbFSMmfP
	 6m8D6bV8PDjWDCPnNZUcBbpESl6jo8XpWgbPJ+Ynn4KU7VVWS8jyncz/QmOsM+GRaF
	 /3cetyU67knVxdynRrNd/Voqr6+fTlLe1j/t4psrKJmiD/83VIjsfgfOT4PFgbwMrM
	 RKJK+0QzFPDcvg4/kO28eNomrtNNQDJo3frcvbquA4G6rHwGwKwVd89mMO9oKPnilZ
	 Qgo5jQ5ZkU6Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCDEC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608603369.14295.4840211698732388886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319a5c8ab4a9a12092a8fa0b8612c367701d31c39ff28642d92a0048d41936de
Date: Fri, 07 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786086033
