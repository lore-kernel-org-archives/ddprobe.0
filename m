Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0162E267E
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750168794; cv=none; b=YAEGuHbta9B9ToXnjUTpxs9LQ/o1G4F4GVWHBexFG/RjygbEyy2t4mjKnGebTzhKImh5faQNcFTTObkYK+Ktl1WNyBMOa2OMbAzfpX7jasCJfv9+38fEkNPvPOACbYkY/g5qHDM2wJm1LNe/wbdd8BGLDUqyry4yE5qlpeq4Si0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750168794; c=relaxed/simple;
	bh=6/zj9+Aessa1/ruiwTv0DBwRFh/jkiWrhRhRPobC2Ro=;
	h=To:Subject:From:Message-Id:Date; b=bo7tGGxENbN8QgxGyHK43OSoFQGnTVxuTTweEuNYJwR79UiBL1iWYluUV32nClCZWBohke9NwCNcLh5csod1jWWaR9R+POH7zwMpu1oUlAw8xO1n38i0CP/Te2hijoLCsCmmDyORQlW6tuxvNDmHnQycNiLJqkAvfsXExLIHWVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvlRdAvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvlRdAvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B068DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750168793;
	bh=6/zj9+Aessa1/ruiwTv0DBwRFh/jkiWrhRhRPobC2Ro=;
	h=To:Subject:From:Date:From;
	b=NvlRdAvdCFU9pia6tvGE45dPbTawZlVOyB9G/Jlwic9uOfzaIl+qRHtzIdGWINHMn
	 1BwgVoFLUEH5f2oISaPk71kpu+2aMSHPyTfFKNMPr7x9wlNLQoJ9U7tufrJxebqfrq
	 pzj8SVVS8UyjfHgzRBWRckdIz1mdMmY396jTCtS+oC67vMJ6zutYy0KF8RBNJsrhzm
	 k7Knyk+7ZlAj2oE1Q0BuHZXf7EzDtGe1VIaVjGrLlHLJXUnlhng6SzsS95TzvB6uXn
	 WvMMLKIT+11Q+VngesX7MWczOlewqphbfRwt2BKXjQEszC/jXqCYLL9uop1le/6KjH
	 dILiX8fC+gVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D68C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016879365.23038.17940909730251687217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3abf111037d997f8991c08d6d05fc140d458868ba529b3b7e36b469ef7c3d84
Date: Tue, 17 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750168793
