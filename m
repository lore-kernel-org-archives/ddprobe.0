Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44946148316
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728055554; cv=none; b=C3THtXaunm5zkYCLytYgAAAHKXqLv0a9OS2j6kO0bSbZTRe1sqPXCuzKrJg8foPnJgtLp3SbVCW9TUGl5akXL0OQhnH2tGaQ5IMkSukKrBcOwruAU+mIbVjdjdnBD4i/JVBU/baCKjkhjUBfQotV7yJ0YA/PjHd90PL28wOk284=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728055554; c=relaxed/simple;
	bh=dDZ5bvUJ85aWBplXEdesSHBugjJJuOJsACA47NtytVs=;
	h=To:Subject:From:Message-Id:Date; b=IMILygFGzDv1oyYBGnDjRO+sKJKRiZiT5ZpFFG+oa9xeZ+9czHdS/7dxpT3MyTsWLh4wG5QnF56CebmRmHRQhcR7oUn2nErSTV/pm0ugbiPy03vpr9ee/rTXTKpAA4bq74rL8I+OVmH4coqqlieRhm+YneI0Wk4PIyDt1id73rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4eljWh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4eljWh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30F3C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728055553;
	bh=dDZ5bvUJ85aWBplXEdesSHBugjJJuOJsACA47NtytVs=;
	h=To:Subject:From:Date:From;
	b=D4eljWh8eDmeBhhLfvGEcrOJW3bOpExNHLKiwRZp97WbHMBwyfyzePDI6TT1evDTy
	 mswCYnzBLIvl7gZt1Wfjt1UADPAl6KMwnGthyunloIsFS3+v8iYsxthAmWVhwdusw+
	 Ohi55aEsy3Xq3/L4yafQHKgQIwEHoRX9FtE/9Q6oDlqZZZWa9+HJTmZCa9AuAiy4pC
	 aNCE8C4DcVWlUyUiQVfdMFNHTwFJBMwy+cK65G0EiwyCeb1ky9LEKqV1M6ISpCQ8i9
	 mw0ZRulSsPUeHAVsfG2YDMbMyU7L0xpT0L2LCq4Qo2MSZCtZ5b6+sIQcC2VaMrwynD
	 t93FIP9M02ePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1943CF8849
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805555364.29501.2519199333546039432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b410863fe783881802acf21e330cae9881f30b57756c2ae192e253c36ea43b1f
Date: Fri, 04 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728055553
