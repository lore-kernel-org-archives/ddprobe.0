Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CEA27707
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764795174; cv=none; b=nVEH7wZuvQrBoq8F+yhK6alnpgb+S0/TN5xPwoZxx30y+AfW3sLyFk1Icql/l8/m5ykjsHZMK9b6wAsN+Z8kp0LxqLIwGtG9p0ryCyWA0qymtvaYHByyUxp178hlm3CTSOzdKc/Boa6DpimBvqyJST6TkVMAGRzO3EiSPCFZ6E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764795174; c=relaxed/simple;
	bh=Ip+MV/kcDGZFsLNHRHz8H30EjmCEgGMrXzoWZrTU4CQ=;
	h=To:Subject:From:Message-Id:Date; b=lByBUuHD3MBtHMjAgOBR8pSLalIAJYxaFsIulE2PVHcZBlM8jNv+UPNhtnZmQ4JB2gIh8dDIY4awrb6ada03YVM4NP2LL/EH1ICU6BhIpkQMnECGoH+P51BVxoMSgNBjT1mY1M+j7LbDc4TFY/EYIfkCqeMiRJ3LZksDBJnSTnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+NkIHWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+NkIHWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A140AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764795173;
	bh=Ip+MV/kcDGZFsLNHRHz8H30EjmCEgGMrXzoWZrTU4CQ=;
	h=To:Subject:From:Date:From;
	b=e+NkIHWAxocrT2E4/a/v0tO3+2R/LsbM/JOkce0zeY/+Gh7LzNMtQFjuM54Jc42sd
	 KOtQcW9huoKnhL/DPcO6FqzuJZ5LbhGqBIHDATOlHVieW6uxM9rigqLk3yYfHIXE/q
	 uiclHAuCVe60osthTuJ2T4UP7cHLSUHz6SmEDCga0NmET/GKhhKwz4kX6sRve58lvT
	 qwJzefyJhY+WpkjPpdARavrGsGhCfxBxPodGLxjyvaiZWQpT2cWbeD4nIEJN5eq89v
	 mc9fzYPHpk9FndZyI/KKsJaVI0x6FZsp10bvjkSF370s1BGGBOfUa5WjXsLw/PkGJL
	 P62Ybgd8JT8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E11D1BDDD
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479517358.28409.1695305205932892362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82379dc2c8663c08f9ce288be991d949d95337bf71e93b3f57290323a269f95
Date: Wed, 03 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764795173
