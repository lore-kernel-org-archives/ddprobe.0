Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497625F7BF
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765600974; cv=none; b=JQ4rsIW2+8cNIBFMaodWsmS2Ap761uuqFi3gNWs4UcRwTCDP+qib/q10sMkvmleTatkx0vtfWLf4D+z1a+nDjPCEVxlVTcf7YZTzQvM1L2O3mmVgVGqEZILoQdglXDJliRNvgLj02j5dCOWikZ/uX06Nt+5OctvFtOLtL5pnmCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765600974; c=relaxed/simple;
	bh=9yHtdDTPQT9P+KeFmyi0Se1p0oU1H78dKMYQIO248Mk=;
	h=To:Subject:From:Message-Id:Date; b=BTQhSJraSokH05PeQmkaVWrNOdl68xj3Y0FzY0OwLPsOO+tDT07No8nIEE/aPuaT3kiV6uU38Q2jVQIySs7Yxq0pPBD8dGxAEfCviB7Oac0omdvfs4VIDh9wnIV7sGAgXrjx0MCeGflpWAc34mjS/5pO47ruRmlINBxLPhNtHXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCZw02gU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCZw02gU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765600973;
	bh=9yHtdDTPQT9P+KeFmyi0Se1p0oU1H78dKMYQIO248Mk=;
	h=To:Subject:From:Date:From;
	b=VCZw02gUwLTlhogn0L+GpcAd/hO3RAl5EmraRnz1KuyjI03qOuqY51VM8RQsOLw9U
	 TbfE0IE5Z0yIDliBBtWRfmxatEPClnsyifYFMjSiJsi4eMRVh267+0QhNYiBETC6qh
	 +h37P8PDfa+Aaa2ErsYisDZwi3VIgxuGeZjQDfBVvKGMQ3mNjRzMKTZ7Hw4UUSlbE7
	 qd8wOz+Uo3hpiyoTzD/hJpGOxqqlt9ZgY/9O4snu0sDcrE5uQTPD5LkJd5wtDxcpx1
	 x0OTrhB9JrE2eVj3gVpp8tB1MUHsbYghFIKGy3uxZpAmuBuP5dYhGELrUR/mjD9sxb
	 o+0lhTCW1az5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9613BD59F6C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560097358.14834.3436795420120930346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0535f6ef864ef5306304860fb71f88ce03d2da98283aeffa694c08f4746608b
Date: Sat, 13 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765600973
