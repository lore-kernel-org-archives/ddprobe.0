Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB291E885A
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766390034; cv=none; b=BFCjJiS0Tn427pesaSkszlKcdLvXqVWN2pgl16t61BLiV+WiEWtY70sg9XVcGtodW9JV2t4Wh6Cyp3wyfqmt40sFEmlqj3CqPCJtwwMGzprI/dcjJK+al2V9p2UgEmYDLq0WLVOZtD/FHNDbiVDXyTXOw0Hwx2j5RrNeQ/ylO3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766390034; c=relaxed/simple;
	bh=By8BdMK9pjPa5eBiFsilKxsvjdj3EghCz9vbvR1VY00=;
	h=To:Subject:From:Message-Id:Date; b=muM5ukiHGiqzwhnPXO3hCp6OTPvKqw5RwLpPD1a5qf4voSZ+xOTKO0x2u9/rFkiKmg6GBLaIvbYN65e3kWWHJe8qD8TpAI+Lz0JmC5iIoY6ujx8kDLqu3xI+pbQ+1LFmippZy4sxPCZ64ZDC86Ir9BDIKbCGFkC0Sy9p/T4KBQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGLoes3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGLoes3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766390033;
	bh=By8BdMK9pjPa5eBiFsilKxsvjdj3EghCz9vbvR1VY00=;
	h=To:Subject:From:Date:From;
	b=CGLoes3wpiQBZveeSJ85Pfg/Lwef3RCvPeqRIKdJ9cNFRLw7Ta8GTazafYstWLQhL
	 xlscKgaCnHRhnhxMm8b3ZkKPqCc9u/sDkLSRhXOz/qwmympsW1Erud3DX5+no8d3r+
	 VdhqWuZoeZ39Vd5pKVlw32WedMNknIj0TxI/Boalg+zueNU5SDw34bqrN24tgeU9Go
	 QKoHoNuPLDSmKVJW8okCwRacscLTFoYcEGiyhlWrq3QbF11yV5dimkuL6uyakoe7zk
	 ZABMFpTshe6aOARkWb5EKRS9N914LaEu/zWru2g7VmoS1p0C8KpvZt1ZXQW1OaR92X
	 4vzplgD1AKkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340CE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639003358.25139.17224287159778735644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e904cd46cef64e4d4c014ea21767a325bfcf2e54ca249f384bc53ba7c073fd7d
Date: Mon, 22 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766390033
