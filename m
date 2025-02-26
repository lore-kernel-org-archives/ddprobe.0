Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D3325DB00
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740614334; cv=none; b=MMjgmYodMvF+tT6IM8eGgq8VDrH/RibrbVL3DUPjIXiNDeRaGXZNKJNbZGGj6xYBy6OIwflxzE/GPOiz1LKvVPBSMKWxiXwXL9cgV6mX2xonAFDHqONSV7pvUCSEBaNg+yFPvbXm4T0n60krdlQz7PoH2WXWi3PUBYyzczidzDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740614334; c=relaxed/simple;
	bh=Bp+zBaufHu1RYkcr8hxbNrLCtqawLenZw3qXFSleTlc=;
	h=To:Subject:From:Message-Id:Date; b=RAdHGMa0q7AkiUfLla5h+CFG7mEigY0KVLtD0OQA7TH2WgSQ0bw/aKnM58AJqXtBmZB8Jt6OBwCA6VsYE7JTuVQmRhBreZmlwD1Fbwiw+sEKa7uzJQoXURO8bQnd0hAstr0dNeZjSU3AIup2Fh4v7cqkfvFcVN9Ajv146AEC5Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgpNFZBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgpNFZBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7443C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740614333;
	bh=Bp+zBaufHu1RYkcr8hxbNrLCtqawLenZw3qXFSleTlc=;
	h=To:Subject:From:Date:From;
	b=KgpNFZBkOoGlq5pdqYZ1fLp/9XYFFwTg1uqrpNjCxboOmj2fS4EPql1vzo6CFWPVZ
	 3IHZF6RZ5jWv3tHPWZKhWElwOHGxW7VQxCzYv7dPMj+ZOE7sZ/H6FgLQcopJWmLEP2
	 8RiRcc8A7cTl+TkuraqeKfEGr/I0pshI9kDLP2VK3SbQbkDMe9Bbzuc/I40eiAmUTT
	 nZ+2Rfk3Pe8qtyeRFp3oq8TVULecj1/gltlyWfYqbvlM9mVN6d0cCTkc73VKeE1vfS
	 w8UMbj4N5wumPI8cRT2hYJS31YN4MXhTBpSYPGzhn/GvVVkOrustQ2KCPLkHnajVLA
	 1efMYt9HcS41A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E9C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174061433358.16350.10097052919199488632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72eae7ba41f927718c8681411d158471a0da317da23a1fdc9ad20cb792986fd
Date: Wed, 26 Feb 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740614333
