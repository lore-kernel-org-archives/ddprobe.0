Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A01326FD97
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791598234; cv=none; b=svB8IDTpz7y2Dr6BbEcXf7GxyEX8tR/YWHrokIx/jBvxedZOqMD+ZqyIaUAwelQrHBI1OzhOxC58lYfyED90AvCctnH+UTUv3zb435bUXNb/B09noG+2aVGF3ZFthyvPen7mADOTQy7zJJTh2I1kq2mlCKKgPXjogqeEOx8ItwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791598234; c=relaxed/simple;
	bh=xN2IVCsmcYBG09XAWnQ+r2uOwJk8BOwLIq8wBESXV/s=;
	h=To:Subject:From:Message-Id:Date; b=YMrUnJge7WLtRxQo+r4sr5nRfjEZ0yCBj1+XEAX50HfE0h/FrB812qmr0onHWItZDaqc64WtGL6HnhxqDnqhVNzh9Op2IhH11+ICFiJDdzjGqCVBd1Nuvju7TLyFxF8jhSp03l3VYRZI56ltFzNGqm1ny+G0gxV4t1sSCMb3R5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNMETFpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNMETFpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03BEC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791598233;
	bh=xN2IVCsmcYBG09XAWnQ+r2uOwJk8BOwLIq8wBESXV/s=;
	h=To:Subject:From:Date:From;
	b=PNMETFpV6IrJtMcYWhHoPHBJlWcD6WST4z7yotnEtTDa4yQtioWXjOyG8WD2SQ273
	 ZoRqEKNVkAbbJVwSU2gIzOs2mLrV/6WmiXX11xCxqnRRD0NN8kRSNKjApEsRN00CwN
	 6cJx7mBfeD1VXzAlt9wvEQlk1RScQ+sbZ1+8VNbqLt9YXuZGhOz9aC/ymuQ8IV97VC
	 cxQ8/edM0YPLqf/xfnaHANTKVUsSi5ya/hSde49hq2sj0jyxqouGz+XtCWQpgxqX7w
	 EZu6Fa2m5A/IEdADYOkIVfdhRyJAI/JzD5WVfG5p02gUEV68UDQqDqnV2AMfvNfai3
	 WX8qDxsyXO3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6F1CA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159823375.20379.6414994156244025939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304419137f59f93b20373572252ea4330b69e61a6d04c8b3d3c946b09bbba3dc
Date: Sat, 10 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791598233
