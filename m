Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F70E1917D6
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750751994; cv=none; b=sxN7/K0XmokiS4aFpR8c4MYNNuZglI6zJm3+Dn5KB/8g6clmKxTm1V4sbtlgfks26Uc+47M+hk9ZDtIe72cIO+NuW04K78eS9OUzJW57On/TzNz1Xi6ABLKYAAjylkk5vVtFtUyhIW2aEEKnshFVlG2HhvhGQVT2Iaxuj+43B7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750751994; c=relaxed/simple;
	bh=xnJpsxnlbCBqiCjrFW0yuFucWTOYjA22KbfL1tKF13U=;
	h=To:Subject:From:Message-Id:Date; b=HdnXR7LL4dicW3Q/SmAh4ez+wk7rZaowMJoo3U0wtx4clqFLMNbK+vUoLsZ3HZ8c2mAJwEFNwp16IdGjtR2Ijr8hiV5/MfOsOKEtUSbnNOpPyWDo76jl4az0wwgGbs7R8mJi0FN+3SDViWboYBPZnds/lTn0H+Lm0ZkliDgp8BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yomuvj44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yomuvj44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750751993;
	bh=xnJpsxnlbCBqiCjrFW0yuFucWTOYjA22KbfL1tKF13U=;
	h=To:Subject:From:Date:From;
	b=Yomuvj44logLrrjgldSBgfXJI81riyG7hXKkYBELO50P2NO3ZfdUTiDP752DYtGkI
	 RUNje43AoOV3a11rcYYkHkaCSUhGK+eHdvhxhnCmvIohv0QOdDNJKDBjj5yDjced9n
	 pYxseqce6FaY3uokI5/Q/QJRL2Km1HnbTaEj+rR29iBQhOKg2wxlV1SgBtx13NRReL
	 U7LTzQzD3MXS2NpVyL1tpJVv9gU/flOe4TwUBewDEmPbcKlqfuWfceRj9NOw19U5aR
	 95Sny85PGdBPUXVDxa3Bvwf42uvaaXOq8BPPVCSfRaUCWolu5RaRYnMILvecdLGolN
	 6wgoY2bxtxVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EECC7EE2A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075199357.18416.10400841973521949530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f882e6f76ae93b434b6a95d4f9836c8415660fffe4ab634319de8faa10c3ae47
Date: Tue, 24 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750751993
