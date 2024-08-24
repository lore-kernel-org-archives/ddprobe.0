Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3987614A85
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724526954; cv=none; b=AUrWmzq4mY6IAf5Aun0FbesosAa4TYps72NL0vt7VOfr6VUhaE3EgtzWJTgICeOsvZD1cVTf5cKwiVjWixan8GPrRbjedVoLS2nzUj/BT90davecyAOcM+8jDUeKdzr/g2wUdNJp6zdlugpVp7gnLxtyY01ykUJXjlNriLt8xnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724526954; c=relaxed/simple;
	bh=wCtRuWQx7axQrmc/4yD2i8ZRdvgf+v0M01i69ANA/qQ=;
	h=To:Subject:From:Message-Id:Date; b=CryEaoembu0ZwEzD86GNUujLnoUFGxfPCBSyPR9HS1+3AdKTbHZzsncl1aYNMuu89ibEVQSyY5YkxfDzVrMOaO3Y4PWHIuhDxdgneSag2eia6Q76aBYizJrbsjho+bNx1xZTA9IpL1s3pDQk/GdPuxkikG3ns4U4pVSj20ZoOL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHDxxnxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHDxxnxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03D4C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724526953;
	bh=wCtRuWQx7axQrmc/4yD2i8ZRdvgf+v0M01i69ANA/qQ=;
	h=To:Subject:From:Date:From;
	b=iHDxxnxpI4NSPXOTSimLuRDHmkFWMKs/DsM8+DfInF/+zCR/Qik9AJXcAiFVyL9yS
	 C3rzKpdD+qGN3i6It93E2v4D5pPs6zwQCeXlORxXzjHsn6OKFN8g2FcS6lEKi4sYrq
	 wricIZ0CLxSAtOurv3pHAPMz+OTYAI3jR3EdCwGfmFqLKEHvlKNVD+8Fh3156rMwvo
	 M/xLM+PEy1m46ZOQmTS/N1LSTuw2cmg1Mbv8nCTJBQZQvbnxETSAdZPJAk7GF/wGgC
	 hyZWNGdsxhvRh7T2ca59SvMThWN45/Chr4M2vFMgHZl5svuRaqplG5XCO4g1Mm74i6
	 6qJhTL81g0evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4BCC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452695361.19975.16349496024757054969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f4d9e7c1d03cd008579d6989fbd1dfffb16f1f2ef61e5b48c2b34449790387
Date: Sat, 24 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724526953
