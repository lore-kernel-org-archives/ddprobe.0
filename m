Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF54D8B2
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718795963; cv=none; b=ujLKrHJId45lT01LG7SKisHgqsj7fFtbdQ3NQoWjPrPla+4eXWoF0D/tCkD7KFHALq0623KrFCa1scfCgq13qeWRnEyEvLr+bbnbSgd8jG/NTkF9W9gjFCSEVRtReeZBa0ixu03NkrEzUI0xtguW8xxiG+eRtSSW+1PH/ITitTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718795963; c=relaxed/simple;
	bh=jQTRXpkUSTD+l/CK+NfHWlFQjNL15utjSUTy3J9a2Wk=;
	h=To:Subject:From:Message-Id:Date; b=TRybMBPRSQ2DOy8BjF2tg5qOaT4cz1r97c72sHMl06b+PBFoTkPPHAESdrW9XPNtXINXrBhnQvEGuJ2sm0HQ+V4dOpvvNo342QFz7qFfNdWYNciUV0ukcLWCwrorsifSsDJtzd517MxNVnbLuqcjjC5udjnX2QASjAFO1SyRRCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpJaVW6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpJaVW6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DFBC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718795962;
	bh=jQTRXpkUSTD+l/CK+NfHWlFQjNL15utjSUTy3J9a2Wk=;
	h=To:Subject:From:Date:From;
	b=SpJaVW6C/eWhj/cVrkbvpatqdEsHaZBydkV6WqjdJM2lITrPPWE0Z1+4BdHaXYfPt
	 geiQ0Qp1KxnAsXlq27SjyQ547zCRFrfzgmuahtDXZPYR2pK+qgM/ivoGhH72CrIvB0
	 +3FR6kNUbPhSeA64Nwme+PT6U+d6Ci/lfM0Mhc+Ncs5Qg01HLo9jb8r8/aJi/lYOSe
	 2Ds4pWjcVBDw9n/JVK/simqclOI1HwVBuRMqo6eMWJXAXMViT390KetP61HcLU647b
	 sIdKDwFgtzkki1YWrTRk+E/Hz5GV10u0Pq0Yk/jKqdNj8lxSW9SeZOF3O8Cb12oefN
	 FBt7e4VMKKdKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A19C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879596278.22027.14166239837055018237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d88208524347f858f9b9881b4415aa39d91c3343ffccd9251730ef596f16b4
Date: Wed, 19 Jun 2024 11:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718795962
