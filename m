Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2DF367293
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790401234; cv=none; b=LSltXdSiNQ5g3rUv5mjO8MZbj/ELQ7BUupQK6zTIlquEdxr/n7x54K3NRCZEyn+mRGScf2pNfFagroJWVAdnyYkIt8JpRb+Y37tu/jWvvUA7cgKHap2vptCT9tULtDt9sBTLwFTBwwZGWs/vtm5uF4N2D+elWp9nOQCzehkeLRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790401234; c=relaxed/simple;
	bh=g56/O2SnaFy9kYldqpT7k65d4GVHqpscXodiluExwBY=;
	h=To:Subject:From:Message-Id:Date; b=uFnfFglBE5+8xoJYR/709EQSNrlQgok7oV0JDna12Iwwb083K8B8ImJfM48WoqbZcwej/Jz32FBxiS+eu9LwsC+nF+/XgDMPBmFTnk2secciP89zNPGkfebyyIlzQajJEUyb0OYUUx1Iqw3jrKETdLHYEgGpwjrLV0YnBjpX8CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5td73DB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5td73DB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D09C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790401233;
	bh=g56/O2SnaFy9kYldqpT7k65d4GVHqpscXodiluExwBY=;
	h=To:Subject:From:Date:From;
	b=Y5td73DBB45tyNiy8eYYCf8Ru6AuyyVGlutoPO+NhH4V7sVPJldmf0cUfA5UT0Qt/
	 8LZz35idwNXdCu7GtbjwduCgIj9XR/irudIaFB5AlaqFwvj2hs5w6hJoOjZQ0aoRBc
	 WZXnMoutAKT2cfm9VGnD2RS1vwmEgRELrULeFukPVkTGepM8hSoeDThVgppKBGwtYS
	 KE/EKCORJ2QpRdYusUIv0SY61ARxgXmwMnBn0OaOnmrEBUxvOtjcm2H8Nsf6/7Lcgp
	 +AZ9WnUBARVPpacKL2Ua7kcqTRxZPXPqllH3n7XgK4//fOaBVVvPIFZArRKgWVcLM1
	 1mszgTNCUNQgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06ECC9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040123368.23435.10354011783987117092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dde886df51a15f6588b1392b71fd2632aa52505176b746e60c1292e4a981c7
Date: Sat, 26 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790401233
