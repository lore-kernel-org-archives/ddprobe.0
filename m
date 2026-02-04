Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4279C33B6F6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770230634; cv=none; b=PUoQZ9hl5PK+lUHileuZn3rApYLVmaWsVRP4vuT2IiM6t/9jV3BhodX6zNdSjkMzpG/ZMn3uzUiIPdQj1HwEGGIkb7a7ByV6qOPlx/ol3nRoKRE9X40W52NsGhb0MuTfMn+XGbLyUc3qhDKXNEk6OONWPqMKiZX/OuzDqYjD0fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770230634; c=relaxed/simple;
	bh=6e1UR2TvMapKZySFfY9hoc9QSrrOShYT8fWAI/b0fXI=;
	h=To:Subject:From:Message-Id:Date; b=qrqUFTkLeDF4zBCWGREiKgJx21NaLZCwBDNq2f+JJsO4dIL/+iRDeF2SLM1pqJbz9NcY22AttP2Fm8to4mmFScHpM870H5zhny+G+ElX6WgTGetogpAnEiwX5VssGbkQi/vr7LwdPbLNgLjP1xzo4lTCu/JBXJXHNmXE04c+jXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQcZKY58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQcZKY58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AF3C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770230633;
	bh=6e1UR2TvMapKZySFfY9hoc9QSrrOShYT8fWAI/b0fXI=;
	h=To:Subject:From:Date:From;
	b=DQcZKY580fG9LxDjcXzVA3r+iIKTzakRZ+jnsdG2BCOtdgwZpItVvWLK3zjnQyTif
	 BhIjYqX2lYWvEbxgNnMsDhZEUDTMehnDgTignVeGLandNrJiXXx/7cMS3/xhMnJW8I
	 B3fV4wEFfcwalxnKgKCxElrGcIilTIlnPkmINjfjNcKlr0d/NuX6nxj+5zLpx+v4FK
	 /UMvhu2tvBNiwQShdPgzBn27Wgbnv6GWZ1YiWUQsch18Ibh0eYb8NrjVr7v1AvT7cl
	 Yhrg7r8LIid9+27Z9wKFA9rlBd6cPl9dUpRVfqyS5kb8FPr2/hEGXl1wycrESL2GUm
	 lPeg5tES7lfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD943EA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023063369.31346.7240909758320539293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9817af96e0c16392391d805057266fce45336a9908e83e240dde4c5b925924aa
Date: Wed, 04 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770230633
