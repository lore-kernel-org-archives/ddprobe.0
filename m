Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B05F3101DF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765197174; cv=none; b=loMGOi4fjt1gRfSTShn/05cqoLkVtPeZ5w7xnmY8+ja2j5C9QAJTUBS3hBUm7E0r+VKUTNgcsmpD09sQ5h7qY3nhe+qD3QkjtG8snLfBCQ2WnVzSDHVRbhKT6s2OFh5nObluGs14QBa7r1QGj27KcGH+7JlRMFcPj13bU+PgfnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765197174; c=relaxed/simple;
	bh=OuvLgjdbp6KI9JznFXrZ8GtJXH3z4SLItJREAQsWPrw=;
	h=To:Subject:From:Message-Id:Date; b=AAUb1zvc/FGbIlbhMN4P9DeLG1HXmA5uSMGO49otQIblXUOVJ8Ka3Yht7HW2cP9RTHGCOqdgooMcb0TViL3bnceT67/gqeVggV1jfFcPPHdo2/5WGA2zj4UGAujF4NxPNJSeeLIaz9AZeTfko3djHHOJfVyT/Mge+fKaSUrLqDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I33buQTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I33buQTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5019C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765197173;
	bh=OuvLgjdbp6KI9JznFXrZ8GtJXH3z4SLItJREAQsWPrw=;
	h=To:Subject:From:Date:From;
	b=I33buQTS2Ci8HCgi/mIZP/PWXzewJepctKlo8TCNovGMUc+5FnXZR27TJit26cuvs
	 NDHcABFCXnnylXUMGiM5Nz6/BgunelRgFqdPURRdvYq5OmAJV4lkT6MMndcN2nYL4m
	 AOBwH2dXWR8udtZTiNQQsAS1SyOhEaCQMvhTYHpMS3R3N+pcC4RejngQE1Uwzwc68b
	 Vx+MQ8hYO1qhNZYiCtgEHuFBRh/2JmCDcJ3m03FpRGNZ2Ss0BpZd1gI6PRtYSGASpn
	 geKWbdJsvv7Iwgy0MiUF7weZHeVFrqT4ALl1mA4NRa7JzeVsaYQq+SfEtWr9+WcBKd
	 rJzVKLSedumMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDFD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519717358.27118.17746571872163576345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6ace6c88f3b7c4d6e656cda473b0fea4703f62dd204f0e30c6349d9ea51bae
Date: Mon, 08 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765197173
