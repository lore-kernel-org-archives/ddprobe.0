Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0D2F9D85
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765194174; cv=none; b=Aq/JTnHwn+9VKTKVjQjCfI8IYbK2CbRSL4D5nuyW0MHOHsFsk43Q21PZNDTlgP26kWM5BEjqicBS+Wpz0TkJzQ66OtNxELxMs0VysAOqUFflU2LTz9MgfJO0zH4dm6eb6z0d+tzp7oVNCMA0xHMxTRkXyU+nVNRDuvpYok3RSLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765194174; c=relaxed/simple;
	bh=PBuMq2cLQD4D7pb5c3jk53d/DYVvEJg1hTIsL/HgjaA=;
	h=To:Subject:From:Message-Id:Date; b=FXkJhIcdJLjb/OTa4731kaDKGMNCAWuvVxv3DWStCSZJwlWdrcRoPOEqr6w9/77Nv9PXaF0+gsu2dIkpVcoHw5JBONDvEmjE4WhGwqVbQK2Q/9SHdlaFls3zT31b/RLgOGorBAYiHnyunkl8IBeaAiiTkc0OY6yvjJ94wmqwmfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNXUuuUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNXUuuUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765194173;
	bh=PBuMq2cLQD4D7pb5c3jk53d/DYVvEJg1hTIsL/HgjaA=;
	h=To:Subject:From:Date:From;
	b=rNXUuuUTyVNH8nHxvpp1bpuxaO4fv2UjmB54zB5B62n+ymE2eVDSQSiT2xRjOSvFR
	 q9GJ0+FnRe6zw2ct/+qO5WYBlM93HOoB7bNzb6ShTMGop5lg2Mid7vZMjY0665H8JL
	 jvPUCCVW3bAtMxQEh/E/5F9I2GoqzTbivkjzrAoxtyieycqhKulHBJMbk1ztNp8xwH
	 K0Hts/PD67JslXkQSv3+myTmNumf1iHFkGY/iJrjB0bTyH3E2fhSeshkl8JVMNsYWs
	 mNA6H8l9y30jkBzuuRSG0ZBqqQAgVaTwwfgTa1selZIe961O01U7pPH+3mdH2FHmkO
	 kis3Fk2qqJa1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94622D3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519417358.3035.10357889494256066555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119e4e3e9abb1b5a82b39a5bf338cabcdedebe68222ac5321ffbb76d735ea269
Date: Mon, 08 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765194173
