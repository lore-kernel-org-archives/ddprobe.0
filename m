Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406221BD9CE
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778379034; cv=none; b=OFvWxV1Han2e3K6xQnwCpIMY5QgpW9ln4BDFBEzrhB7XHvAVxD/ctzB298IQKZMsaxEnm3p/ePgmFjf9BP7uZKogKjRJyxH0z/uX5sAnzReZpgoKPXp4GWx0myIK9oO12HJQW2YqheqOwuV0JeKMHiGqlKPSbyW2pYtfBS8gNgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778379034; c=relaxed/simple;
	bh=YE53tKdNg9artmSCq0MwpuxexR9tgeiHUR4mQJN4zIM=;
	h=To:Subject:From:Message-Id:Date; b=VELXb41DyCnB6Ra6E0qOg3toTbMpoKMf2X7cpCdSQ1QiU20uON+AaK7XxUBqXTdRMwfNvvfQjEomiUWJdKQTTuuenq2C9LZPLagNYVxPiLZQmn9EbpdxXGcsboh+R6Cejks8eSz4frvR6cw79dbPrS9D9atcIWFBTTr+DoVFVDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB9s+m7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB9s+m7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C34C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778379033;
	bh=YE53tKdNg9artmSCq0MwpuxexR9tgeiHUR4mQJN4zIM=;
	h=To:Subject:From:Date:From;
	b=sB9s+m7GtGm84Jn3F0tgZvPtBDRLI3DyCUwmpLXV8yftkc0H6C/2KOs9DCA9lxhQf
	 AKk1LejrorzfPZ+cIszphC76Hy4bHwrBn0UuEJ9KxLHa0UL5+PykTzwju5jylGeC0z
	 ACZJcAOIFvNUVGGnPiGlDyvgpLSBlZUI82vp+FNtjIkM1WoZhS8GFXAX8S5lEwTpzO
	 zKLaPzVnTLy6hHCNTy37MKcKGC1XQoqAFzqrm048edPsa5PDJ3rLnpbMJvM5VKx7gF
	 tZy1fquO//20pBGUdZZnXRzcdTsTBvDIEAlny1ixfImGf4jB3rgvVblgfc0bDFDf+I
	 4rzNcucYSiSew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EADCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837903369.29716.14805445433451136645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709a93accdc09ad69c30bc18bccddac4a6c5d50bd04d6d79a79948dea3c622ca
Date: Sun, 10 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778379033
