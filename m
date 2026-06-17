Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3176731A807
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781676394; cv=none; b=edMog6klrJoDbUMQpYW46xCcR1ORNTZSAY/1w24KSPGvUThcEheZ1B0BY4FOVfXNc+xg0wwtS8OIWrMt9drB+VBw54OdbzbExoBaPzrqa11vzciXO8wnOltaMWgYh5pYh5E19tLBs1/7TpLt6W2Sx3mszx3oGFUTeyjT5RUZNc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781676394; c=relaxed/simple;
	bh=dYqvfYTvZ+3q16FLUS8HFCCL+L2HA98Rx6TM5IQ3MDk=;
	h=To:Subject:From:Message-Id:Date; b=uUJ3P2A9zFR5dId97WO0tjOTRiBfDZ+mdtCRFsveB4el7b4lmQ4l9TZDu4a1JBLW7yKxn7YgGSwVZ1Uq0vVFW1N4t+bRvyMSP/CMCUffOaZ+gq/NJxLvCFDEvDu/Ud8uX8Gwf8MA/mSq/qPNRsLKP7v1bgMjHKBvqalACG9xano=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+qMrIaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+qMrIaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE89DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781676393;
	bh=dYqvfYTvZ+3q16FLUS8HFCCL+L2HA98Rx6TM5IQ3MDk=;
	h=To:Subject:From:Date:From;
	b=Y+qMrIaabENb4vUzB/MI23M8Cm8ufEsPRWt35juEsWKL6bOyKrPAR6Tk8F5PKPLoe
	 7Zeli25EjqadwmkMV0dbYENSZKjhvjOwlTImHjDwTeN2vegPtjSEKONMkYy+itRPol
	 P2K5TvzDGK2wfsnsDzCZkmy/npovXMrW3Kqum5pynhM6c/k6cuSabMjRtMA3ZoXD+c
	 0AN75w24EJwuEqbdQMNZ+dHCOX5d91irnuK/bqK8uEszkjunb2UfOeBlxOIExoXRhM
	 D4wegCIOPq5eUBjxOzKqdIQU7VlaNYgDZrJnyfn84M6OQPtzwD1JZ1bfxwWUBzVmgB
	 7LGrLs3Kx4XYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C14CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167639373.2946.16549877753576801158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221d1e591023deeed28be6fafc0a8c126f4eb6856de50569c3336db11779fb1e
Date: Wed, 17 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781676393
