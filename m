Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1DE306B3B
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785506434; cv=none; b=VV2gE2nTWVmfm9Y4XnHwx/YWRGbRhM6L0x1g5IHcLJ9w6KFSFLLfyq4FC1YCIsg64xxh3ZfXtQ1SJWTS8fph5nhOAR8sRKp+MMbh2BjVIgU7mLFGmrk6a2IyMKQ5Q1qKVf1PGsBZxRu9TVFGkqXC9KfybCeK8D+MlNoGLqO4B4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785506434; c=relaxed/simple;
	bh=5mhqqloySd2q9PAx6wkeDsEgzyuKhZrCnmASxajBA+4=;
	h=To:Subject:From:Message-Id:Date; b=Zptzh2GafFbNP6YKOHHTUPZam5HF7RhdkyS7Rx2nBG9JQVIQimwS31rU+8ZgQNqP42KlqDECW/JgbdRq50H3/XTqUxi3bC4ub8NHpxMtwnFqi+Vbh/+aF3lpD1gK1y2qPV7TpQrkG+sMh1GOV4hZgJ1bwTAoWyrbn5wN1i+Qfuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpyA4iQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpyA4iQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0472C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785506433;
	bh=5mhqqloySd2q9PAx6wkeDsEgzyuKhZrCnmASxajBA+4=;
	h=To:Subject:From:Date:From;
	b=SpyA4iQQfIgYvDedKGcClLU1IMGEjpY6jVhWESbQvTShF3Sv5hzgAzgDMupHQH+Oc
	 al4ZSCQQywRRs3CWHfqRAr41LqHzCXGbCBvYCh/KDcy8t7Ha5QxWdPVpgtpXeyBNi7
	 Titr0WIvpBttYVPXn869EK4++o6XaZH7UyepgtcFixhbZF8FYABixKn47e7CFLMtkP
	 bDiSWhVxHLV2AnXYBVrnQP3Kn8l5q2G4BD7g1eHjx5v49yTYg5NU+r+4XDk7Xs+3Zt
	 Y7RGPK7wzVmBr+9S9E5pArYs200gtVBJVim566qiqbjBOi/oUeHFli6LmZ8gXxFd8J
	 ekjbkCNwCF2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB29C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550643369.25109.12902975398119321033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79e5774e4ed50d932bf5f783e5441712f028308d025e7080733e17016958902
Date: Fri, 31 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785506433
