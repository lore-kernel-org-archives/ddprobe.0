Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A91833CFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742156394; cv=none; b=reOvo+ZmGIUHGtdASbfrGNf9jkytnbXblQM5sykrKRujMr+J9+RbVhUKV7C3HLpAVSpsKKG0qGJBjD92fUN0/VW7MH3Bf7t6r+lVAMXcr9NiK1NYl65U59hljlgodXKjxpGi0fwriZAREYZFfr2zJzg3wrSOnH3z97ekEIBmkG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742156394; c=relaxed/simple;
	bh=axU1qD5VMcEkDLouJV4iwvgZNZ63UDThiM8uXYUZhno=;
	h=To:Subject:From:Message-Id:Date; b=QvOZpm5NpIWuX5SsOeXbdNUvmXFhqXqyl1iAOHBNTxdRMrS0vxv3CJi0OzA9U7iJyUb5hFMs++0quQKFvI2EwtvVf1r7i0ho8hAEWF5A8S0nN2Ywxq7+zDDv6oBgHTarhFNSRl5oPJEwTh98mh9B8C8oiWi4VBntWFvHsdvhNeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXY/Zf0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXY/Zf0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5548C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742156393;
	bh=axU1qD5VMcEkDLouJV4iwvgZNZ63UDThiM8uXYUZhno=;
	h=To:Subject:From:Date:From;
	b=GXY/Zf0t0Bx0qGSHWLXIGwx0B2ksmrQJieDklSQDKl6LA+LefGVvWl2wRmN9DaZBT
	 FbMwPOFjjrKuJFwfCcRQiaXX/HkFSdCS+Uoe0rRoJ5hwQLE8tE2WL8/mhtD+Wwz6dj
	 /rZmghvPfS/iB5dKLtXaAH8k3gNeiwrwvA5RpeC8fhsLurU2kdYj/BNZ2VMuM92o47
	 6NhGnKtWRx21bHp0bYqOvrO7Xf24lXkt2ZmGqeRmGUQ6Zogl8d7PkOoOiVcv5GJFOb
	 K25jS3y3PpMOOh/Xih75FNk5kqkzozhijBqzYYvFWH8rSjg9urX8XN0qHwIXVDdMXG
	 yYvtapL1K8dRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D34AC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174215639362.31473.13295208679641507593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18abf05f217aa74cc064890f8f988ca6a8782ab8f31daee1e16540c908fc1f23
Date: Sun, 16 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742156393
