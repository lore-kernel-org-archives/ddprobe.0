Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE77285CA4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777272454; cv=none; b=OPE4AhfdB3/TH6c589CTJdFEGvP33jUA/mvHG52KcCtIfER2udUuLstJz3cPaDD9TuJ6bfXIJEqv6mI5gfhZTrIT4ds3RJeR5ySBOOQx+cBCXRDeVwoNNzuibT8Meo+SpL7x7FfrCQp2Dg6oGZpTP0WUhsUcKfAOgSIdICY8MLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777272454; c=relaxed/simple;
	bh=Xrsn039xWwyxD8q1PSDyLuj0CUjx3/I7s0/IgclBCZ4=;
	h=To:Subject:From:Message-Id:Date; b=NQM6PkhQHHDxlHh11qsQE/wj6yB49Sa/t8f4WVdlf5AGrYjvbM4I9g2nGFCapyo+HcQElro3Yn4FGeJkco1PkStSLrkiUK1TFbZeMfT/18TBrcGG8fLQMx/UurJEVpjqjW2gkEssbdYaUkGwEaLdBeHtgEDz/vLBuQuONuAxyKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCVQRRzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCVQRRzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB61C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777272453;
	bh=Xrsn039xWwyxD8q1PSDyLuj0CUjx3/I7s0/IgclBCZ4=;
	h=To:Subject:From:Date:From;
	b=uCVQRRzXYuridrPihm0Ba/Mqw08K/NxWvKYrDHLfWEZYxDt7Knv8iyIHwP+etZPC/
	 0hxHpUuI2rzEv9ciDL7ixM4CgX6mh50eeRQVm7jWXl+taIhjvsenZyZvNvDMuMo/7d
	 EX/tN8zujZm3fj9Yf7Wy12lg2ShuQVCWk2nX3ZA99IJysZhyzEkiLSc3vsM1yxJWA+
	 Jw4qlDhYDHu5ivmv2HnsZEio6JPygF9ij3IgEJPcnd3Q+8uM869+6ddSC5j8MJ/6hj
	 h8P6ogQ7nuSNiCR4xgKr2Crld5MG4u/vOYgFLUS48XCK1Z0T+KC0htOSxwvgrkhDjW
	 pWszr66gum0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA726FF8865
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727245368.2528.7464674861938447063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89375f6afe28b3d2a9eb15163a6d4bfae792872258c665328f9aaa1f377ef005
Date: Mon, 27 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777272453
