Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DC81428E7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746905394; cv=none; b=MLgdXFFMyQdlAivYy73GT2/el1LAIwIOpj5KyBXyWIj7qmnze/SLIdxVq3qpkb9rqy0ir2TelyOHmzAJK/w/6AB+PXKzF9smAH0jxitwhplmEvcXo13vo6OdFh3qsYRUAZW03Sv7gqCj4sMMJqTOr9nbayu5sQuaYwbd5MN6chc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746905394; c=relaxed/simple;
	bh=zogtlsKCYApskKZ9FEQpHW4UGsLe5oHG0phIFPg2imI=;
	h=To:Subject:From:Message-Id:Date; b=WjxkM3ZrAZbtU03hGbwMYeyWzGfiOWnyQeiH6uwrGzzLSRab3l0gOkcyjqdzU48rxe0BqZQOjFSGnsCPD/54ni8ijsGd4Gi0bGyGqJDuvW6XCsLu4fiufT7owx4Mch4aJRiCo870sxCoDrAC1fClPRmKLgzUa6EQ1lOh2wvapFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVUvH3L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVUvH3L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C99C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746905393;
	bh=zogtlsKCYApskKZ9FEQpHW4UGsLe5oHG0phIFPg2imI=;
	h=To:Subject:From:Date:From;
	b=BVUvH3L+X/XHsuFqLgVSXbTexaJlF1mqTgpasyY5U11cDGv0T4IfTSp9lw3CMkLul
	 Xy0IcidOkc6KtNgy8EyjCMHBBODiH28nTWY6INTNSES4EMm0g30P6vDUROwUqHmBd2
	 V2JtNKNlkXXvegpZutQegcN4owyypy9O/Qi9x3cCq0IsqtPxjWbxKGCi6jMg+wmjOC
	 DEz+OrNfJwXcaW6ip8LNvK21Oc3Rua5onWuFeynDvGVQm/uKmCsVfHOTy/TYlDBt+k
	 YbZ8e9fgKLdoeBzU9Zgb48nGBZWwA7YO+TXbQ77F5ExDAlybOBneNsE8bOzc3aqLqz
	 bzx69SDCsW4xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B8C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690539358.13900.10426074551199492361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b41ed00b37c7f3898b5b5b5fabcdd9965bc2b93b15761c9074ec88fc538477
Date: Sat, 10 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746905393
