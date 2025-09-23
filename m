Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A282313536
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758617394; cv=none; b=kMdWANMAkzdF6RZ76hhrwEcf4Xq2aH06XDe4e+w4/PsjYK+qFU9rmAJNavcv2ZOLxT/XZph1TAKcdHdAgWPvSzdjc5lRBHtdMIhDnVIYQdmoVw/xMCjp3i9p4cKAclJwnERMW2is+i5ybTFTVZ33gMbNQyUzqVAHjKXn6vIuP1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758617394; c=relaxed/simple;
	bh=XZRgVxFy4EmQ9F5J2pTaZS86eJ0cDsi7cTiGEGtIZis=;
	h=To:Subject:From:Message-Id:Date; b=uJzsfDeKWT/crdTPab4LUtqtBLgDNnixqwDzKKH1HZDxyVw2xeMuVGc/ulc/tfk23vHdZUpGt/aeqD2OEnbMHiLnCI+1EVwmTq7X4HFROg8JF7k6Q6C51z/kE5D35kQq04AB9CEo1PfgcGvJR33yV8UO+Bz/A/Lp7v9nr55FxhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9DocqOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9DocqOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5161C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758617393;
	bh=XZRgVxFy4EmQ9F5J2pTaZS86eJ0cDsi7cTiGEGtIZis=;
	h=To:Subject:From:Date:From;
	b=U9DocqOZYmZCjOpH6C78X3uPD6OylHVgfS/YH+3mjPYvS/V4GmfoDzqzinGgLQH5o
	 9xggGwuclApH0OUr2gjaVsXJ0g0Q/6v1NS6yA2j2GQR2D1cg+SHbV/oEMWZQPVOJ39
	 WP0EUGtQ8zGJYb1Kz+V9CAt5oDIqzUlvKQULU4bPhR8fL749QB3ItV9cwN5yWt7d+k
	 1THFuPGnDFbRd9d0DEc+JnyJRsX2GgJZZ7EI4wShK3VrLSij11YPJ9xTPZEhFADvXk
	 gEY4USv38r3fcXzUcCwqZJRSVO7aLiIaCFV8K5mAdNdgoKsRK9HTJD/7PQQV45mkHG
	 aGn2N46PyKbSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9305BCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861739358.31528.10393064811598634703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b0baa3de74ba6d8347e7848e450f3720d44acdcaadc784cad571a9ae3406de
Date: Tue, 23 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758617393
