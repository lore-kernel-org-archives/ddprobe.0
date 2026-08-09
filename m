Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88843CB8FD
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786279234; cv=none; b=dJLZ3ToXQmu09xsXnMX4K6NJess7TWkGcNL3Jac1ZLE2vAPqWPO6N4l7tYze+ITz2UA0xns2CxcBKD8moQsiALxS3FgreADvvDTmPOz5W1avE1qFxBMdRkAXp/2+qmaS0ifC8aAcHU5xkxSqnVtXcOT0HEKdNPKF0aRYnG6tynY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786279234; c=relaxed/simple;
	bh=TETNfUOxIVDvml1GdX6QJUD7GIWVjlKmJKVL2na5oG8=;
	h=To:Subject:From:Message-Id:Date; b=XT+ZDNFcX1vKgmwla+2+8ZGvEqpabzXV4f8pmeaWroPReoR4j9RSVfkAoHdtQlhCqQN3HcyPGqjJ7RzwrI+4mXd5ycxVSYpqTYDeX0xcIeI41HzJfKrEOMJYShKAlhIhm03LWguZZoenqXPpDea8RS+Oho5GT+P2ee+XJqgaR+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jmy639b3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jmy639b3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ADFC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786279233;
	bh=TETNfUOxIVDvml1GdX6QJUD7GIWVjlKmJKVL2na5oG8=;
	h=To:Subject:From:Date:From;
	b=Jmy639b3WzwPx6PJNl4J8Y6Cm9yfnSzVcGkhmM6I8ipXHjeHfEXaB6hFzDuMr0SyI
	 K86GmIO17WsJYEDF5TS8oXA4SOAxbSLSxmFhZdH6uC335z9Zx44MQZqTKRRwMeXBO6
	 74Caz+HkXhQ2lw6Juqx114Z6zcnxiBINBJssz/4QHO3PFjGV5VP6YYuXhnBbhTLfuk
	 Gi7rNUhncZfrbh4SN3qTqV3c7lULpxVNz7tdNF/nigoLSutSTNmDKsokLPv9eNgEpp
	 D5/ugoLwdkh9quixspuyt4O3VGHx58EwhwWlxkFzL8QtOYjn5OenVig+sTxagT8Mvg
	 LtR4CWkrpaQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69AC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627923368.4067.12322128277852948699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94ffe2916b8dcf837c0c8c5e9c6d8403ccb4eac97facebe58d723cf39b0f56c
Date: Sun, 09 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786279233
