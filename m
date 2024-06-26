Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3150F16089A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719397403; cv=none; b=nEmap0rRi5wySow1kdbSYd4OetQvFdCjC0/z5H+xvLRvnVhb8qtRCat29uUrX3iGEOS5pBUc0oJ0mLBZIudsjgepL+B2pSK3uh5FYtspg1UlQxRjXnyxpoKG2y+Y0eJoQd/s4pmZfictKGvoGE6xQ0ioYIYSu4BqVzPLYyELvno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719397403; c=relaxed/simple;
	bh=tDtRZEbts0jIfJMqST61l0XIXITsQRSjOGQq4rmEREk=;
	h=To:Subject:From:Message-Id:Date; b=ZbErwzZRW5X9O5k7hShZombui+R7mBn2kC5+bWfDqfXlxiynxSzZWiE5gFZFPd1//11K9KJBYb7rDgagr2DeWUx8bKO7T57i/3KAKJZKoOJfPBTGv16qp13NrLK3G8HCC/XlKhgnaE1NHgScsku3LGr0boi75FrMmKGIgxJah2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRoT1EPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRoT1EPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FD6C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719397402;
	bh=tDtRZEbts0jIfJMqST61l0XIXITsQRSjOGQq4rmEREk=;
	h=To:Subject:From:Date:From;
	b=XRoT1EPzEzwBTeTUWcZ2fjahpChHf6kmatMv0KZX6Ddsp1RX2G5Kh3MT8sm8r/sGf
	 UMS8ddt2TbAqL9lo4qGwjH6obDVHOSMofY3+PTgpZSit6zIpU7vAX6qUya3cSneQK+
	 PL8eLLnw3QKyeGt/dk9hMyvrbOK02FaeosBGbeubTY/4Raady9aawi7jgYcF8uWxFo
	 5WLmCMS6eIbZz5eltU4HjoLrP1q2d/uxTIoY3tPUR5TjVx31nQSwapeFGPiaVK/8WS
	 d1ujnUqaUvJuh8AFNAvbEVWF4FI5OskrDnDXzUdoYLT+gsJqIWwYzJjEYWg5zWitkp
	 iPM7NiRHcE3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD6AC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939740276.20179.17542285135852615618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91921e3a9f57d1d99c289ded44cd45353cd4cfc86a0c1ae5e1b01cd01f627d72
Date: Wed, 26 Jun 2024 10:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719397402
