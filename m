Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDBD2C11D3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770437634; cv=none; b=QIIBqstCofmWk0r1u1ABEFB6xUMVvDbeTTpoeJAnARQGGAgoZFzqnUq224kenncO39d5RzSP0PC1Xu74Z8ajNbSZFJPXUmlkZCjEeGVJYpO7KRxm6F4X+P03sgIX/4DLwcD0hiXB8jlw2rF8JbB43p3JaJ97B7voCMHjGqqIKx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770437634; c=relaxed/simple;
	bh=IFebeZmNpcqcgDaEX366GVD5lfV9t0TA7QrsN1Mr/iA=;
	h=To:Subject:From:Message-Id:Date; b=qUEbPglPMZgtftlLhOV/AJ0FKM9a3vnTzQKc4wh45kuIIHcCd9KQvp2SeCLCdstAAolSSV/qa8ko804RpvmHnisHVlFjO2aSkWkZQ3em8q+k/4c7YU55D+OZ1xXQtNyI0o8VD8eNjLt7eMlRBrCMt46qGCvmPs8MP0DoZILNm9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zjx1msD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zjx1msD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB631C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770437633;
	bh=IFebeZmNpcqcgDaEX366GVD5lfV9t0TA7QrsN1Mr/iA=;
	h=To:Subject:From:Date:From;
	b=Zjx1msD3LL02iHIZAqBohMNbFcDcufPX9MTRmDkuC9n/4KPwiJ48us0kOCYLyeRyz
	 eapPD1ki0P6qZKkXb4uAjZIW4Zg0vh+n0PC/j3RCOvwgGMxq5XyeIw3aPC0BNwR0wi
	 K5gz3aIvXd5yP4W9b1MPg4zIR2W4K5fBO1yOptEWIeelm5a1eBS+f8g4NPXXYeVmmU
	 KL5XNEoT34OU9iHb0Zr9VprQJIYXeaSFqIR4thLOuiv2byxeNScOXHliSOn2JjFYdJ
	 Wk0Q8rbiSU3R/aHA9KYy+/l6kDc7nsbXLCYk0lyZvBkxuMr43yba1pQeyDMryLYyMB
	 7UjofVNAxoc+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B16EE6B4E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043763358.10208.5301150920351339128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0d554b2c47a577c5cad507e7df1820f92f81518ad7f96f53b6af6ed4c637ad
Date: Sat, 07 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770437633
