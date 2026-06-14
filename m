Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5944227A10F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781402194; cv=none; b=i6J6D/5SxerYIzgGQcAcX9z8CAFzphnOmPumOZKTqJRh1/K1C0mcwISyYKXjgNTKmQ8BE1EomIgyZeGL0or9AAEDKRwAwvBYpVM8oDRfzXVTGNEGLTLp2skmLeotSP6KmxqF8eBY3QW8q4zdQ54x4g4eqVLdE22FR0TnfGSsJ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781402194; c=relaxed/simple;
	bh=cLGEH/mlJjuijvHhsTU7RxVjk6Suzx8htOu9SGXtnx8=;
	h=To:Subject:From:Message-Id:Date; b=ouqtM681mugghlpserWW4tztts5vjfS5noTWP8rjNeVWpLJYEsgMpViWaZ9bNqpN+gOvarc0XysLLyLPmyakwCx9HJwsCSyxAem9Bl/3uQ6cpfMSgNo8FtS6ZUKAv6trLfl3Bumio9Y5t6jQxtQhTHmH5nlQP31Oa+YMGSRf84Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxhWhZyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxhWhZyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7B2C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781402193;
	bh=cLGEH/mlJjuijvHhsTU7RxVjk6Suzx8htOu9SGXtnx8=;
	h=To:Subject:From:Date:From;
	b=jxhWhZynOG+2yyxc/cc8ZsdX+ZjAn2qXXYRVj7DUyewiC4mEEyK3FTl/MeA9UlHGB
	 CRchSFtbesJSGPLQQClJL6F0ijKMpyh0pI8s5Dj3XCPMggK96ltFPMmAKhWaW9pdh3
	 KBn9U2bUK9HkOFSfZNgDrjpR0CIIhYPjc/j9QuIEmvPPfMeFqVQ6H38wzFgdw2nAMq
	 T1ZX0dhKYTxvYiJUpc21vZx2xRUNgkYNAR31bVR3sqU2IkujbllY7rEGMZWm25xeiQ
	 ryvvbrZDHCLtbHdX+oB3H3Fw8jhYOf8Pj8XtICdySqHptRaZAVwJ2tWYM7EJ7Uvjy4
	 WexNJADcNgeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBCCCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140219368.9066.10953484180007460346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f078cd3569cd16dc0b3a1f9176c335d835e995820e6ab0eb2a1c4e12685b67
Date: Sun, 14 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781402193
