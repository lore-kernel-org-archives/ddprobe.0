Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3823740A934
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788343834; cv=none; b=B9zhxQklyeM4Zjz4WpPH7xEj1ajoLfjPTN8MABcyWbuGFsCe+bjn2YlWVw5JC61yEaoLB20UkJyKQpy3RJ7kmkqkzYXc3tYbz72fiYQ6wmpxlp8crs+qstKf1/095nfbZGb7A5M/X4l1vNMt4PJmRKi/cL0Xar91uJe7BJKeUWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788343834; c=relaxed/simple;
	bh=Psw3b9/U2nK2TVfLS9JYynBLWTeWbJEKQwCq3gqi28w=;
	h=To:Subject:From:Message-Id:Date; b=ao7pKE0U6SYImzyjXMc3Km4WANdW4c6HRczgKB72wUVCy0P4M8Q4GLKDvqcwSZbwb2Z8l5bsBrqn+zjZXKAD5ph6d51N4UvLrBIldC08NxEWWhYR8ILr4ND/5Qm6xiEreUgtpYpY0Cl5mpkqa2hduKEGWLpu/MGRe3lMXxTh4tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edkSx0QI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edkSx0QI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4453C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788343833;
	bh=Psw3b9/U2nK2TVfLS9JYynBLWTeWbJEKQwCq3gqi28w=;
	h=To:Subject:From:Date:From;
	b=edkSx0QIrH/iAEur40DG8J9nE5bjhO8p2sgfwPeu/Jy1i5RV69Wrm1hM+oeCaajfw
	 JhcwavCjySaW/kusBBgRvzK+yblSxPXCypBh7ZG1F/6G+8c++q3WyzWXvz4EnVmxcl
	 uYnir7SCDWUeS3Z68UlF5xQydg7kMYXMgLVOAP0rzMS3VV+ee5OwESCXevWnfpT9Jg
	 oBJWUWzYzegb3cD1OLH6IJ2xhrZTo6UFgxmospLFJ8/Frnbcxr8q1YnVQ/JxhAUt7o
	 hFU6KXwyDArSbwZsiqSTkEpsRtncW7526SyV1Yy/gg6en0x0e0in/+bToRu3kQPwsz
	 fRW1rO0weVOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA583C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834383368.20978.324309176992136217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40d664e9806fff4d73c2816e5d256f8a3067b4ba8a2cf78036cf1c55effe170
Date: Wed, 02 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788343833
