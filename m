Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1166F36D4F9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772825694; cv=none; b=DNsEVvteVjqrTK2zk4QkFbqpTDkBYLImrzqoGsPeAyobH2JzySf615Xc/qeEW/eIIZZXLr+WEG6eAkK1K6kaXI8m52TzkPkvnCIWDWAfnbhgRT+VxalYufyX+N83cjlcYzBF3QWDgLDRtqI5e07IuPPE49Ajlcb0KPdv3KlSNss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772825694; c=relaxed/simple;
	bh=2qb6Wv9ckH2iCisL0I+PD13vLgw6IUhLAKL3p+VNyDU=;
	h=To:Subject:From:Message-Id:Date; b=OZ3H3UdblKKTHUdwbgMxC0v3S3X95CHRbUuh+ReFv7NO1HAkofo6BxL0LjHMpKPvRmxDdLHb7y4pqeNoc+JqBvM7Z+hjBn4QkVPHyVNMUU65ab1HUb+165EWAnuUYYoCPSGNR9b5Oa3hd4SKoL2jHjd1swyPvTwKs+wWz9zRxpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MttjOYHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MttjOYHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C63C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772825693;
	bh=2qb6Wv9ckH2iCisL0I+PD13vLgw6IUhLAKL3p+VNyDU=;
	h=To:Subject:From:Date:From;
	b=MttjOYHS1ViryBrQSXLYBMJkM+zh2cSphmgIJaR66VtFrmA7uUeph59AugJZcPqPS
	 FTH2XS34OybHYQwnLLeYXjW7XYniI9hRnJ6Wa+TvCmJZ52SI4NaDfaOcZHt4Hk8V7a
	 qKBaukLcR5zN4wTkXZzV6Y20yIGsKkcHxPGQ6FpMgNPkM67cY0bfvbNLEpgjpxYh5w
	 D71joUODbkcgOOQqnScaaWjSo6Y7CJjLVTv2Tvm1ourn5VKDJe1/2PlbvwSPVMkn3q
	 TO3ODomfqGSf5Fcs0x9/NW+3RJ0zLt5nwu49G3Sz4o2OPk/chX2+0NOckS05SJ5uqf
	 b3rF8CIi9SCFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FCFFCC062
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282569360.821.8257483221023009340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75feccc898b6d1dae7679c4cbaa43b659bdd501202388e204c78505ac492d2d4
Date: Fri, 06 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772825693
