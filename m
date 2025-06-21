Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1681C1E5B73
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750545594; cv=none; b=qA1ESdr6wzSP9L0EiCTqM3ccxogLgLNmGYHr9pgbqqMDtzC5hDoYxWMAziQmm/5tTdNJnFhTarlRSE+KOrfGfLzS7knIl/sYzwXKNAG3v/2Ilozs10MgWEr8SAk5hpbJsvUK+6q1HmeWzbzW+656LQxflGzMmQP1Yq/gsKhfWno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750545594; c=relaxed/simple;
	bh=2Y5eLqwGAZ9dQrVICkZyH/GdhalQNDenLO+E7BWP0Ac=;
	h=To:Subject:From:Message-Id:Date; b=WDyMvwDhm2wupIH4/PYf2PRHYziUC4P7MCAT3lmfgAgc9+pnMHvQSeTHqYu9uxAkpPW2BoRHssVbTwR6+qIUWgYI41rClJ6YyakmfB3kjBhIhQPYoeNFQM4sZ0HfzSj1OYD7WFWGNQYXvHNmye2/abP11LTMEALJp66aaujQjDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIGGCgj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIGGCgj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750545593;
	bh=2Y5eLqwGAZ9dQrVICkZyH/GdhalQNDenLO+E7BWP0Ac=;
	h=To:Subject:From:Date:From;
	b=QIGGCgj+1UI79MFZPFM5wutO+01yT4+u5EfXEtQ80cBQtKzcRHU5NlFW466eFh0kr
	 4vwp82b+O6S+wNLuri0kJEazU/qDMga7SmcggkpuLwjik3fFfn7sW38LQsuXtOj58M
	 n9Oe9v7WIzkPCC2BWOOIM9Oa1HE5ATL2e2rHZP8XZLLGNKGanT1Irzw+U2xxlhKi1F
	 qCyqgQKHh4yWott1omrP9gA9T6iGLV47FPkfcWdko41m72pgzCqNAH/blKXmalWgz5
	 X8w+/Iu4lCbBeydv5m2xLmBnd2z93LsFe6yHtp4Ht5XodHhuWoZiRSv4XuSH76V0xK
	 LlP7AKfdrk6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E9C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054559357.32550.1555475432825390099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da9899fe99155759061ebd4773b0b3f073057f6533fb5002a71eaf8c2a501df
Date: Sat, 21 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750545593
