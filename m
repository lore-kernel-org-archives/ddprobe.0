Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E41239768F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782451654; cv=none; b=DrpAX2dtXXMNKnMXY7TYupVPlo0x0xS3SLYwppjX8Gcm8oyUdQOLM4qwJamNGBRWMWuCf1epR19gTIziMP5j3d36IiZ/wu55eJRp+fFKfRjIX8n+5HE6HEHKZ6ku64Y7FKFwZD3rrRly7QO+ERp3IRcjPToxaRR8G12CjHNZ1w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782451654; c=relaxed/simple;
	bh=1ebPuT8RCKVRJpPmgcfvGfkES5NDWieU4Whu3GWVCME=;
	h=To:Subject:From:Message-Id:Date; b=u0UbscZxeFUDCTkTwtHBGsMLC0z4PZovIqyli+uxHJZMm86UymlMg40QXc8a+GZkL5fLZU24/+H/gcSblhMaG9Xf0A2BRP1/P5KMG2tDvFTty9QrIj47+3ciWOvZdzLWeyEXTitjV97rswfhSLYhrmLDDjOZ/NvBDPa9qQ5fULw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuiSnaHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuiSnaHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2824C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782451653;
	bh=1ebPuT8RCKVRJpPmgcfvGfkES5NDWieU4Whu3GWVCME=;
	h=To:Subject:From:Date:From;
	b=DuiSnaHnGb5MzGwSbVXkLGrgloRObdfWP456+7QJwguyBpWfcYmnBlY+rdq5B9er1
	 yNthx0jhnw6HBqyXTCFMbG8+a/slJmgtapTFJIi5oFUiE348KZBMA4eEr4QSsLJpxN
	 WeL3H4BSu/cH1m5dp1fGggMA3+yz8M7Qt7IMpMQHduyxcZhGg1DNEAX/t7lhzZjTqN
	 bnv2tEAAyAtPRiXojSjURyKIg0b25YHplcKdCQjrrCnd/kxjfJOGFRlEx3w0eR3F/R
	 0hoejACYemxDIV0Y6t2WIWXAkA4Ga0S8b3OuvA3KKbvyw3ms536YtVKSGQ7c1UMble
	 5mkM/tOTdqexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F6CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245165368.22392.1512394083440123973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d461d78b5d449ffc5197a9a766884e60a139b226667b71f5b95d8a2f2e46df
Date: Fri, 26 Jun 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782451653
