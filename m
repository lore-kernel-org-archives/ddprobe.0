Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB8B14F9DA
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708468097; cv=none; b=Fsekvw9qRYNVu6HambULfI5bzHQhqtVI6F1FyKPvHqZ2cVSBs8TLAAOlsNqY+vHylk4UC+UzjTsIV+uv+Oxineq92tdXURxPnKiBwxcnD6IF0/0nrlruS6YglArgpo7qeK/AuOPbyqdMYQqTvoqIhY0GfxM/2b6OzyNQ9r1kz3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708468097; c=relaxed/simple;
	bh=1CTRj/IIfzw/HqgK18WiFTbN68HD4+KHJ4gvlQ/RGJA=;
	h=To:Subject:From:Message-Id:Date; b=B8d4BuIk+obBtNK5ACEW6/45fteoYwuI8AtBpZPO8MZz6b5p1HlJvQRkT36k5gCtPHbCJS6wYeu0v0W1m7iz+qZwmCvhGEkkoBohqV5DGRSR8vJIt3At6jd0OZ78SNafMYD4duFCnohU6grXjNo7gEz43tWlq1KpfEGaDFzUzJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9pXok62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9pXok62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA4AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708468096;
	bh=1CTRj/IIfzw/HqgK18WiFTbN68HD4+KHJ4gvlQ/RGJA=;
	h=To:Subject:From:Date:From;
	b=L9pXok62p6IMiA3N4ash2Lt5amlHoaJYuaxHsVrTcBiuFoPbEaIc85bUMvPWGCXrP
	 TZP/A+yxjDpTXTIAHtjCb6TrUnHvKwc1lYWZkQfy2wWHfFnGnj9/yYS4mNEMFi3P7H
	 zBBe4rAInNEV7yTup9vhe0jwPrBS+bLOHeccpUJ8VrE+Z/zshWDmQCnIpt9+ry1NAQ
	 qfVaxPmE5GoN4hnV3hOmGSxG8485qNl84o9eMAsSf8bS+ZFZUZbRHtb6SfdVtWiZjb
	 mMdyNQl7l375JDX2vNGudTCST+YYJz6CXSyBCAnokSfzpYJr4jX4Cujv1HdISHhRQB
	 DcwcIna1PjkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6554CC48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170846809640.28580.2067951030807490729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff94bdf000b88be067c151b781f59a3b1447154ea760abbdf78816f80e43b93
Date: Tue, 20 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708468096
