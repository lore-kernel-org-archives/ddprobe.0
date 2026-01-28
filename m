Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A1D1DF271
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769628833; cv=none; b=V6S4/pjT/bV9Fyzx5rgALmrmMeLYq+WSeyUpnM1XWkUTVW9FbYZE7pMhTpTxCpYzphZDg6u9TJbTSP6iqUSVzLCZUKNLr30zMRQ/Z24A1BUPJVCVrrNorc56Ze5PA7CrQxj86/vHfxC8TCDET0JQU05wh5KbS4obakxJ08IpPpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769628833; c=relaxed/simple;
	bh=BMUBBQcU5lsGhO/ASRUYOneNNiEJ6lLhXO+Ypdd1HJI=;
	h=To:Subject:From:Message-Id:Date; b=Z0e5n8afGwLcyo7KzEdEFZAaK1N4kfqUDaGgDSKBHn62b66h2a+288v+59rdIPDUP9NvqFiZsY9fVFQrAYcIOuWLYrl8/x3kEeAXQKyJjZGJhoDbphmY/8Pk3gdGhT1+Tm7J/bhQ/WsvzImVWONj1cm5AqyvvO3HLoxHG0vMdJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ytn8l0n4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ytn8l0n4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23EEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769628833;
	bh=BMUBBQcU5lsGhO/ASRUYOneNNiEJ6lLhXO+Ypdd1HJI=;
	h=To:Subject:From:Date:From;
	b=Ytn8l0n4kOJp1OtyaT5LpuKsFaVu/0q1XCLy4YPkg+APsCbrYGbJGLQlb4tYXpp7K
	 FTmeFWYwR2yDH/4giIuwiPQrkMVVVS4RLFcG6aAr56Nz6arvmu5n8pOpZjwJNaeaE1
	 ZejDaFlxywO53KgyOKziABUYnjfGoXzQbFXpWgMccgbmr/zkFWZ+5m8ezbfSvXiCQO
	 H6I5hXKoRF6HcK5vHs3Fq2vMVXXiPoLlxJKW0di0k774+slCCnCOJz12WW7yUFBj5h
	 q5MTxZ85bFUi966vRy5xsC7xI62J5+HSJAzZJgbmPF27B1RCmmSfqQRt+x693p1fGs
	 N+ew9Ls//3fRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E9D46BF6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962883358.14088.12394811737112467690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8225b22caa556753898765d4714b96a326c6eeed22aacaa272bd1a86e1ed36a8
Date: Wed, 28 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769628833
