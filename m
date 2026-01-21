Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A64033F383
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768986234; cv=none; b=Eiqr4z23ivyH1rQlxvdmhM6SFfBaDmNhSYMTekxBRimxcakifwzY/dEyXhlTPOcHnby12vNQG3MewqxsuZqnNo9knztrPe0+XpBFJZFmyLRCYpE1Ly0JE/Hxrws5NvYRWS9mRnzNKBfHFdp4wud1wS1TKYgi/sJjmmDCC0Z/oJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768986234; c=relaxed/simple;
	bh=3KRwioxi0DiIXPFuELytQKxxhbIicXkMpc9bDwHn3xw=;
	h=To:Subject:From:Message-Id:Date; b=mOw2PLGKNYWenZXRm359RXbs0WtaBq+X076OQF5FUQhCor2ccehxwR1VWE4DGvXaY8MCIT9YNJaBPijFXPcO2A6ViDkr7GkT3sAuQW/qA3TxhE4GnRBnhMz0s50xaFpZ2dkmkXQmeB3MGRU59PS81wDbkv2SAj58qs9vwMyh+gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2OEc3Ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2OEc3Ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6644C19424
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768986233;
	bh=3KRwioxi0DiIXPFuELytQKxxhbIicXkMpc9bDwHn3xw=;
	h=To:Subject:From:Date:From;
	b=n2OEc3CikVMjab8MxunsqOkiCu/gMfaE1JtFueueSVT86IN2RFWT+vq6PTDzGEtbK
	 +f1LzpwYh6rqVbR2BIyhrXmmA5hfPdZS3QSrr1OCOyDTgOQmV9dun4kYi23dkgX28g
	 qo3sMEgveSiMKhiwlDdED4Y1xljOhtKcxTkpcCHHDi4Io3jA9UM+UwVm2FEHN0hn49
	 fxUXdv3ROO//c338d4GJ/zo4ExN6TbNUbfHfWqqbMgwOG983H/NJ1zUhRGqw8dck+7
	 ixn3y6UjBcl5iBjO/PLwNC3syJaDtImbRLO6pWQCrXGgcCSPuabfWyYvtuK8JXwyn5
	 3OH3qpuFiM7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94039C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898623359.5643.8864978023587390993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d67cf16e2c74231d5afe3d23198e307d88c6ac889b17ba8b2713c375ab0c81
Date: Wed, 21 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768986233
