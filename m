Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74817993
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735123554; cv=none; b=Tb9QmQtk40YY6xZPYdif+rMELZR4Y72zGLezCDjvO7boQ4u5m9HtIxxwKie6VG/BtpsuxHYC9WXYyQQX3NVbb6GH0m0WF/tV/zesvM4CEyTTgbODPzoxS+uffDiPCAHjA8uwBmGu5jF7KcrkcwWXon0K+U6ECx0tkXTHFEeeMAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735123554; c=relaxed/simple;
	bh=qya//3V77Y6OtWeYK7ah/7403Krt+B46O7b/MIBClKQ=;
	h=To:Subject:From:Message-Id:Date; b=h5B7U/t+UkcpTxHHXrjmaXdE94Dfo72IYX+J4UrzZ6oIcurSOKQHlnbZe7bXiwmNM8BPZr6y/Ye76+AbgUR1kZ2JPxzzBNDpJHMvJUxa7lqEeMCf2JGzMMIqSZUlCQjAC+c7N/ZaodNLCUuPuIq2jr+12DL+9GieGK56+9YU4kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJl9ygOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJl9ygOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FC4C4CED7
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735123553;
	bh=qya//3V77Y6OtWeYK7ah/7403Krt+B46O7b/MIBClKQ=;
	h=To:Subject:From:Date:From;
	b=oJl9ygOp5EzQYb930LjeNt1IZ/ZvYOSJf5qcA8YWD4AcGRSrBL2gd5Z0Dm5ivSU3E
	 418Hk5eCUP+tZziOLfNVtm/QAz5eAX9Os8DW1sLBFxOHgNqeRt7Q1O/aDeap8dTvXs
	 HG0Bz3J3JE2CptGoRsUW+XoVbZUWLFqKVan1l7TnOxo8Nn9EnfU6sxaj5X2E6coR2Q
	 CdyFvkFVgN53bsknaeqWFO5Mz8/QQ4VzADP/wb+EzY9rVCnP3qSCK84Qd86EJqeKOK
	 Sd2hzdJYMmphvO72CsgmE5FM0k/QaZJcw13+rMJ/Bu9Ty53kMGMFmvnj74yQn+GuRu
	 b/9FMNCf+uMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95642E7718D
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173512355360.11029.827414604992856102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5da9d5af8893494a0442c311ffafe9d0bf726dff68d9f7f0b2492d0e63711ac
Date: Wed, 25 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735123553
