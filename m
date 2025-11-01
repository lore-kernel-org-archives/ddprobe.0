Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E2028C87C
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761998394; cv=none; b=rVKxMvntV+eJrFJk08TWlkHJ5QkBCj/VPwx9/h8tM8ZVD4KzZ+YeLhabe5sQeGLkeLwJEYwR1QBkxsVZIhEbmhPsPbBKResu8z3ZDPLHpn1FYd/omMpzDP5peUKJTy6YxJjtJwnJj7RBZhcjFp1h8Y0+gBtzVvpbM2s3u1fE+b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761998394; c=relaxed/simple;
	bh=aUsTJF81zdw5s/lf0PxavCMu9Ovv65+RKDyksaofdRc=;
	h=To:Subject:From:Message-Id:Date; b=mfpXp6GdQUmdWkjB6gsbztfba9XvMgaUYnv9PdcqzC3HcxgGQDalhj4vek4RsABiMgZQKaba8BS4a2PwHL7LJZHBB/OvBHxDPZ8Ch13CSw2EhdmzaWqtVQunTNU8DaYAFsU0BIIM37F1fyxOAh6570djtAfVM3ciuG4lZFM6E9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZECjuqpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZECjuqpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE223C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761998393;
	bh=aUsTJF81zdw5s/lf0PxavCMu9Ovv65+RKDyksaofdRc=;
	h=To:Subject:From:Date:From;
	b=ZECjuqpD6os4V696wFWa8IOlwPcyTiB38N7GEjoTQrKKjPj3HDVixC/tLCGwP8j3v
	 EZ409Gh5z49sba+ZT+/enE6Dn+7jzbTDKnNKsLs4B34WqviwaNhXtTDc20/yGqzqWp
	 4k2hCYaUTWW6QTODVG7sVIP9cd0BQaYmYZ3Hea09oc+lmABF24jJ6px+CtV53DX5Zc
	 DYxKpSY/X4b2I5rI/zp2S4xoHumeV0jgaqtefxcQ7rratqgSQeeifnREsWNTyD3QCA
	 KBNdQuXvvaXs+eru7e1iILiUqtCHoDENhWn89+MR67T/eRh9YxxP+NAAXVTW7Je+G6
	 bil1LaYZ1uYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94823CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199839358.14556.17557307250911232642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79cbf4264f4f52f2f653ca2903b06f8cd3d0fab61628b3360e3ede34bea8b84a
Date: Sat, 01 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761998393
