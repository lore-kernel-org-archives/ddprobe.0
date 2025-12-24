Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372162C859
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766562834; cv=none; b=dv5nv4814OHfKsdNA3Qk0k9SkMaCRnAUSnR5wm/s7hwPlFKnyOUuGF3pCym37dNX+YGsCuxnWAht6IHBCUBRJGRnEGTZBvC7ntWIxG96D6EkSO4KHDlLss5l+Kxgb/bOO2opAfNyD8PSuENUAWmPrtow69jVDfygefGNA+tcPsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766562834; c=relaxed/simple;
	bh=GtnQ2l2sm4wJw8K9d2C1A1MHrRKPl0kcN/wlETzxmv0=;
	h=To:Subject:From:Message-Id:Date; b=qIS0r+IpRu9V07eSkzMjxS3hJxsOzDMUVHKjGknGQlP13FFK2Pa/n+w2m+EibQr3I9lQIpkqJ9gzAKUls6WAvaTWB6AGj3DzbjuUbtklLPY4d0OvnEXFgokLB0CnVRRt3Ffu0gWHC4ea3toVYTPn3604YlPH7Kk618uRsTd+f18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oykIq+at; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oykIq+at"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3032C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766562833;
	bh=GtnQ2l2sm4wJw8K9d2C1A1MHrRKPl0kcN/wlETzxmv0=;
	h=To:Subject:From:Date:From;
	b=oykIq+atUiB6e4XT9cARVmQfi8Um1NcgWUcFOP+CwtnPHTlQsFmyLE/SOdiPqfR7S
	 E/YuR7xUJun2a+bIzoeMlqBnuZM6hDJeCAnV6HhyA3GUl9iUqK7Y5wT0wls1XVWZJV
	 5EPuWMf/ubS78FK5WrhsiMjht8RqHyElexExJ68l4bWse1Pvzcwsc06XtQawxEnIRH
	 KKFI2mFJMgNfCT5O/SXBBJfiStwvJbp1GCrm/a199p1OSmJ6Tld7TUj6JVm23RsWb4
	 H+JQC1xXMcHuFW1qW8dnELfMBWg5lK7YkdSHoe0lMSY++CEZ09guDrv5pJ/cmpf+L0
	 YVAXALW7SlyGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9290CE75423
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656283358.13385.17829203548532891935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47751aea280e534436f73de528942dd617a3dec209edcf2cf7a83a47e8cff75
Date: Wed, 24 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766562833
