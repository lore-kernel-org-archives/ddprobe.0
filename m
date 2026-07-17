Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DCB1DED42
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784320114; cv=none; b=E0h3+BihJmAtmEG6FFy/7WrAn9Rq7geu/k+TwEfC1wGW1HQNw/APq70wFsrsv3RzvdwJC2ClrB8yFhT/ayO7RtkGFIUbZohN+D+RpyaxsYKWQSOBtMD/tnfrGXcCxjjoJe++aKk5Ab6sYLuvdt4K9+P2wWN46wkK6FUZ9hrDbwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784320114; c=relaxed/simple;
	bh=24KKLK7lWUwspkFwmfUzBw9lzt9yJsl59MsRbNmETeE=;
	h=To:Subject:From:Message-Id:Date; b=k0J1n18gPxlPHJ2zCn6mLKIR/J0poztaTmGwGZEb0lVseIDazzAFaFptsvUQDBWdpJ4FWcTu7kBjMXjz+9UIpyDE4Ss6KETg02MX+PfXz0iYt9asr7+q0WLqYPm77KBjGGnmiEJHDyMHhNWniG8BVpxFcBkzHCnwdzb9uZmnzqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMmNuBpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMmNuBpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C85C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784320113;
	bh=24KKLK7lWUwspkFwmfUzBw9lzt9yJsl59MsRbNmETeE=;
	h=To:Subject:From:Date:From;
	b=WMmNuBpDBsBB2kWGQBkp4Y/fTSpe5xOrnpEw2fkeUAr6iAGmOjzRMUhsP2vsJnwSU
	 u8yBouGtQxJ/4zgnzWhkWAYUbKL+u6FrFisxwCRrrJbb/4ALBjdGOxYDYdaHDO+Esy
	 T3ZliLqp+ocGi8Bm8vh9m4OhAs5nkKVThvA/tl9wclNCy6xeplsIhHZRLtjaysDLzh
	 GfanIPm9CR2fsihPp5omPOHUaC9aVi+gHQtsPIMvqvYRH0DLqeJY/+CL+VGQrlGsuu
	 YvE2oaQr4EJ3Gts34/zXuwrSmWsiDrT3xNicEC5j4IkF48jNkLV8cYGSTg74SyYE/Y
	 FdAgIBk3owXTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAA9C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432011369.6221.13929097648780793833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0d18bb33078e9c611f6b2ed1dc791ac507e5fc69d14038b32c4e306280b703
Date: Fri, 17 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784320113
