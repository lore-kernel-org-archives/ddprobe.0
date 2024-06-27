Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609764D5BD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719481463; cv=none; b=kxLLpThK906ikqzFQ6Hb18yjCeUA/oIdlU4gDGd9wQqJxXf5rW0sb8eSPLFmdq9TMVs9QxNVsGggs3UQyXDskOOXSs4jmXwmoYZfsQKC3JuYeYWuQPvrrUo5/9hoYPWuHM2jVKRvNIiSsZzgJ186dOKr9WcmnR3m0M85Gnc4zI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719481463; c=relaxed/simple;
	bh=o+6sah+lafRUbNfKQBvRkqrCIxswL4Zmou0ot5AUGIM=;
	h=To:Subject:From:Message-Id:Date; b=BpOXHY7WRFg2agWmVrKmvm2av2+YEgaz7tkhZa1mbV9y/No5ymZE77Ngq9TPyaJ50+gse4xCk77EbN3+Nc0XLcn69wNRdhmIjIrFTyGwNizyN0JuE1vHf7SqikX2gMP5oo9XJgrQawsLUgBVfMQd2Du5EUzAYY/QJZwsfwD+Mpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVyLi1aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVyLi1aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F3FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719481462;
	bh=o+6sah+lafRUbNfKQBvRkqrCIxswL4Zmou0ot5AUGIM=;
	h=To:Subject:From:Date:From;
	b=DVyLi1aJsr+TcOpUZ0hJ4f1YDg36xeYfGGGxLa4cql36t2FCoeKZcc2k2q1qQjy0Y
	 DhD0mU7rApskiCn+HA7LyrJ/lVnrS5owPbenRhcIYFonY5VBGOKmnyOR6GRnEUPvyE
	 G1MPQsT9lN6sNK8a3Wa246sO7MgZYD2yLrr0YZFlY8GGmjVdxQdwV+1nRy0JtKRhkV
	 gSkgc69fUy1Cbli2bVelFIK/bqFQMNlm12r8gsIWHWaDX/2Tr7rUHg7CvTFft4pX3y
	 O4UZmHRx22x0xHsXgisJRGtn2EwOj2HZudbtadujVGtyEi0eM8botiIBWC1fwGuejh
	 WaaY/ww1iru/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0335C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948146277.27617.11479526359149394515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb668235e9adf02a427ae07b4adb33197cca00a76d6fbffccabb3ee3e1ba06e
Date: Thu, 27 Jun 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719481462
