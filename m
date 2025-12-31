Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F134312CDBE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218034; cv=none; b=PpREOK3M254lpDfY77Qn7onT1GU2U7XgAtKty7PPU8gsJOa5eI9g6VlY4aaZfea0szLtO4bBILpwlykvicKIUWKBJR77kKmloc+Db8EEYhtgJRsfTMdPX4qa305+mZwak0USNUJK6aEO5WqBZtjZrLQCQRAwwydT8CCsZCgGnCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218034; c=relaxed/simple;
	bh=AqjqiOxmrOB+IloPiX2Gub8sw8U8DBarior0983yTFI=;
	h=To:Subject:From:Message-Id:Date; b=Ww8ipfRrK9ffOqC0JLRmYej+sKjT9cpdQuy4iWbLgVyiYKjQkA4+2exnbi3+P7dPblhYb5j4NcTscHG5vVHSpXMkhTRYnhcQSYoYoaHAEf2Zwcaup/SIOve8u0/WVHFjZsKYbYBABTddakbmSLbPPNb7zzW8HxRa6JPHpBkIFmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv7GecJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv7GecJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD0AC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767218033;
	bh=AqjqiOxmrOB+IloPiX2Gub8sw8U8DBarior0983yTFI=;
	h=To:Subject:From:Date:From;
	b=Jv7GecJM7WrLwhvsHm3PmIVyVuObkWsCy5XkzbQJHqFUMtkBnaGnSPasYkYCOx0uY
	 I9Oq5RE47GKR2owa+P3ptxovZtHdrT2xUSPECSRvr0/hxcRBTi76VagMxHMnXujRx9
	 Hm5UrkcTd3u55SCQNFUANstXicS+lhnYurvMbgjSU8W1i/pngq0e2uCJXK0feus+yZ
	 TkVSQKA8bTN2Tj0EbbGv2qaSwhzUqglV7n0V/XdQ66bxNKph8D8sRGIOVKyc+sHrfI
	 vQfV/sEuXh5qKlq/mR4bw2xJSbG5t/Tmo5rI6ig7xcjAudiIfNf7v3opCRqX6u5hfq
	 fg+IGOglwDs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CDEE644A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721803357.23823.12796062637058324005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5412a5a68bee26bf54ecd89fa22f88093ae6db804539f10b3ff7ea01692aac
Date: Wed, 31 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767218033
