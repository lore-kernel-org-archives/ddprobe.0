Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293D435CB95
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777261054; cv=none; b=mlqynTbQi/MwGzswJsdNgnpZIIT3xr0ctMiLwA2J4NIPHsZmk5QeigRVmqe5JTFPyBvEIJv31h4fOjkvkH+h3kLC8jsSyYrqF5K+qYv5mg1V+wU6WbchRQEQy1NjHYUdCxkzrGt4aktfQxvohSgEYYfXupm+PmnakF/k9vnFtYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777261054; c=relaxed/simple;
	bh=wrXj93lLKXZYnlRQMDanKchNk3nJirar3DxAj+gpMH0=;
	h=To:Subject:From:Message-Id:Date; b=uPkBNg80ci3+fbrwlUEM7OHCXMUEZHWOuGtCkc9MCc/PdmSul61f8oYCQff/ZLlN8nGDYRBVRL5fSRAKBEYlj2pPkypJ8rPq3X6DemaujFq0+jpOr9LWlPCTL8Maeer0DTqpdY4HuqmIphYf6ObFrVoZmEOh78Yhjl/gtJv8jX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtHoVAwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtHoVAwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF2EC2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777261053;
	bh=wrXj93lLKXZYnlRQMDanKchNk3nJirar3DxAj+gpMH0=;
	h=To:Subject:From:Date:From;
	b=XtHoVAwNlLURMkvEXOH3v37399vcn8YrWnLf/O0cMADC7BauEMGRLtO8MrIaqiFo9
	 g9uWrQM5h8FYDJpPsn+AyZx93+6tM+rfdH7mq5xqfGKnp7NU2D2ENPUXyD7KFuRS/c
	 74X43ZAQsOPUp05PbmkNks3ntY7IvgMlBT+jNm3AUfelMh9iGDMdgKh/Y2nPWIMrSI
	 UqjjLBZYHoz1YlNpxzmIcPJ/hAYrJprlvISjBOom5hlEgF5Mk3P3MyaA++/taS5JvS
	 PqcSG18atOLXO4XfUr3nIT/7+EdplCHDdGmc/lyuXjA6Kg5jRBqobRBLcaBl3zhGUz
	 ZXG0HZhIHHDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9531FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726105368.26367.16785673066806815784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c773ec112a91cf03707b0059412be44a448529ce035ad153d25d43a3494f57c
Date: Mon, 27 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777261053
