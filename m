Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E413EFE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743956394; cv=none; b=jgIs22FrwJ33Tk6vMSu2Pcsh9e607gRoZy1ENlOrZvMYFwMBUdnvR4rTCM5z2JZZL6nwZf8FU5slI65P6vixzEmQHLI861qt7NcN07DoRInCnUs+PZtNQ7kcWzQrg6A6mCwGObR0+xTcdQQirUk5tsdUYzszBqpxvI/xP0FgA5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743956394; c=relaxed/simple;
	bh=l0xckT1cPZSiLZTC9jUq6PQAICsNjjVDKyfzz1igZRo=;
	h=To:Subject:From:Message-Id:Date; b=TZ3FeYr5OnzkXssP6eN0iEKNGSbEzmMaoH95WTcj/ox38sD4arF/qDDG03RNtuL82U5bvZXhd2Acvp38OQdtHEv9LBYQ9CwmxAyxGN93bzKWA3ToHe0YzMnVJb5ZG9eVWxQlrWLXEJRzqJeY/PVYe9KrQpPbUOJGESnhXwyx5P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jelRnjzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jelRnjzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB89C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743956393;
	bh=l0xckT1cPZSiLZTC9jUq6PQAICsNjjVDKyfzz1igZRo=;
	h=To:Subject:From:Date:From;
	b=jelRnjzz8lOBRXeDGaCA9mvJFKY6M4Y7J2u233XU4zFopnvXuB6QR/pupiyDiHNxQ
	 I7r7LCVPv3OWaFYvBlWCowyhSxwivXhs4fqEZ5Lj6jV7YJ4Y+ellajNqfGxxaUEpW+
	 v+ONKaNClCbXIp9+eIeoXj+xbADLzjwTAYLlXmfmSvmWJFS2mmAeq7589ZhG5PmW/s
	 uvvEK43XZ/B7KvJ8FjtdgiJdMtKhzDPJGwIY72EcfB/sY1PU5QPmIWwoP4VBvpvE0t
	 IUTYCTg/H9YOqRU4qAXjBZMWYa3nzoVmQgDnlRrC9BBrSlwTrDv8ZoHuOYThpVMA8X
	 P6F3Jz6YxEFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99948C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395639359.755.5810817956103214543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479577ed093057f78a0921483d5a3da4ea9dfe65d1552fbe2b2a0de5c86c91bc
Date: Sun, 06 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743956393
