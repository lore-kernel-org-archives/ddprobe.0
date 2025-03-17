Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4096E230273
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742209194; cv=none; b=VZiJR/TBF2+s8+RbrNc1mkj/Vk1k2emnmrtbIwNn6Ypyd0BxfHalkQmGYw6geeNELRk846s5KXD8zcK7Nq5MHUHeSUThC/9HayrzKFBIQW3E6TPP56pcaIzivulADMM0NOpXV/aov8rqKUw2JykF8pk0VpzTSJrSBF6VxHLtj/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742209194; c=relaxed/simple;
	bh=ntnDdSrmsGnHif8+LpOUQ6LR/nwU5bQ9W3122Kd5e8E=;
	h=To:Subject:From:Message-Id:Date; b=YCDApDheY4JCxvdi+ye383GCmV6yxyMNCblEvTh3v0TQ6cbeqcGxxnutxvNAKG90C/JtMOR4M5ileCJ7q8tHHt5fSuuQwilE5Az4e+uFtCGMDyvljkZMjTMVg2inzUuNJrCUzJwxg5f9ULZ/bdwanJ4Pq9PmELQLdeCeKQIHasc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7ii6eEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7ii6eEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE21CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742209193;
	bh=ntnDdSrmsGnHif8+LpOUQ6LR/nwU5bQ9W3122Kd5e8E=;
	h=To:Subject:From:Date:From;
	b=e7ii6eEV/+GM4ntaj1JBlunq5uAJ0Mu+6Z9zFxgjcwERLn+sU/hILwZ9FCcI6QTFu
	 FM9a5PpUjWpjg+oe6zBFQE+5NrTin7aj3kHHVROAsEadV3sficXYNy25FBOCV/k/g3
	 0vSAmmQB11xfMo7To3DyZ5sdjAOK2btv6OvIYkpeDVubCQ+NezVgZZtD+HR516jUsU
	 YSV/RU0xEbNZTXJjcXO+0Msa8jwu0LUGBHlJOQgpA1a+jD4nZ3+CoMt2HDMqpICoLn
	 BQJRCscPBLsEXuA6rKgvb0lENabV1rogwTIwXfL8GKqwCQJ4ikzLCemfGyEjL0QaHc
	 Dys52Wgsi593g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C76C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220919360.15116.15452612162593665756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae3f23efdd45574bbfc92a6ac5fbe141534ac5f66b996d9f2c833787efb979c
Date: Mon, 17 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742209193
