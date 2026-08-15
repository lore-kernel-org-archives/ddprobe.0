Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4681DEEA8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786785634; cv=none; b=Wq1DP0IO1TDGmyj4++3SncxIG3eI/cv5Nxleb4zJ6tee/xFG5CONiMr8/nYPb0DZ2/F1cFeyEG9pW8vbd1fQnBgBroj/mP0Jjfps6wgHUuWEp8W5unHLvxnmigZy838CRNGn+rBOxTLlIgwQAzYSEIPp1wTaekdWsLT2sEi6ci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786785634; c=relaxed/simple;
	bh=PhMnrv87LHY9Myc0OyIO7SF3gg4U9OWhZRxdmRdTg8E=;
	h=To:Subject:From:Message-Id:Date; b=nNvkmKSYgXCwiu1Akv7wmNVXncIelrBznb2v1aOA4PRjFIlon2xHkxmYzlnsee6xkyYndfs2KZiDFgIt1ktR52BuUggUl5cPWutl+nft1ivYYjcBIQH+MEu1T1QRPk+xxUWvfYL0POOxk3Z5pYwojc1RBxuLCXJwm1nFwhFZ8UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGceqQTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGceqQTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68B2C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786785633;
	bh=PhMnrv87LHY9Myc0OyIO7SF3gg4U9OWhZRxdmRdTg8E=;
	h=To:Subject:From:Date:From;
	b=CGceqQToAwPK6B5hnihOvy7gH1UBhz9YbLHbr+3BeaEFnjumqorqvdF5zAUJLOYRv
	 Rn0HFEmPeDOCRxGsTIrg6OabtHY5z0vIxOAHSlzsJqbgCFO9s8NM4QofCDMP97p6Q9
	 5o5CGjIwMh7uoIwT4oxMnkXyvuXAY18i3/WofrccTqh0Vu+NpcvFlglUNLP0JOa6GK
	 vOLDZzPN6ItPNv+2S1Ly38snTImJFfI41fHqTab/W25mj91oxBmuID+QfxUBIIlSzu
	 gUOqSxJJiJlpUPph5jJOAhwbKacQtev7QUrUe1X8vQJt7XQUZzIjxDH+4/RGm+zHr8
	 5t9Q/WvZuXYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B158DC5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678563369.29680.390098376988174600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bcc7cb1cc002bb8b93447d2c7fa0ae0bba6fb727a4ca999ae117581b5ea40d
Date: Sat, 15 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786785633
