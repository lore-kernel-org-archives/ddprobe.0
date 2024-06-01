Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BDB33CA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717276523; cv=none; b=rkXeBN//IMOghFOUMCMKwV4Jvjt15t7MB6lH4BuPbeOqi3o9hKCMY38koT1ki4yGxd6FT1bc1LJWwjyBHoTL1h2QCRYyI7h979kF93scfbFmvZls0Gsl77/irLZZ41rxdr98v+BYfEtNzfoox8vqv7yf4Cd6CbzJsaXuhrmdWP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717276523; c=relaxed/simple;
	bh=0ox+i6XFZeh3vBkkQBrtBQz+vOiKx6yFU96EjEUC7Q8=;
	h=To:Subject:From:Message-Id:Date; b=LE9u97GApYikwTdKo4yR8nBrlT+uyCMd52eqcHHaWsgIkrg4g/Ug6/d2/GTTtYGdg/jGc/ho588o8cunO6G3f1P9YcUD12WcqhQO0phFFyVHHeGxDVZczZbrT2BIMaiCPWrCUzSaiiukVlevMWip2+OrA1Q36R/ImepnYLEP/ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hK1WnJOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hK1WnJOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F24C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717276522;
	bh=0ox+i6XFZeh3vBkkQBrtBQz+vOiKx6yFU96EjEUC7Q8=;
	h=To:Subject:From:Date:From;
	b=hK1WnJOjqtfivkrbtOdSyLlhj1WRKCrYI31dXaKLVX0d5HZ4/Jg1xwrPIzyOuoNP+
	 WLbtGa/eCTlrNohzBubDDTQV2A4oHZ0ln831zDPxFoivSlpSJVX6+Ipxcy2msAT0Rr
	 lyLgt3sX3UPPtT3FyTNqYapVGYuGBirtlY8kSqb1vGYBIOCTWfnq2fJitboROuGBxL
	 v6RLTgLAGAnjQLnwBjs6KC9U16LTccgJt4nIevk4M4SE4YF4T60DjcJlJbZaWfpVOT
	 QehEMdfx7E71m23yk5vgM3KDcWSHlDOk+8RCNs7GRM4otQxwMveJS3lKohJ1L4vAcr
	 mDYhOalSsYUKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4AFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727652281.23461.9821593771523021166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d827642900fbc6d363e2ae6bf75bb19642c23def95a018bd59eff9a93bd2e8
Date: Sat, 01 Jun 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717276522
