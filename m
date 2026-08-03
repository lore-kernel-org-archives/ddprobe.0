Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F66279792
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785757234; cv=none; b=HeIptuGl5yt86LWRUfqAjl66EwwEjIKMRNJ/b6hgtgfuOm+LdTx0E9PF051ujI/2ziWjgFYXknzi5M7uE3DXrTQUrnSNmKoKQlldB8mk6D9NOatL3unmWsAmj3yC6Y4OEmN7gavtJtqFlLt3WV4RXZ/2PJ6VyZXaR3/pko6NwgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785757234; c=relaxed/simple;
	bh=FZmsfZwuvJxjoKpf/mcSI5VZaM/3GEwbIYZnG2vPfDM=;
	h=To:Subject:From:Message-Id:Date; b=gqgi+uyQodhqMaYbekfC5l7vfU6Wiul+MzaykfouBMVtI16LVa11RmMBIw5SIM6dmhL6KNmZTQhSOCvQPebOR5fmU2hTIxxngRSsOVJ/GU627Xh9WJ1vZSFS8kPS0F/ZG01+KmoeRs5R1RxZmSXaIEZiuRA9uDXYYsoC9Domlv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtbGnQCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtbGnQCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9EDC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785757233;
	bh=FZmsfZwuvJxjoKpf/mcSI5VZaM/3GEwbIYZnG2vPfDM=;
	h=To:Subject:From:Date:From;
	b=GtbGnQCrF28TK5OMd4CgoDVVa+sLMMw6yG+Es7C50p2WhqhwBBQBwrRl7QpCtUCXv
	 Tafjd3JRGsH8To1uFsTYBe1gPXFzCCyIHWkrSQG2hXlgS9C5lPjmb1Yt/6Ur5SmmHC
	 oH4FWJ2AUX4kzMXifl8OuNe0k+e0MMplcGX/ctTjcJPnjYdY4jAlmmyYYQa0FsU1/5
	 bSOx+G+PyDiUK62r871x95l7pdG1xQHdWjIq8hK9UDGsSwmb6Rqt3pwPZDEqT9Frsx
	 k8Xjo76JUYH14TsCSx9GCM93KFNoXv7oU8EDUakSOH5BjQwBvkiKR4NSAkCv1a4RWH
	 iRz2qbioJohKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C26C55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575723368.31251.9405436275025869349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e772d27c85685d13448a8eb9a0eb22e4c61e51c10750f5f6922317eae84ca88
Date: Mon, 03 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785757233
