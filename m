Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A283DD86A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791493234; cv=none; b=IJSbt2Abk+z/6B+VgCSaZk/IOJBc0wZbQwO7wg34nXqNaQYV1gAgdxOBEcbDCNXb+yoEj5L4svAucraibqTZIMjdf94onwA9+MFMgEpygQ9K/D9y1BaPRCyOKF75D3+sIVAzlxREfBubV32dQoxLmLe+yH0B9LxmTDevB2WvmLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791493234; c=relaxed/simple;
	bh=GuGJQGjhEm1lDTxiz/QPgd11EjWaHnEXvvCuRK2a7cw=;
	h=To:Subject:From:Message-Id:Date; b=CmsWRVrvbHe9lChxwFW6MWulpDfwMxEYrWLc1ISLbxjrQfCORWCVKkapO0wzDe775DBajTiMOcU+gHAo4iZXJ7OY6qsqImPek0P1JzUMO1AXyAD+/Ug3clgf3aGstTg0XoV8NRXCKf+B/pTzdN2DctooVFpgPG5ysuSOygh09E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4g8ewcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4g8ewcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FBFC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791493233;
	bh=GuGJQGjhEm1lDTxiz/QPgd11EjWaHnEXvvCuRK2a7cw=;
	h=To:Subject:From:Date:From;
	b=o4g8ewcLRYtnncVxT/3NTw9IwlVeShuvfezLvAHheJ5nOXRjlne8kPp8EcvHtARnO
	 ThW2IAIkajf8oQLPJjn0XIxU3EWMg2jhIrrjDJ2RYZfphbcoLPgZgtrA/7ktQC3987
	 qV8Ko/ua6hbo0b1FsZpb1vx3ha/ddivl2c9PX+HlS00WZxK7S2BUz8BDz1qmxFaeRe
	 GXjK8f/bw8jCvRUWmcHOtFhyikf/0ErEMBGdRxcSPMbMr0neNCw7ujREwYEhcPIJtj
	 O4k0szMmIyKBaUSg6urvvPUWDDyCSR5Ai1+VAmDF5zz5Htq9Nhbv4O3AVhPtSHGUCH
	 ak00DAXYPRgGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39B7CA6016
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149323369.29267.12838694879005300196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a593333c5743a2d88f09e20f5652b6dd1698bf002ef8526f8f71eccd700e45
Date: Thu, 08 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791493233
