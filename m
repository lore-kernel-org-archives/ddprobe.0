Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B01C13A3EC
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739468334; cv=none; b=pwgP+4/xrEYz3my6iANLEeLoNLIULRb5MTM5MRFBgu2PJsxlth1cUxmH329Eb8fyaY0kt6c3wmIJZcLHuM/1Su01RWrQQqcU7h7Xi5Joem5NAOf9AR/kgW4ef7GWYqzJBOGcevdga4qV3oZnn71SYz0KoRanLaHlOHTkaJIxDws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739468334; c=relaxed/simple;
	bh=2TR2HddIMQWa/fDgNpOxpM0hsysoD+CBk3ubz5mxHlY=;
	h=To:Subject:From:Message-Id:Date; b=UYhYtB5SgA/rW0GmhDOp8H6AS55KqCkQmXX7uvXg8HvA2Faw/FmJqsTc9s3lmU2uNtzFi/gzFQ5z2jkxS3+FNbU//J7FkfjY647TgrMNWVSLWrpr/mxYjEZKZptYmIMHZ/nytthVXxnCDPSUVlBg8jdtZ+bawDStBoSho+DPzPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBUv73Ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBUv73Ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57A2C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739468333;
	bh=2TR2HddIMQWa/fDgNpOxpM0hsysoD+CBk3ubz5mxHlY=;
	h=To:Subject:From:Date:From;
	b=mBUv73TixBrJiIzJ8D+PDDkQSVFKnIlLSwu6KQO+MsG6jDHwodj/QIVN2P9BsCr/L
	 W6bitdr3cmor99TctoL5UWO7y34ybSiDPwOulMJy90NXr7Sfm5UW4duHYHmQcSWQGJ
	 6ilYT1m9PWy5Qi58wnWeOSCiDz4uEFJSMtvmpuYUuJMmChKUrB3qeB0qlZLR+nfl7x
	 elBE49+TzbXszF62CasIOPmn4kgVFdxbyu22o2U4sD3fiHEGSKtCn7jvUPbV1r3N9k
	 x/BI+Hz+4YVKcPPNdHhyIU0v43QEv6+WwMplPbdl2O32FPD+Ip2yu8z1+WKUs8q8qt
	 MFKqHcL4fG9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B69C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173946833359.7672.11495678954811231787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790d74de78ca40e9dd1ff07f20353e2e2b6987f55a1be132a6048d7004d81f2a
Date: Thu, 13 Feb 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739468333
