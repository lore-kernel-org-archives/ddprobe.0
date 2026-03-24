Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CA839FD4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774387494; cv=none; b=Fxp7eFN/z+I/fBYwc9NTYl6Tqr1gb4VnQORPMJhzMUOVqSUIshPiOydHagRbQ2+NtXNLLHrAi6eo6Inl8DJcBJtK+4uVXwWBnwzSg+FDLPoCj9yGWJ/fWP/dyokc+7qpPfKmyQAnC93AKmqHJxieDMsKVNEtl/BxMohttLChte4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774387494; c=relaxed/simple;
	bh=tFYsOXJmOC4ntT214IpaWceKDg7ae2OsenzDGem8HjI=;
	h=To:Subject:From:Message-Id:Date; b=kCFgUJvME6PDsGbqs0/eb5ftXVwyOrj1AzujvkPazI3Yo6DSbAO9/wDJLDCbTmedWrUI7noteq5LSn69QEjPw3x9GaXQArt5gfCVvZthofkzP/fKngRoZC3+2lHEtiO9KDdiZa8mZbWi9uNtZkkWjBKYcPVFug7TJiyNXK/t1NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaLvMjRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaLvMjRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A401CC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774387493;
	bh=tFYsOXJmOC4ntT214IpaWceKDg7ae2OsenzDGem8HjI=;
	h=To:Subject:From:Date:From;
	b=XaLvMjRRVgMAuJPp0X6SPxKvcbZFHK6s9rqXdVX6wf0uIXwERA8u9hFfVQsoaXf7h
	 4SJnmxEZH1A2/bqcr4ILgQJaZo8cOccAwOlOnNgnL5yolK4B3RBQeNC3MELiVU8VKy
	 lHpZiI8xGRZTipczLM1myk0p5vVwzIcTOT0nDxYbGOtioLwQZkbcx05whg7tOuFDBa
	 lYtgxrnq1x6V9kFFZRbNZ86L4FLuCN1G4hNFKnWfLjKXKQTeJjLWX2u0pMWVVhBO8f
	 jV/6JPf9eZ957m/dksuzMUDy6GuRc3JvKUTWetOc5k85VB0qI8yb4iJHwEslVe6CHj
	 tRITxiZQ57LkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94593FEC119
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438749359.7742.12407477284067247800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ab9d82657df23af65482ba5b0df977af2c88f2382d47cea76dd06777b00e7a
Date: Tue, 24 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774387493
