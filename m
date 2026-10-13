Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEDF4FECF6
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791932434; cv=none; b=JelrMkNAUbs9BPTDgCugF0by+s5X774tX7LqPQj3MSLyb9y8IyCOl3YGw0sbtXaT4PGcyIeFXOg/hfJcUSaBDgWkrJmDZ2y8p6bKVHDn0maajvG1LxRNZYoeC1MlwyPc049wjVveyrAMWs/9aXX561WvRLgYyynuIyoT2nWdJt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791932434; c=relaxed/simple;
	bh=7Q8oVpoqSh+4wX45vh6F7rE7pNjaObqqKXxHe0M4XkY=;
	h=To:Subject:From:Message-Id:Date; b=N7vpXEnuHjs1XMObkWTChCyO3SUTCRqgDwhd/szKDj61vTMeeyF3FyFwKUAqkGkqX6V6X/C3n4oMRX3ibBc6x3/6wr/wjHdn7yKBlnchS1cop97UivmBr/r4Qle/8vCDclHSig67lysuzBaqFX07ctpqIOwiwPNJk034J05V5Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoQTXMge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoQTXMge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1529C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791932433;
	bh=7Q8oVpoqSh+4wX45vh6F7rE7pNjaObqqKXxHe0M4XkY=;
	h=To:Subject:From:Date:From;
	b=NoQTXMgeZGVL7zTZqlqf+ICueP34gDanhoi1LonBU85KzxlHq8fsiqzm85lcFwhl1
	 Od4ZTWQdNiIfQkFI7RsZ/PNUvamNLmiHKmkPL7e7dKXJUsdVW4J4W4/cAg30/erSpr
	 svLUo23rdsu3zAYCK+jjE5HDvjA5y0J6USfWqFclwbYm4Ak4KtgK7Ww05Ntwns/tV6
	 oWzvLOnjMbpIctB3WtekVFVLeeebqIQFsw/QCVgEqD0UwMyW8NRfU98JuC2Va9N8Ii
	 11kF98LMHHsYY/+fwmKBfKVfgpzYoSyRFaz26mHWJL/H3mS4/40qt/F35X22KZpn86
	 +XQu9kUIpJ22w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF15CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193243369.4487.13407579571593567598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca5c0bb03c04ab16927b73ae3edf0062ae5a3e24a7e0113b3eb0139433dff3e
Date: Tue, 13 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791932433
