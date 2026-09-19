Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE89D24336D
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789790434; cv=none; b=ZIfZJYI1rl0oAhLMYJDKPGeWehXGNjUm+nm8iua6FTQ1wS02CAtt3BoJ4Ernmcqpe4uldH5sKNlzGY8cYYDz2/Lx9v4jffhwbshCbYUTXxCTjiZDzzn5MYrvdvwwZbwhuaqBL3h/BUbx0kW+ohgTPYX3ZiK5u0U3Mnj8a7+Pmh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789790434; c=relaxed/simple;
	bh=o2cu5lwX3p5CILgkvRsQDJJ3gEnWmyh6tSdkfONvKxU=;
	h=To:Subject:From:Message-Id:Date; b=Gf76aC54nmNddsPsNyXmcZN6ujhSgDJ9pcgM7WY8Y/WveAeCtHt3O2srPMwiPoR+2K89gGC5kU2QkxCN/i3RKiRWZM5iuEeW4zs9lTJ0ZVhHZ7kKEcZgV45P8qWfqhn4QdXjPnLtaYeBEZJozgy0XEGwmXe+Abf5R/zSesDNR/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5ZDjKjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5ZDjKjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FB6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789790433;
	bh=o2cu5lwX3p5CILgkvRsQDJJ3gEnWmyh6tSdkfONvKxU=;
	h=To:Subject:From:Date:From;
	b=N5ZDjKjhCK10vFNBqqaSEL1j4WkOKySgCj7IWHTG3Yweqz6eBdEQYb6LZ9f0o8FiT
	 ULCUPmYsRYsGwmpPa2m5n/xdcU3P6f3SY6kfsa+0Uy6jDM01G5q3JZ6utlJ7XjeIO2
	 5x+/+INsUx6IOq7Wj5RD4pNDvMKi8g8I9Q0DC8MQWQ0/iwwiid3qcfBrvebKg8CgfV
	 RVisZ6qN1ibTXBZDR28nqK2cvE/aFGE+gGjERH8mXAjneksLl6ixRy9+89DtI44spf
	 imjoj9R027mGrOlLdDPBSymYlq2P7YmZtqkcJmvI1CThR9j/GvmkHfcR/nAUqFtDCT
	 x8F+qfp/g5KFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C5C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979043368.14974.16952010035253531827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e8d68d16cd1911770c14d96b1b8e4ab2feead27c6fcbb4e45c8d66ed9fe345
Date: Sat, 19 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789790433
