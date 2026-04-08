Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780D13A3ED
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775661934; cv=none; b=r2X6vJaXJSkrQVlC1mFgTlQypOy/638/S7RjozuF8Ob3FCzMtsajcSMuAAdhlAVKWzx9NtwQRnsYsyDnyfSkk5ZoYC7Iuuuq62wCW+JlalzpChbBQyypNSFB6KrbycZk6pa4d4ukjdnFFqF2TZ3lY4M+I8xad9iU2YmtrkXjLCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775661934; c=relaxed/simple;
	bh=FAMzTgvnmQpJmre3BXwILIc581Is/X4imUbEPfovkt8=;
	h=To:Subject:From:Message-Id:Date; b=eYpwDa6zuJTAj+fb86jAnwTD/jEthhxmIQ/LQcbuioar7xrLSMzim9JmnOfe9VtAu9plC9KKSK0UEO2Fs6GsXhvDi8bA+oB1j5nC/a6kAXrYeCgn+nGtVDFxsBSHvAXz14ZjjsV5ZG2HTz3oyZxzvn/ckyU00+2gBAg9fYo7isg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEeexqvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEeexqvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE700C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775661933;
	bh=FAMzTgvnmQpJmre3BXwILIc581Is/X4imUbEPfovkt8=;
	h=To:Subject:From:Date:From;
	b=cEeexqvKOexXq32hUwr2C7POvnZLhzOMePP9o7qeWekOTeuTJAkpPH2Ggd9UwzY25
	 d/VtPZpZJbrjhmRCMwXnGhmIVIbyKAD3U/odkDrzafwufCXFIcX5PuChTxbaj35msf
	 N7rzVCIzrM4EiHLIIAYZKVewQ0QeKH2YilA2smYxsJUK8sR70ek2gkNvHL7eFX+dIs
	 zmIHiYV5Cz0IMgNSYmi3Ci+/Xi8LEA0w+f1J1GjPG55BkjJKEgw+Yf+4V7Lr8lDQmk
	 hQ2dXJucaPVCZMze34tYXqarynTSHEtJwjAMHQ7QXfpzv8cOk4y+dyhoq1Muw8yHdp
	 8t3FIHHgP04yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B203910F994F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566193369.23843.9151474850747126870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c577538764143bc78986cba1b2b45bee42f9d3137f14a98f74af43caff43f2d
Date: Wed, 08 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775661933
