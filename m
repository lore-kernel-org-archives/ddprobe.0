Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46558145FEE
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724672754; cv=none; b=UPS5Q25DopVqJp9Or+B3o72jQNmyUbfs/9fraRrvvnvM5xUK2nQmGIh4p8h7c4WuqsA4TQf+Fdrizim/4ys5Mccf+N6UKoYMY89HMuka0pbQSmqjoEAsF2UMdZZHK7BxqbUNBUlNxK6FPgldQoBj2Gp0dKMF19paL2UyMmLPPwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724672754; c=relaxed/simple;
	bh=qKcEGmiZ6TDWOkUL6ssl+b47CYzV5bedRfwObWDVJ+0=;
	h=To:Subject:From:Message-Id:Date; b=Wb7tQXoYBp6nCQKhC/hgRIsvRG/gTYhcxCAnDAKwm7jQ8LtZ4Kht0ANKg82IpP8Vl7Cyeu7iF7D1yj+6Dy0XszLjr2u9jEani72s1WvKoC7Z085ZS7kUzFSZqtCWBxfpZqwIMqg7CUyL53aPR3zFPD1IM0X2rYuXUkX+IsudInY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqmGQ4S4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqmGQ4S4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4F8C51438
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724672753;
	bh=qKcEGmiZ6TDWOkUL6ssl+b47CYzV5bedRfwObWDVJ+0=;
	h=To:Subject:From:Date:From;
	b=EqmGQ4S4jNoickrbTzCTIap5smpFx9CmN3Zkn0uUsP0EgZuN07yFDe7fQS84Bm4Aa
	 uDK+7NbZwJlepFKRYtF1wf5rH7zVFYqrqJZt8mJX4g8ZoFbZTHFn87PXsISJfPoJEL
	 uDKWGUA1ZwI7ymk7PMCehFxSeiX7kCS/XHjsnw0KiixDSF0xPpBdmzLNzDuby0WUMC
	 1jr/zKgRZVXA2oOP9MuGyWhf9ti5LX3zCBX9nI2kmURb9NUGIAokyf7zzf19GDHaS5
	 15Ho5wwyL6DCPa1tnvisVRhn5230/2X0nQahkcgI7KUJDxgkCGCuBvkvUw/rBJ7vit
	 MAMYN5KDARj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93825C5472E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467275359.10802.3774817156761914270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3216e2d4ea6e6bb525380cb93cd9fbac04cf4848546551ba34a597a07455343
Date: Mon, 26 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724672753
