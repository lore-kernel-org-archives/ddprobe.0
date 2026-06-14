Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4853F1DDC35
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781460394; cv=none; b=cez3WSApkMWw7TbMGF6plBgH6JEHdoCgKIhkZGe6nBpFxxNrpw0qGbi0cTJ8s5foaUp5kxu3eoaaRFqf82K6ypRwdxQNgXW4rTDvL+l5awpHSNJvfEkUmSrY764YQQZM15br6xkzStRTEcpF13sI7uZaoEaVOTZghLCp4GkgAKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781460394; c=relaxed/simple;
	bh=X7EwZDHtwF4fzLLv6AARjzNtLIoOhsjfFjhoHYDfKeA=;
	h=To:Subject:From:Message-Id:Date; b=ZkoDFQ4w4zmO9ik3pCkeLCZH5saN1omdkNxMMQtZGPtqs/dm/ziWybeNWINx5XTsRqMzvYupeZFXTmkNa/xuaW3/7zKfJ4Jrxoenk6zyBut6WC8zEbO/0uVPzzLMq8ubKDfgyIvnklFXlSwENwqWQLGVhWiKM9XbJONKheluEWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGlWzVeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGlWzVeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6458C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781460393;
	bh=X7EwZDHtwF4fzLLv6AARjzNtLIoOhsjfFjhoHYDfKeA=;
	h=To:Subject:From:Date:From;
	b=XGlWzVeKBUYvLkMupYMIYpbuLpq6fF6C8Z/Xqr6uEV6kFAEHvsdUNgCz+7y5nN+V9
	 G14utasNgO3kgd63YdYJT5aiM/kdwdLooFrf02fb5dD15t4R9NCkF9o7TozWapJqHt
	 YE8KpfP7PStk3Sp3KSyU1HVrGP6kkHkYDAd97+qK0oZk48w6IAL4Rvz20nODzH2mZV
	 i8iMswisy1InuTYv+gYknpEUM2noHEOhGETYQrO473onP8lHM7hQRGnqj/kbRacAg8
	 v9ais8dtpNFBL03RlchHVhABcyY6KmlrN1ZkF5N39kedakhAQ8hhDftRPVudS7iO2f
	 UFjvxwkbvqpKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA84CD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146039369.32159.16367518887508949702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98d4029c725d4e4c8904401bffab01d251b8d12eb8c637d7d2295e4a223aa1c
Date: Sun, 14 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781460393
