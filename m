Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB2F3B1A2
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 06:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741241934; cv=none; b=pi89/UGPJyKBP6Jr8rQPzm0qIcUXgy4j2+ZVvLWuDxQGAdHOfVMXnhgvyIU0v+PNHSXweYL8DdFavzO2xCjD+7GuYkvJjPEBTllsrD4B0PnJF/dVZsqw3nprKzVbRbnMM2RArq/h6zbrCSAS3zPzYFvWrjybK5bmg+RJsZkCvng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741241934; c=relaxed/simple;
	bh=P0wtLFshI5BbM/0nDKS+oyyRyDHjpZXOCREvgV0/anU=;
	h=To:Subject:From:Message-Id:Date; b=TMqVStYJcCQ8QW2TH7I20vKMZUfuz9NMDXRJN3S2hYXKMMakkGqLM8kXzn8XEZMKheHjlZgsBLvDNBvLLqw3kg3silMyDKeBEsftvRHqs6ZQkN9BsD1mG4AeO6dXiYWgCutI06YHCWMVrB8oMtJC9KEnGltEu/kjT1ScPYI/A44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+K68rsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+K68rsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 06:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741241933;
	bh=P0wtLFshI5BbM/0nDKS+oyyRyDHjpZXOCREvgV0/anU=;
	h=To:Subject:From:Date:From;
	b=J+K68rsRKfY+MHs4vawOggWphJcBXrDHytLcqo4ao1W5b0qW1pm0UCuUlL1pe4Gm2
	 xjZfusQSxaeyGF9eVjQF7dVGrhalTkziyJvNzKYw2gUsztjl0hvIa03nJtmQ807q0j
	 CI62xhjtAewl7GCubPMbZEChByslP9vw1k9oFuIktWkUXX6ZAOoV0Aijb+lzFcvIJf
	 aAKexuJwDindSjpzo7Ael1V4vPRSWTNjz8KqlVFTuamoxrwV0m9PRZ8SEN312WmbYs
	 uV/SqZNxwAwfTVIuYr++eJ3fbZNhtSxphWWvegzsEbYrRcIpYhBBro5fk//1FDvCMG
	 Bjub/dd0hS/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AE3C282DE
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 06:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124193361.8635.18048678945042545605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2e1952866244efcf441b88be36ad3ea931e069557c2e81aca35e5b472151ab
Date: Thu, 06 Mar 2025 06:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741241933
