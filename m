Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E1F3BD62C
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779803554; cv=none; b=uA4SG0QZJFvvnPjBZxXnPQuDf+UKDXSifsr1H+HuPhLX0HIADQMSdcbKSn4nU495syniFpHMLh5jF6qiz8znyB51f2rr7rc0Q91gY0VzL2QRv5IemrtO/EqvTg8NDH86kIWnDjGcv6QtdCTfitpTtlNcCMT4RS5nLXuMpBchOG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779803554; c=relaxed/simple;
	bh=WfO1gUqRmvW+SbGIx/Feq2mrWGtBBXAK45e7/z0Dblk=;
	h=To:Subject:From:Message-Id:Date; b=DLwRlUarCBtj3pK1B4Lz/YP9C70hgTEPOxqnW+OcfozjUrTsP4apTbONEtaDCN6sVPWQzCHdE5delewhSHZdFf+dYnWat6bePUUVqLB9xNxIWi0wlT5RkAO7j8dn3xA7h+V4POU/ShV/pMNuHam0tIzg8eUhEp3PDJJMVh2WLRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV1REBLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV1REBLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72FFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779803553;
	bh=WfO1gUqRmvW+SbGIx/Feq2mrWGtBBXAK45e7/z0Dblk=;
	h=To:Subject:From:Date:From;
	b=MV1REBLY2gwg11lLIcZ44gPnpiYkNBTi6MVfdd64oPpjh5iaZlr9/VB8dxUyqJUtm
	 99zDLOwdurLi8kbaL7ZoOGsPUFIZ4Q5CK3FuiUaPRHck2ubUA5t45Knww9U++FRKJj
	 DPl9f5BZdHHWEAwM12tiaeSzCBglFHHwqAGbJ5fwlUBwvVbCjLvmhy99tCrGFPJ4R7
	 MAK+WGOkWD4tAkmIiI8I4CK4eE2dqPw1ogcz0QOyzIxHda4TktPC8cFTUlAl6nmu4g
	 PEBQq/JHWsJTk4bV5/aA7uya1kfYOHPD8MNzEfNEjv4mboKpymB9wITDBez/awN3tf
	 hdD+zNj1CnjoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C8CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980355369.30503.5134910879629066074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52522f355dac90f47b2161c1c1c5203607f36ea0d81d2aad622e8e592c1dbaaa
Date: Tue, 26 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779803553
