Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230C73EDADC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776187655; cv=none; b=IbWyL5UmIn/082wUoqjSBwfQe9QfIRwku2Di6lPT5Jh9o5xDEYl7uevO+c+8tyfpUqWRmy7TyTKw0tDTS46GZCO41UMnnI3pIwTfwlipfYDYgZfDJ/uuHsssVWZVCkuSUbCibAXJyDuxRgVJJmhfFk9ljyMqbhulj6i2B1l6txE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776187655; c=relaxed/simple;
	bh=wqEeHLRHY76mp5Z8g6jEkRy8CoiwO8dTNspBPRmYhzM=;
	h=To:Subject:From:Message-Id:Date; b=abY3L5nBK8X0FS+d5eIqYHhTbnOxWCuhVY0HxmLRuRIcDfzsVxQDzQJoo3smdIOlvC6t0qvicfGOOU2YidR6xOea+4pPPKf42E6PvMTLtDFiYYu5+7J5aZXnEkYPrjeGbndU73QvD90L9WSfQeipAwEyrWmdiq7O6SGWQFOHKvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwWGArDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwWGArDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FD3C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776187653;
	bh=wqEeHLRHY76mp5Z8g6jEkRy8CoiwO8dTNspBPRmYhzM=;
	h=To:Subject:From:Date:From;
	b=RwWGArDIkNJVhDI4Gz0x5TkDDeSTFLjs3mXJtMchyyeAcv+2k2o6Gos6HIEyiRyqT
	 514ovsle1I+D2vLK7SdzcN8w47b1jypNi8T85DrLzTMDEbBLagNRecn7eMpDQIb31Q
	 AeQElQnEei3AUiM2LXLG6VADWcQLQ40K4OoATf9MBlHy+GFY+Iscs2at29zYzofWOF
	 cJjimoM6v2cLvUoR1nbeBGmbErJd+wMGqo/11jokah2D1b4/yu+63Kflm2oykdYoIu
	 EluGsbb1Qa/dZ1tbs35oT/kEpcwHTX+bl/zeqklVv4k5t1LfxFak1gHZZkHBAkWp3z
	 uiTjFgQwL9i6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE2F9D0EB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618765368.23103.1157679933610995742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668a0682305fae3be1eefcdb662d9b8d8126285b3f5a6b353778383d624f99ac
Date: Tue, 14 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776187653
