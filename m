Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A1E23A6
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750040394; cv=none; b=YmzzhQKXKrlNvJvC+7Cr1EDUe3FX0xyRuddEaBbuJLIDPYRWJJGKxC1hBIFTYHRLqpBlv3M3cjljsA6W4K2wkUJUOCV/9eY0eGQTmIuUlID78dn5/c23j6WhSYhueWF3DFYh0PcFGH3xAqtPA29J4ZgWYPhg9kMTKPvOTEaxYJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750040394; c=relaxed/simple;
	bh=zWUWA1qvolrRHDSwn/Jfq2Q4nCCUNpXRhuR9auHGUXI=;
	h=To:Subject:From:Message-Id:Date; b=c42aI5UQmwq+lF+omZaF4Ks9zEklb6NFduDkdTRblaIelnZTWKiLulGo9pMpafgeNajgGUzo6i3yBMR5Qhuo8DCxtHvnDdrYWFxZXNGMUb7IpfLb4iHneW+nQzbJvjzGsHPOYH8TmD4lghDYPHEJQVlixpKjmw1zXFc5jAmybWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qc/kTVxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qc/kTVxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CFEC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750040393;
	bh=zWUWA1qvolrRHDSwn/Jfq2Q4nCCUNpXRhuR9auHGUXI=;
	h=To:Subject:From:Date:From;
	b=Qc/kTVxvqYvt6BgmWx/d3gD9ZCkIPlXBF03YHpI6QUY7aTYn+9B7Jks2YYj5zloW2
	 aCJug+MLJ3Kt+bl5kjJqvWWFch1BCXhnNB/idqGnftseaYV3ABFHl0BKiEUB+ilXa/
	 X7MBClsnKS2IaJprLV8EVGrsRdJfkRrj0HTzOMD5l+Kmcei0VMmP9Jlm7zArCeRp8/
	 w+BjXceuH7EmuNWWXLUYIRMymVUJKtUEOfvY3l/v9ifGq/DcUnCnem2eefzU/6uJE7
	 FFojh7CXJY74qzAPl24ljYy/2Y5wKaPV8B86sruJkbbGnO3jXyFqCqUwJYYd6A+3i5
	 hMLI540LBMRWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E51C71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004039358.7055.2922486844088159206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847c8026cb30948b60a023288334c456b065999c13f0577e65c17631710485e1
Date: Mon, 16 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750040393
