Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F42A6EB53
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715775743; cv=none; b=m8BG4TUGvuJAl64OrMYI+ggtDLU2qJaeB5lLPCpHFlIWhQ1B/Erru8TLYWNslvlUJaiV4d/lEp/1hWg0yTbb45unU59H/DHkK4dX+1VzfTUxf2K/lKPhp2fA+ZIZWgibFBRv8j6ZHxHAS/YJ3DT7ZOz+y5nsMBmH2oLjHpas2VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715775743; c=relaxed/simple;
	bh=SvtnfA1PRBljFYn4sQtvLr8ssjYB406pvsOKBQrn7OA=;
	h=To:Subject:From:Message-Id:Date; b=UMu2po6UyuOXGHt9LFGAQyZjor3Zd/6agqo+KIC0uzzd9Ma+eZWI9wqKRazclHA5VgLpU82dAZ/aeUZ1wRYovhioQf2cANteWufJ7P8xoqBrOrpQzJQr++n3iQG9+yUbYZBE11J7I3Dwm+P88l8uIkySc3w0qP7ZgQUY56w7OqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqRCxiR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqRCxiR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E821AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715775742;
	bh=SvtnfA1PRBljFYn4sQtvLr8ssjYB406pvsOKBQrn7OA=;
	h=To:Subject:From:Date:From;
	b=BqRCxiR5YI3AJbWmYnEUOElhQy0XbejcI295xDEqhIdFC/9YBYTvpZMhhIdMV7/IO
	 9cj42IwHHwxQ3Cv0rE1qEz6G4GCJqcUtJuJJ3xcLvqQLT3oQfQ/Rn8XQobtX/3Jy/J
	 9WbCSK/pcfhA0I8myVHtPuHbQesI4gfj0riLjiQGD0CgvI0B4XSXvWh7MDQ3onEYIR
	 RBcPiP3IByuh3hL4MTxKY0QxghSREslF9BO8cDHHDEwGtx0i1uM3fREIIb5dFWZyHb
	 n0gC19RckLPrl0r3QYASCnAt4KnXIxFVUvpVKiWtIt6csLySrwr/2yWzfNVFD4Jp/W
	 1y0AuexisWZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6858C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171577574280.1475.4128415886778411312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10148aefb991d8b9749197d4a0e2c9149c13c154ad3a723476bd615dcd23346c
Date: Wed, 15 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715775742
