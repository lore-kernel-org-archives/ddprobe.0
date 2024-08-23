Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55991188934
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724423154; cv=none; b=Ye0iyqH+AoxdVleFp9sPb3fc21GDarWaZtDsUQyLu6NfqVnT6niY8NslQcBS8O7cfIqGm+SxaVWkKSZovkCMPLZoBhAkh0xJyuTM1GwY5X+pj3Xxsg4mPEJdyU4twqAAN52k4jJq9hRN/ar6VVzBkZJuH2tDMWBoQmL3dDqN0YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724423154; c=relaxed/simple;
	bh=gnfeU/cZqaM+n9TaI4nDsWynd6suMkB94jP5IGUwWEA=;
	h=To:Subject:From:Message-Id:Date; b=q+Q8nAd2ehbzRhwbKvP0yCxEJBWrO4ATr+yxUl2k4I9uzeuY3BJ1HM5SFZx5Z9Wk/S03XTZZ9y9NP8sRfnXwSTcXOj6DTJCwuf+2HLOGGrLs6S1ojCD1E61pGnegvnD/AIiN6wPO5revNdCm57YSShWaIs2mjZY9HRpKEPvzUDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6dS2uMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6dS2uMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD62BC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724423153;
	bh=gnfeU/cZqaM+n9TaI4nDsWynd6suMkB94jP5IGUwWEA=;
	h=To:Subject:From:Date:From;
	b=C6dS2uMlAbt17exoziBkpyVWbLPkfvMHhh7hyHhxvgPB6vsBcWwySAi4561H1hIxC
	 XGKcvMxnpg7qU2gFQ+TXiP5hoelf14oQwkkD49e6muHoZ1R5tKOvdBUdnJiVHekR04
	 YbuNrftWgG/bzLq/OysRN0SHr5GthqywlJFlwH28KD++wghrt3p7Pov9F56AcnPm09
	 lUayH9Pv90uI3fSjnWTP5almeMFA2u5Z8OXga4n2cd2WM1Gxc/9wNOFuyNbnaqCLm1
	 fISpGEo8/m8MiScLj1QEVcBDFvRrT4vn3qSQi4szt3lR+yG/bXwmTVSeTRrYo4rIF3
	 e4mcPR5AC0MEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97419C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442315360.7371.6248366138567615513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce6c1e80d2c72d3c6e7a807ce2c67bb4e1302458c57bf4fcf2ec2c29326c7f5
Date: Fri, 23 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724423153
