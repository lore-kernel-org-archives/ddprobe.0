Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4BA13B58D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754073595; cv=none; b=r1zVKLdnba9JwiM3VQe4MLr0BiU1Os2JQBY6S207oXQEeD+tRO6s3zphGYDv5vE3Jgb+nkXcM+6iCGABLXXMC9OxssAGQt1aV7/eUEjTiVdygPBeS95crCGiLxNMpHyGKUC6SDX+FfZi4STD/wyw5V4PuZdTwKeD2frfP+G0nII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754073595; c=relaxed/simple;
	bh=j4USUIBDNPP5IghgquPEoh0icQbpsoL46RlOV1Qaxo0=;
	h=To:Subject:From:Message-Id:Date; b=jnJ+0OkfMRLfODopmZzwo4iWwaCDAZyrLZCFLYSGaPxBrqWZ39hNzHAuTFbzbK0oBYw7ciUijOa4F+h9Gm3rL88+I31BD/vXBgLbkbaSZJtZBs4CCp+TLIZYCFqo3WVr460P5oqfG+m6TWSlx6c+RSDxvoWygk/B8q/HG/MQt7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwOXLJo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwOXLJo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0DAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754073593;
	bh=j4USUIBDNPP5IghgquPEoh0icQbpsoL46RlOV1Qaxo0=;
	h=To:Subject:From:Date:From;
	b=hwOXLJo8fKPW/+oc0a0uMv/8YrIcZ8AIXXwXqvu7u3NRBlDcNIUlnOrOpPJ7c6woB
	 ih1pZB3sRXpUBfAdppHTUFkIjWbfy1V4FBb7QGPrYzNTOzc8et/+O/PR+CVjkozLsz
	 EjK0+0K+Xg4purZiFtt6sKwSn6g1N0Z5412XOpoTU+uKWEryk/PC2j8FV0C2KTuGif
	 hAns7YcQrhnOrUMtZ8pTw34Pnvv5t/p/t14dIBEIj79gl2JhUO7oH3Ygydt8z5qF15
	 ZT5l4ufbF+I4kUjRSu+D0lYdPCsYwGgh22idl6Yq2EFQjD2SR+Fg386DamFzCUyp1R
	 +I6ubhemgjLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A5C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407359358.1547.5695516137034761358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a74834ba4f4dddd2a71580893e582165ecd9e7f0b551a909871d5434ccae500
Date: Fri, 01 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754073593
