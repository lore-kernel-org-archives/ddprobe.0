Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0AD33A9EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882434; cv=none; b=EMBD3hxWOBG5P96e+RYLiAfC54VXmKomJsmSaUY57G1J27NWPfa9VEDd9cEA3K4hYceZoexRWFOnOz9nkuGWF8CfxeHr0Jhhv6BBxgwrGMb1IK0CgqBedlGizrTm3B50Y5xDjAZ2MDjvCtKH59TJYuSCqKEJ3f6dRBv5X0+znGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882434; c=relaxed/simple;
	bh=kvNXdtyWMdJVfdb9C5hRZfpWtbggsgL8SjLoiDpPkx4=;
	h=To:Subject:From:Message-Id:Date; b=eU/5xG6gOSn4nqjqX0i38vkFXBdUwo7USbmiWbuvRuWEK9JbzehiTlTInOf76eRYtNVCNJ3rO8N8+QrzySX4YYHNalEjoILzaGEeMcJhP69pfgdEOhRg2nB7rPXR3LLWbO7Vz8N9iAoACPMIy7q6TsWTdItUE/E6TLl5jaAgSZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1BLYbg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1BLYbg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8DDC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882433;
	bh=kvNXdtyWMdJVfdb9C5hRZfpWtbggsgL8SjLoiDpPkx4=;
	h=To:Subject:From:Date:From;
	b=C1BLYbg/yTzBN742vxexGprx9chagkCjDOxL6+8Az/ZfJjaTDZLboD2Y0fC6kc0ib
	 9YsBv3tqMAg2M0Vd1aHkujXAIAFd9F34L7PV2RVphGIixsWk7ZFnxZ5xMVKASYNVTX
	 WC29tKU/CreSuhgZ17MLN+PbQ54xmkYZGoHoImz0mTxNeu+TqcYGLKmhpQiaPJaf+Z
	 CVcFqXQhk5K09tEcp6Mku2nM/788xViAwuK+XztUAOKw3zkyGlAZDIJTi4Jctw7bYL
	 K55Qr2oaarlhLJNuzPs8+LcMzVGB/iInAd//RXR8nMMuRBqII4vX+eu9Q0SHXjGoHV
	 vzJOZbpsAB4TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDD9D2ED11
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888243360.8917.3257898031459314455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3f44424c0c359dc2e9918523926a4b9eb673da24350d9214da3d5b2c091274
Date: Tue, 20 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768882433
