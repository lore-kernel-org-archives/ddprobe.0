Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1613BD224
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787736034; cv=none; b=Ag/FY7Fzu1pZriKr6i7JZlD8vJKRIiErX+f/+kUt04GPCzix59+MU3St9jcIg89S3aPAWMpHPCcEHpfPvM+AB8EERbGYe7AEa2ylAc9OSd+/COV51VGfHuggKcFJldyzI3Mt5wxItt7zXgsov8gpM3tJFl4LWc6vTX7nlCzRL/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787736034; c=relaxed/simple;
	bh=LZoew6LmxY4mgpbzKyeaIWgx/DgDZ6CMTvUMNbSYuqI=;
	h=To:Subject:From:Message-Id:Date; b=jfiNubzfxMegSoDM68Z2kUvG6bqvj+CU/zd5UAigvwdSp3tNF+4/hBDmsMPOQeGsBcC3Nf6LfnLn3tV5UlSxmEwwzCJGieK1pN6SERdQMT6QOGFStflmAZOvJcFCELJx9IB3BvhwxdPCrMQ4nbO4OMLxL3g3K0QOPxJehceY/wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2QUnqn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2QUnqn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA39AC4FE91
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787736033;
	bh=LZoew6LmxY4mgpbzKyeaIWgx/DgDZ6CMTvUMNbSYuqI=;
	h=To:Subject:From:Date:From;
	b=f2QUnqn5gO5TAAu2tA/gxUc/gT3xKqoK/WtHsIKlr9Hcskqxl5g+GV5aJnLUrf3gd
	 +crJO9KV2CMnsVo/xVVvXUsFEj68SchNvcletP8ffjJCn76vlr1YQiUZ5I4Zsf9qgR
	 k1eR0K4pIgmG+ed3Z9nbXYkLkLDjLSlZ2gONjRNlqFjMLCMDzQWpCWivwjpBMOyFI2
	 xCRcQNBqYuxlLeCpCY+D7mMPQvigf3bue3Sc0mwT5EBvKsC+Jq7cYi84pUz/Xu63Su
	 /pT1cu6fp7G8HaHkUyWOdlkQXOUzkE26TcC9I2c0hTebb9e88KUMrl9B/pSLhQlE/Z
	 3LP3swmiPfOtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B31C61DC4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773603374.29343.10826173112148401516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3556d903d439d888456477678d6788cc0bee7d4d5cad0f7d16ff0258ccd20a4c
Date: Wed, 26 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787736033
