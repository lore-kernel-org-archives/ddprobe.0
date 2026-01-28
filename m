Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE74313552
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769640834; cv=none; b=Y3FrLJ7L+UF16qh1bzCcMWlsPhL2el7qzeZYiBQH2cMuVpUB/ctiyk1H9N/ohTHtuuIo33+/gjF8+kIeL4CAclWVKtTnrHaMfJn0MBxYg8uvtZS3p5dE8uJtmwgXCabiEi02JRcs7GuJyvrihdnPp1h++vLkK7UmjSgqf17AxyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769640834; c=relaxed/simple;
	bh=+OfGkk1NNMpyshulBH02jEnSOuye2IH244d/TfYDBfE=;
	h=To:Subject:From:Message-Id:Date; b=eH3OrOnBZ1biML7M8msmI1kskz4YFjaPtuTvSAsx/d8HX7S7N+8F0m66eegwK+B42xuZa1IIyZIwBgLnny2lMeDf8rwKMJWHuoYqlShrViuG3WKFpeBATjk479H1fcCAviaTJe8tTYw/k4AmSXZXC5avbVmZszRVX1FKrKa8GBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnJzgDau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnJzgDau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769640833;
	bh=+OfGkk1NNMpyshulBH02jEnSOuye2IH244d/TfYDBfE=;
	h=To:Subject:From:Date:From;
	b=VnJzgDauQdRqnjr8Bwt68gPsFOPyX93wCYRubc3l1iARV8+0XzEJs8A0egw370Vv8
	 IyyyI/tWvHWMyjLkg9QmdHazT32r/A+b7iZW85RL1rPuJpGFhRJPErPie1csVK3yDD
	 n0JjpfSBuZqSkALKorvv0BLqcOskphXX80dlpUf6vcTRaeEmRpj27BhDf/7QcltlDQ
	 f6YKO2e23pFXJ9n9qCpsqsm7GgghbaKPHVcKyyefV51J7dU1+1QGdoA+R6F4B+bVI8
	 XS76yjR0751x+Z86lnOgpBVz1GOlciPMgUPvPSRIcJYExV5zG2qtYYLxUXUpUFQA8I
	 9lKnQnp1XyClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D5D46C0F
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964083357.5226.5785585346645996291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902b606f33c669faa69fec64c8db3330abf773c669590de825a5cb740ba0f324
Date: Wed, 28 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769640833
