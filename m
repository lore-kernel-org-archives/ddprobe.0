Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053C55349BA
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790889637; cv=none; b=EMPpS6s1lDNSrAW1dltN2wLQaO6MahDt8nSBJ8tFG2n9o8ERm2nGGHwZzXl5gL1OjjpJF1uN24xgFzmB5t2B+IeZKe98K7Mm3Jth0o0nrp4vgFAZHQ/CScQh56NiT3QBbcjjlVT+6uzR7KA5KBI/R2trB6AMLszPQm6qHLEiThY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790889637; c=relaxed/simple;
	bh=cP+7mTLQj+PFsCoOKStxUP/HhdzvmgTUZw9DdBpEWuI=;
	h=To:Subject:From:Message-Id:Date; b=nPvAJQksyQvQ3DNDWmEqfxgqnNHMvXVIsuFfo3kl3ctX5KeitPBQWmOJdkIkcNEMVB5R6wNBEDURBPPOTcePJH7LT+iS2pS3na6yt0aS+NYSt+XAUm1vmq+pWRea3dqFjO3b88OSdzsq8ZIwcvZTw0wf8Y563ZEOQT0sBaX63bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujUfMuwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujUfMuwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58B8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790889633;
	bh=cP+7mTLQj+PFsCoOKStxUP/HhdzvmgTUZw9DdBpEWuI=;
	h=To:Subject:From:Date:From;
	b=ujUfMuwqe2Dc66GCX0pe6YmBBEYHuUVmsWiQy5U18/JEjxB+rxWOxwUqqgcEK8cjt
	 2VjQybUH/hAve7SsWxM3DxTsEnIafAGfY+VaAW+hliMYakRdgA9cQm2oBhoar59c0o
	 BNeMgvSwMz8/1IWhp7buXxkJ9vSuUF6brzJFDxnCi62NnfvaFJpQ5MqX8pQhVYFasm
	 j2v/sXdOq525vZky/A9gW7XAElmwJN4YnaPCBxkVJAe9PRHLorN5ED7LMwIcHB1+Q+
	 CCDovyPk5GhuXUxqvErW7iciohiZ8iZpvCv4ZPITbboqb82G/ivTGqeSthFNYTVR5C
	 mKh7cSFR/8zYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD079CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088963369.29007.18336903355810368685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609729efc1be8af601aa25cce22664de68ae80fbbd34ec097d0e978372fc381d
Date: Thu, 01 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790889633
