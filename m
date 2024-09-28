Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3285C13E40F
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727544954; cv=none; b=q37oEfHeT8bBVnQHutEYHtMYh9pOiTO+9tuiTyWoQemO9DHZu+E8m5rtA/Ft1/u6JhCSfrADpAkQeJJ+Q/2SXIqil683TLuNBYJNDJDbcv5AEmFlZMJRRkkhJ+2CWElRqVhi8IweWCKUl5LTduBW73WOtKodH2cq6Am7Eqki7vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727544954; c=relaxed/simple;
	bh=d0uNhsJ6NHcwLS9XX8rdaPo5Z4Z52cVwK+pWtCglkW0=;
	h=To:Subject:From:Message-Id:Date; b=Nw8T4x05FmqwOx39Gs18eSJV1BKaOxTRgP7RYc6eteMoMNDLStI4GYJ8DjqJmYb8I7qm0apFppx2XQwv3aBUXP9oH8DU3HVsorcl9WPV5zDGn5lNPUXsbDD3JqDayZr1w2i0vLL0vve4H68qstE7x4VHmFQcLL1KfCNOhA0uPRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hi5m/Uqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hi5m/Uqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF63BC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727544953;
	bh=d0uNhsJ6NHcwLS9XX8rdaPo5Z4Z52cVwK+pWtCglkW0=;
	h=To:Subject:From:Date:From;
	b=Hi5m/UqolFtVLydX+4FzP4xh+hRrNPdnhuGUgvPcfllJqRvDqQch/X6BRJk3MjzOJ
	 fu+u25YG6Hgj5z8KQkEo6j9g0eoXEGszKyGdSmBPoaBXVKtox0eeP4g46W+moiHw5j
	 OPG/mDx41EDf2o+x/utqfgff0GTmqmSY/92YLn1FOS2MokjY2Gc8LeduL9lP6JRFDr
	 6+1dWHd1mLnQbPcEwQRxYazvLl7rwm0nrfCS/0C5TCXb4QGaa4rVme0ixA5MFxaZ7+
	 lYa9+fJV3RQm7FggMGB6HeN9aZS4Vx1mPKGCRIXA1TXAfTqoUO2r+gpgxb8oSX0Hy0
	 pzRL+QM2rFI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DD6CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754495364.29183.17033588863279660527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8bde5678f707d36c4b72781625d21f725d1af834f1049bb743d69d021bee72
Date: Sat, 28 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727544953
