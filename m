Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFE71DFFB
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775953654; cv=none; b=IEZ3wkcVaX2PuH2MLI91liL+zuEAMvmqsbzPxxM77Wq/gFAslFQQyMp/OEuliAk6Iu61DOYioRUFoANe1o/zIn/fsoZRttl6XyrCratY7h5ugldLbpz3bVWAKYSFVpAw99E9z4sXXuwjNJn9su820/64OEIwC5WW4/cGs0qUcHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775953654; c=relaxed/simple;
	bh=+NVgfi9n7ShtJMAvGUGmkTy3YrvzDwt+A2dEnvh+VOs=;
	h=To:Subject:From:Message-Id:Date; b=nDsKq07P9+ouS+7r2prphUUPgNua5GzTxijjiaIMH1NOwo9bouTvSG82/M/StXHBeYffAU4i+NtsXgW2PWc+vjwhqe8mW7WDIBliM2w4EDYN/2rTRr1kDltv9a4qWvypGcAw0DEvNLRyiK1i6YPsKTT9M9ON4Zhvs2qvzAg4DsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2oUo644; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2oUo644"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB664C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775953653;
	bh=+NVgfi9n7ShtJMAvGUGmkTy3YrvzDwt+A2dEnvh+VOs=;
	h=To:Subject:From:Date:From;
	b=a2oUo644Ku+1qxcNBIWpAs60oV+qPzdPnMFcYj5tJun82Bti0hGlxjCqvkQvaFpMo
	 e1ASCUT+rf7EdbxLooDUcmskuQoFSvl8lnR/LPK8PUcOOe5NtBxrKIszQACtA2G5t2
	 wysMUN3iKOElxIMkj4t6KUzild+zRprtrirnSbdntyLxB0aOGQR6ph2iF5g/rbbI3X
	 Rfr2i8BFMgQTz4Omck2Pe7Lzpor+4VUzU04XtdIu2VnwJz3OMN8FNtuF6C/qTimKoS
	 etyagyVjSMgSZp7jmNwTcjRP2WYx9iCBEAi7bntaikyuhBNqFXaNy0rifzyuvOmHqa
	 o0i/BbmHMNfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FADF3ED4A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595365368.32089.3447098401630420120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7982862e1d5b07417ad9ccde5a8c92bf3d1ee276d10359138f93fefeecb033cc
Date: Sun, 12 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775953653
