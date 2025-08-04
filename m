Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5E1D63DF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754293194; cv=none; b=DOiV18jIEnSbBNdGJkCCcXXEfmNICvYBQUmsiHCb9qgTDGBkaR5dRn7JT5uM5KXlKtA0lrj5LETkLYfscVTkcVsrVTttJU3/ayHcLOn8y+QLCgmeLwCRv8ZjBoFJ8I8eeMpQDeGVG04aaUiW2tkBQMRdcyEb5xGquVqAPIXfrFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754293194; c=relaxed/simple;
	bh=6C9Tr3PI/6BsAcU9+Hu/yIKHkr+qjCwtFMGp+5fKrRU=;
	h=To:Subject:From:Message-Id:Date; b=OuZ3uRZotDTtCoigz6dMYKUd25IW3KDE6CPQi7lKTZlS7/2rx5Di4Jp304/sDy5Dx1lE8jkqwgsnkCwq4n995eNWFAEpSVakMriZc1yqHtRYuwB1Lk/K5OnajjvdCf5A0CJ1FVPMHaRmFbRO6W+1QZ2bpXPxksA68fOD1Ebrm/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rerLHjz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rerLHjz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB77C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754293193;
	bh=6C9Tr3PI/6BsAcU9+Hu/yIKHkr+qjCwtFMGp+5fKrRU=;
	h=To:Subject:From:Date:From;
	b=rerLHjz9DvbyufFCWBIbSBO4NmA5r/70xuRZ5wCI5hS0Hd2c7DqVZOeTHZOD5rdq6
	 aSEtAPzb40sCmeQasaXpm82/9AKvo1na5b8ORIKUiXwUkm3MOsov/N2LBjOdx4hJP/
	 DqT1MWKprTVnOlc4FmQ+95x19h2fhdU+je999Q2cqykhkuy3+0l9waiCqKoL8xfTIv
	 CFWl7zs8NXh8i3wR4T4i0cqZ3SvJ3Hm1mZ3wwnqJBFTyZ4elFhxy+nl+5E6FpW+7Ds
	 wNie08FYGBXMcdsXckDES6+nskuRN78Q5c8g5ri3SzIWfguSJXaspfaLjKUBw2XHJa
	 y5WsphGb+QozQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95924C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429319357.23309.16154363307213270786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca84b7f0d968ef96e4c811bf035a8c76453dbe5638b13748c0424fa3c7a6ea3c
Date: Mon, 04 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754293193
