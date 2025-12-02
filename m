Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219701E7C08
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764651174; cv=none; b=e3+2ofJXdG9RaU3CSdDe5f4OzxmuoRxeEBogRfYnyZPurX4APrTOX7mmkA99jeCmYRBQnssZqy4HeLk49s9kIJ5ocRtIzGgh+OMuAOp4I75D14dPARF0e1PbTbGhwwR++ep4lM+7X0qLFd8lq3ermtEm/+8ZvRbequ/0bPwQvlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764651174; c=relaxed/simple;
	bh=rgmcvRHx5eB4phbmequziiioZzwiJOgp2R3FS4DNAQc=;
	h=To:Subject:From:Message-Id:Date; b=R7JQKfu9UtbCEcNHeU3PPMrMkNeh8GMZ0WVUUQCowopszH3wAOZroTcV2zlU8TnNm4XqqtNkiZdBVwT+fPw+AeyBug4t1w5CKxN1W54YGXyYglw6rYqdJ0MAhrObUtM8X6Cm0M7RvK7sHgS3dZKAyNW6PrmKGg6mDKhQZ3jfPQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwUn7LoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwUn7LoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5942C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764651173;
	bh=rgmcvRHx5eB4phbmequziiioZzwiJOgp2R3FS4DNAQc=;
	h=To:Subject:From:Date:From;
	b=FwUn7LoOp4By2OUOP082HQFfNifc1c4pmarRZ6iObG48ldtf6bIrBFrlZo8fP1DlY
	 k5v6QcnQFTbrqS0t1U7SMbnnNyyvW8wdel4E18OKSRx3g+DDfqq/Z+5c6VgrB/nE3K
	 21sNFn4VKidDVEJCfAUY/W3At/0MvM3dFcAghJOJ4awlQpFK2qGNWsHXTfgYHJ5JTd
	 LsCk55u/BAicBep3jtCXKXGqm620bQ9dtXrMWCDDMCqLekmHrvwh9CWFN8CXRUFUw2
	 8ocuabtAbIOt0lbonXNZAcudcu1NaiyThhTDstyR4OUNRPYr0kXyBAOUIL7arremHo
	 zesuaXvJYqhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94346CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465117359.26915.6919356345547662552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412d12da1a31cf24de93febdfbebf523dcb7973bc5d8972fce636b198858227f
Date: Tue, 02 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764651173
