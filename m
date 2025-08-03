Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E86118B12
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754217594; cv=none; b=mQxL5ZBupjKAt0tbcxAYdqsj4QXKOYpC3l9dmIoL+IsgerxOJJZEyT8QyZh7nUGA5FfIgErK0GMOcFXR1XoMJ37emy+G6syxNMDCQrLXl0yE9vnxtqEOyOirTqikrNBuZe2PygEBEmXo9NKfCuklkuNAmn+f2suPM6jtjsSRhKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754217594; c=relaxed/simple;
	bh=yJR4XQCKMrsibw2qXJcN2GSpNnhpPFToUYkXZGy7IyE=;
	h=To:Subject:From:Message-Id:Date; b=BD2BPSoXMd4KtO16NyqPM03XhDWcV1NeWYDpFkCcel4LpUWuAIx1fcvQmNyujCMfPsOMwItZcArkx4MfVsSfhxZMfaeFCorpcsNroBvdr3/TWxzZPl8u1qzZnUGlEflRLUzz4AY3dMOVDi3HDjrNnnXOUxzJquZ8gAzPkjzsni8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slVTyK9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slVTyK9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A528DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754217593;
	bh=yJR4XQCKMrsibw2qXJcN2GSpNnhpPFToUYkXZGy7IyE=;
	h=To:Subject:From:Date:From;
	b=slVTyK9WA55e04O08NrizwFU7rj8BxvSryRE1WiTv5ULCf4cjheICG1kiwFtaVO4S
	 EVho4184++JyHBVHC4u/9G+GnopYNfm2shX8Xl2kl8wqYCKVJ8h1zVBj/d8vH9DGq0
	 frRoBqg/TXPS/qzfIqCI2fIGGKaYtpPMWy8dBIV61SJEdpLjU1wuDN8YQC9rPdp3mO
	 iy9igSrjWVed7miTKgXsgH37TUKK8wRijYouaDDmvHAtv0gpOnqcWY32YPI9Je+RPb
	 Nh3Vy1ypgyf5ZqAHSFPypqA9e9GmO2Qm5U9Oc/9xiwUAv91vBYvj3W72K/1a4X/p/v
	 aAuPSNnmVcaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B5C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421759357.21198.355150814612323552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a81542bbb393effccf75de0e4a9b6f9fb106ed081e2aaad15216f936cff24c
Date: Sun, 03 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754217593
