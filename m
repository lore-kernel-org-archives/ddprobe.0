Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2DA1A23B5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751903993; cv=none; b=qyFo5J44qSqluHVZ/klotzDkOrdf5os5VUu4Q+TQjOYV3JYiBJA3DSiMOVKCyEBGPGrpS2D4WgC3l+Po8FNwgtR6E0f48oxPC9YP8osjrRoLDAN0CWs/kwBTy0+/y3Ntd8chVvC6v0d0P3btN7V2zqo+EYR6GuCIIYWcuYZilS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751903993; c=relaxed/simple;
	bh=XWN+hQ5m22x7uTs7dzVeeLMNyCYjdP0+68f7VXuM5Rg=;
	h=To:Subject:From:Message-Id:Date; b=oU5ockDr7d8Bqm1QZ761pgPvQYGS0dkd6c25zX5Jrv15Q45LPvybJjnd7ixFlQ8Gpw7N1QeDLoR99BY3URWtnPUjdmJAlWPOh0HvWau+Sc8eKvIvlXUuE3ZFbMGf0M99x/0vncGC00sYsvj0QTUsA1uoABStHuYondCeSyNOLqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghTSKd0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghTSKd0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E93EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751903993;
	bh=XWN+hQ5m22x7uTs7dzVeeLMNyCYjdP0+68f7VXuM5Rg=;
	h=To:Subject:From:Date:From;
	b=ghTSKd0zC2iTid8VFPwa8BP/BTTWgJWD+u5Nv2twskhq1CY/ng9EMZSiEc82HiMjy
	 J/YfjAIOc5jsVhd4FEZJO3UR1QzaPVaHxeve/INjK9XeL6F1GDDeWXPwChKg7+/4mx
	 znhzKH/7hV7KA5tgWRm4dElpsE1OtBS0draocQ0iHDCxwEJDW1wCU+d6dWw4BHJTAI
	 xQuSnCpEUoUP4b8valXv++5LdczKJkbawSXEwtrQIbwUxgBhfLBONyym9PPSlhYLCh
	 XywX4ttOJcNQgPne8ZMu99Pmz/FKCekUavCKHaabJM6glI0zYtn/fcuIP33U/ksSSC
	 zyP6Q0JlZrxSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F308C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190399357.13446.2061338518349889901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce335bea51fb0542302ee16af6c900467a991a8a60e0f152b391c96b0b4e04d3
Date: Mon, 07 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751903993
