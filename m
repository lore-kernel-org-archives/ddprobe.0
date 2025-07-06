Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BDD1459FA
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751828994; cv=none; b=ru4svt7fn864/osUlOrgv3QLrsyzv2JVK9KoKP7xw4e+fl7z+hhe6fb3Q4ccRB942HDSGKc+4RGexLcNG3/v1YbBcgM6EwALh8r5xq9OV11G6Y30m9AoQrv6kfzl7htTxXs6+FzfhaQxi7qvw4y38nh6CfkcFWbS1J03Ca54xxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751828994; c=relaxed/simple;
	bh=xUZ3nA7aTeOyECWrMBNmggw1xHwtw7XvArA5NkXmSvc=;
	h=To:Subject:From:Message-Id:Date; b=Eai3lkS2g/S0T+mYIGfKHLA7fAcB0BcJsLuS3tmsz10Vmipw3QZefsowHFOu3nwbvJTKOhNF/LVEpKoaHkGLvOXLEcPjSm3G8gfHjp3YVlrD3R3TzdJM4OmTawhFDN7dBr6sce27ze96k51wuCdGMTjg7CPIh0Cb7g9D4rv71bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe5Ojumr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe5Ojumr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B5C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751828993;
	bh=xUZ3nA7aTeOyECWrMBNmggw1xHwtw7XvArA5NkXmSvc=;
	h=To:Subject:From:Date:From;
	b=fe5OjumreWeDqh9nPfcGjSaiVctpftBg+hasaMqDY6ayS3Ov9RTu70ImnEa1T99HS
	 bxwAhfBiUOwUi5hIVVLoN1xH3DfDL66EKr1/TU/s6Rw3mpUsKM42xW/h8K7TSroqWe
	 +Jcfh1Kn3TrzZSVS7O9Bc68oJ7qQZVpHMhpngwbc4A3JbV+Fy8nwaimhkTHATMes//
	 WZi6WnzYYaVf51sBqTqxFCpAu46SIG6BatIhcI1QnaDMPZqnPRy6mrsnP5ZazRxZWq
	 cRGT20gGkNpspA7xzajr9z6y4vR0AbciN5J/UHpdnFKZlZZSJRxzYwBy7z8izLI8JJ
	 uCfiZeBIuHTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E505C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182899357.1551.13303232662413907050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef75a1b639b6924b5e477a1f13325d0162ddb81da52d397baaa9e4d5747c8639
Date: Sun, 06 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751828993
