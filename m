Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D4813AF2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769524434; cv=none; b=oA7xxidjDwHGRsA7mQ5ICPub7xNuBu+FWf9vKNsZmyC2McTiyP/C3Zml42qJauqZ2sAFpzq0W5rUV+D+Fn7KT8wKJiAiXQ8uqaCd4ZQqUS0sQ7MNrQgPHbzZDcCY37ZAlsF1a0dr+bpo2dF83ehrupUNtJ96Ek2sZU2BSHUudxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769524434; c=relaxed/simple;
	bh=5hB66f6Fkswbvd92huP5MnSXiPPIHuoeT5qeyFQMJ+8=;
	h=To:Subject:From:Message-Id:Date; b=lrcK1I75iiCZf53v3J+WTKEzifSFST7A8UOHW2qGglmY6hlspkpwIcubQiPionynOglWvp3ZF5US8WjVdNqCB9ZSVeA88u1AL0P93OOoVvkk9106UulnsaIJoMYZGjZnFeRLf1NiT3pxgis83yCfgkxI+8kjHx66H/DR6Po7ilY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3XgDS1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3XgDS1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6F6C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769524433;
	bh=5hB66f6Fkswbvd92huP5MnSXiPPIHuoeT5qeyFQMJ+8=;
	h=To:Subject:From:Date:From;
	b=C3XgDS1RVx/Zcsz/fZ1nXmfxGnp/372cwPqhVGK8UJkRBHjD4P2hS9zfROl35r8T6
	 PJCJRZR+DxsAb5/gXv+thxkTu8fvOaEwhWOw3EF+ZqkxF6YioID+PT8xBUc2STJ8k1
	 sk3A3oy5bI7jHZi0bk8Nhhg6uJNux333r8vb2jGu5F+6Uoars6RoYgDxx6197vCKJE
	 f4UlhHKnyjC9HOFcHokFjmtystz477xJ+pP9SUZgjXv5qnDrgpiBeHL98vgT4DtPEW
	 FJSLjg4EN2zRmerpLWYDqdySQf4YLZHulYIhvMdYvudS7Eg99Q7QCGbvO/ZFS+ZaAP
	 Xyp4wKH1zD9zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D759D2F036
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952443357.17793.6619913946699038754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c10730c3af532a0a6d22b928d86354f0d4b620c6c951a289506611204be399f
Date: Tue, 27 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769524433
