Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5120534DCF3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782549514; cv=none; b=AR6vjEO2P5raOdI2sUVXaLhtQSdvyqSLNfQYgYk+zR9kICHQCviCyMsHmqATj3rxOIz5LohqAq9ewjorrYSi5Z4zhi/ChpcjPih/ZFQSsHzkidVG5B+AZRV2w0u+XV637INlL+pxM6E4fJyiFlr6bm1br6GIiKT/WP22RXjM844=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782549514; c=relaxed/simple;
	bh=OkxIPlP1sYTLE0aqstFVcATiFW1fWeS1VVgPXpdDE8k=;
	h=To:Subject:From:Message-Id:Date; b=fppNX+OvvvTiK0hfjwIYKHpyOBibGzajV9uPe5j2O4xPXf9KNexXvTT6Zua7l40mNrfXwn2quB8PxV5R2nr9O4YHnfEE3wB/LF9qeHTzClZ6RDYtuugAT8+3fub6c6/oBuEicyoyNvNZir/kS2F9lcBpOjA9PZ1Ae/xl9IAjUyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPeB18ba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPeB18ba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63D9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782549513;
	bh=OkxIPlP1sYTLE0aqstFVcATiFW1fWeS1VVgPXpdDE8k=;
	h=To:Subject:From:Date:From;
	b=sPeB18baUa/f2xP3YSASEVZuV4Ov7dCtQDePDVA/gfKicQ9EWHCqF9O6zkDlri+Y4
	 zdwm+nwfXxjkETIay+FL9M+fnYLYnPwrdXUtFNIDJ/YZ/rNiD6aLeJL05ms2SfG0Qp
	 4tUe/LHltgbRAa13NF5YHWHLLsun1M1kAWXp/IhHIAMiDrxAYMODuckFcUom/VaEOM
	 +aL7ChQFhmG4neUlq5rh9mI/s8CoVdaTcfay5Fygq/ZWud95V1ej1wm6ukmNkviMXV
	 4pdcsfhdFL0dwnsF7mqw4M0Xdfw4AKHsbWfolbfywMIRXNCEsTDzZYLCqWMl7UCNiG
	 /NDaCgd2fWxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8447C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254951372.19922.3881204513434093726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7564e6480a10c16e7f2797d719f4f6e86a8fdcb2791aebd7a2342c8a0e30614
Date: Sat, 27 Jun 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782549513
