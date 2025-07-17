Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A52FCE33
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752769794; cv=none; b=kDDAPwvG/f0idfAwA6Y8QnCCkTH4cIYEWzgKj2ftnCSv1W1/6N3l2zH9xeyRGoyXDHVnvH4ZIKdLxaqHI2PPO0d0KVGsnh/Zm8DH+peh90krv1e3kPfp7PHyvfTPG0tJ2cu+D7/HCC8rQN6saxFE1t8FLngz4/EJiq6Id0GFi9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752769794; c=relaxed/simple;
	bh=rhLaBOKXzdgeZCCeNBuMQbx0FMBag38DKPFynyxkjgw=;
	h=To:Subject:From:Message-Id:Date; b=UmyEmC5ehxILjYlrxYxbj+7ojOcLJbp8BNjflupNZ16rwQal9uYH1I8F0Q8y3iHpUzXw0qgfQXD3uxyjewbY6i8J2KRrtSbRMv1zrDYAldUcppKd4eoM05pgJjoXEfruQM7qohDEzPoRC4qTtUWCsPPBCHR+YVwnV7nEi6ONqdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+MHUF+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+MHUF+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01E4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752769793;
	bh=rhLaBOKXzdgeZCCeNBuMQbx0FMBag38DKPFynyxkjgw=;
	h=To:Subject:From:Date:From;
	b=K+MHUF+AhtK9pHNM3zeOd3KZAU24X2vufBGIML/4CAsJZ5TThvSQ70ji8L/TGXibp
	 k5rFt48hek1v7RcWULkv9wAZPla0zeimyGRvlr8r5Fj8hHwStRx16lYXuMTnhUdSrw
	 XphHXhTdxMECis3YraPyVr3nuQcOJHmgOFaB4Gr8x0EURboHJSY/urJYC1fSxmBlkH
	 r8gFaGKjqdSGKMSAXDqFW8VrYCr+qsaPMiv5Yp6NR5PKXYDKbuKmrkMBsnkeiKJbm6
	 vTGfiQ4APT83izPHXMOUwp/AeHYR0nzJ7SH/YWipqZ/tSJBWb0kffa5aObnugvX9i/
	 a9s2d9/Xf/BTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5B8C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276979363.6366.11415906016922882768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a0733ff142600c03f28f6d2c02feb00a07de34969a496d4297a42d6231e5a0
Date: Thu, 17 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752769793
