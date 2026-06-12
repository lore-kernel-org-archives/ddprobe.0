Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13592381B07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781267794; cv=none; b=WRvfiVAdpIojzJyFeaEk4I/XczE2Hm2IDgQXtT5s3mqaOGtW0igDFMjLApPwgLT66hoiN4QTObu0Tp2kUtxuo7kOPUevK5Rn5FPMNjf9b7hkKS1aYZsjMpslEwP4RWN9M9tK/WB/f4chYGnLcBKYtzRvF4vMCb/fo4VeL/aSK5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781267794; c=relaxed/simple;
	bh=Hk49HQfzgkF9Wr7T1ejwQBGbvXdCsJYrkuc6hyMjKKw=;
	h=To:Subject:From:Message-Id:Date; b=rkYaAMw9ZK3rFGzg/UgFE0n0DzO6sLanO7r5jKV9dxQ8BEQ/GmQRneP2+rHC9QX4oTzlK5+ZR+Md4g/g/4puDlJeNTewvwKPizAmc6m8IbIQ5c6h2qjPHiKVrsGax6gpGIs0tGUAKgJehiUsMB4TLMRZcb9pdPor4CYn5W9iLx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL7HDUz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL7HDUz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6D3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781267793;
	bh=Hk49HQfzgkF9Wr7T1ejwQBGbvXdCsJYrkuc6hyMjKKw=;
	h=To:Subject:From:Date:From;
	b=VL7HDUz+ZEXn90bvRVfR1dZWcbIQfCcZoQ7R0Phx/TGnvG8hki74xPJAeR5S4D4dJ
	 I90HF1v1KUfAUiqrB0zUTUQvfKNNFX3XJTwwRFcrRD+g4CLoz6l1ezzsrKQNtrlzXa
	 5uLyrlso9y9vP63MAE+BZ3G35tgpzcwnmyqJZApriu2ERA0C8l0YIsP4zpbo8jaeM/
	 AMgy4DXsnppsss1vI7ljAQ2vdFsk0QTtVvGQ7vgJDRkHwuPilq8tNOsFb+Xikl4Rge
	 wu0kqHYEteTEabs/88PBfjbkC/ViqBwGdA6NitZ717k5RDUjNNjkxi7+CfBVupmbtH
	 czRuzzM//1Hlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D0CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126779368.22452.9229876975366253721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337acbb44ce6d93acf06b5abd69b1bc0f10f15ea2da37d08f8d69d3432d2064f
Date: Fri, 12 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781267793
