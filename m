Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5C23C8C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776145654; cv=none; b=qv+eXO04jMQj7txiGkLiDLxDzTV5XozoKUsbs8FOf66eFsAHLbnWZL+F9GKjVZMj2VNGKI1gi054V21c+mr/QB0WItgPai8IR1oqb7vJpzRHSp45dN1aNyJNaJLqVAcPosVjhYp3cU8wK4lQNvk+B71UdfAoy+wfCBqkHGeQyCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776145654; c=relaxed/simple;
	bh=RpsPCnbSfushKVamYIpS4fdD+QOelKURxnwIyHHFEGA=;
	h=To:Subject:From:Message-Id:Date; b=O8O/eHDThzfMmQtvkslngtGh0e2rKPNsUuULtCBU/O11kiQVF+Idz4chOjSPiI6dtlXERpDkZPTW1lP+i/Z6OOR1ulOb3jwOcVCBFYwFQHws+w1AoswIdQt/fTmkTcn0/B+0UNFdly08XBm5AUGta9DQR9eSkP2qJe3g3k9xtns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNe1yOBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNe1yOBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC17FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776145653;
	bh=RpsPCnbSfushKVamYIpS4fdD+QOelKURxnwIyHHFEGA=;
	h=To:Subject:From:Date:From;
	b=SNe1yOBchEMNuzIroO7b/JC9AFiR0t1lNCRFV5tEsOJhTN1cU8p2lrU0vv8qZNFmU
	 AMiaA8oivsed8VODsxZPPG8Sxqs2pZbEFq+awXfDiKiy1sF+kOD6PqUe8JPgoj8DrI
	 uih59PmnzuC22hj1Zvc7GDJrbiAUeNfsikTY9jZvztUS+PsbUQTAzlgW5k2qncLhjp
	 gMuRtbmq9NZljAJbdES3IcVfOVE+HjuhCRY3Ln75ERVRyd47OgwFoMU16m48VMSyMO
	 TZ88Zoicxs8IVpF3nZ4J+8BHc9c7AtU5bFbKLheZ9Ft9+DsdxcoxxkLsytsmMeG0Fx
	 Wdm/TxjaHrRNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6EF531EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614565368.29071.12793235319261100434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252c158485bae037a447fdbdb1611869bf2ed06115cc9e071a4d980a0c569253
Date: Tue, 14 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776145653
