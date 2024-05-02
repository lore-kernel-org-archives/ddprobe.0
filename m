Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEB818E06
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714608143; cv=none; b=tNjydlBO+gLk7Fkngbrd0jEwvUiaGr8SrsQYgBWKnBGSSeN6S9l93ql0pTUrD1Sy/RRt9MiTgl7JZqgwaCRk1UPQ4onnrMnHneSkCSD6ORWoGD8rURIUEMWSqnu2qvY4Ldr+JoGJqKnHpDDdS21esDH0fOKvCBO0JFmvznZAYCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714608143; c=relaxed/simple;
	bh=wTAq8ZuBAZFD01x/bCTqplvbE7KGWz9bWSr6VElidzg=;
	h=To:Subject:From:Message-Id:Date; b=Ta1iyKNQ49tsn7UuiAfa636TOIuprO1+f9CLtozNuG2LGa/Fke9nm1IHMJ2aIaakGshpt+6xD9T4HbzjSnpQx0czaiWrtTtAMOLaIhNnQ71KFH6BMrMZARX+qrAhXB/YIhk7DWhYv3YcLvyq0bMLMtI7BR+vxERBX9K0LpDlub4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMwHQZ+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMwHQZ+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22E4CC072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714608143;
	bh=wTAq8ZuBAZFD01x/bCTqplvbE7KGWz9bWSr6VElidzg=;
	h=To:Subject:From:Date:From;
	b=vMwHQZ+6wYP/++d4YDO9/qXUgY7J+N+i1tNVarHcusWlNf8EY/ij+oCOCBXQQ7dNd
	 XCZ592uweGPumyKKXaOw+CkF93TeEkecyJMZCFFyhnHeZG3KYuEObrVhaMsnJ6HCFA
	 H8ULYPUVw5bKhHqk/bTR74+jbxYFlxTKzbgWTSt8pODEARG7w/wfiOXWok+ovTVddS
	 BDJduNLCCzrOOdLaVATZK7uwWiXxrqtq4WCoNTmvT6hMEdZd8YG2dWYd0RSwkQ+6bS
	 ODQbhgpRNYw6ALVTxAWKv5iq4sJ405qO+M7MAHPYQFZ7GLqEb8hrnM/SgEmysd2WUs
	 yZqcFfvus19Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06E0CC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460814295.6873.15041168951793912451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954741fec4f6222c37e6a894e2d5ee685d0d27344008d42ce70b14567209c7a5
Date: Thu, 02 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714608142
