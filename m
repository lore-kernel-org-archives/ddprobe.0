Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0F036F8E7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789545034; cv=none; b=O8gt2t959w6YZf6Zuio4QXkMP4DT65sfMM60b8Z7LE4Yltc7XINIs3WuwbbSnS2Uyuu6nqEoyGxer2aP3hBLE4JWGcuIQJQWKFzQXKE6yOaY1IwQijJg4AWBs05sn2l76tQahZlN+D+jXHUFeyvIXLI9FxRuUpg4R+06n+SSIAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789545034; c=relaxed/simple;
	bh=3z5Npt9TrXEb7QHRSnwZ8SJrs+Wd9MDMHOJJPwt8O38=;
	h=To:Subject:From:Message-Id:Date; b=INSFDSW4cmnUTfDUZRAV/d21PSmXjDYnpl3S7lxFe5bvvOa1r7sPwaSyFoIZP7uPTfDhGiw3v/tDAxyHdsQKHeYvLCGEM7dKYaaXWDo5tQUAek26SGvIknGAZEQcg3CQTTfWpiZbeGScGp1mamn9pPt8xKfGGVLzLjOgzlkqoHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLp0PfNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLp0PfNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D291AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789545033;
	bh=3z5Npt9TrXEb7QHRSnwZ8SJrs+Wd9MDMHOJJPwt8O38=;
	h=To:Subject:From:Date:From;
	b=ZLp0PfNt/TGnRol7i5yZwMHN8ZR5ZasG5kh2DlhTB+l0+/hobrkyV7Qf/axEQ1k29
	 I9ZhugHcxSPmXarCf2aZzJ+dW7GD4GaFGbdqzunlNofpuvLcx1mmWynxa3b9dFBqHU
	 cGJRN+9HW1jJ7hLLwHeTfgtj0Wty2jH4SO5ng1VeTy/ewBLDQedutBXd4s4sXPfifO
	 18rKxS7cgmptlCU0Wi1CjN/2I34x6DDx1CocdPGFaN+fwxLDXN5XyG5+ovUCBA5J97
	 0cp+ANimwun3Qh2DFh21JgY0ud4Q4/Tjj2uEt22j31lXlQ0zU1MiqO3BRrgPb/eiPX
	 FRYkEGxBFOtWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD072C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954503369.18737.11724978553712581853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4617f129cfc69227ec6fc14f98cbc8f02cf5d6a7250a95121ddf1e3f2ec702
Date: Wed, 16 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789545033
