Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505C31386C9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784416114; cv=none; b=E9VTNSDFoS62P8N1loRysI642AbPyALmysPAfBvXYnp1DA88S2XBIN4pfPAcefQQFPnnZJGNYpw3TJthSMk2kB+JLBffvLKJvRpha/pNfujLCkIOEOUO+pOxWqKxjVRcj6PPSUCNNBBnrdGONYmitJGbcfMJCdy1T55CloXiL4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784416114; c=relaxed/simple;
	bh=pAzcKO6eTZxcqQ27IfeZ8nfrK+na1OWEduP/qiaTots=;
	h=To:Subject:From:Message-Id:Date; b=DSwCMmYApGM7aCAhsXimd2CGjOA7b1F3VJNFvsKWoEDgwNAtrov5/MOGc5SfWhHlRbXmhaun3LGEz58ET9FJxspeyl38dIU9wE2bziSI5p7xxJ4IhAB2fRrXWhcsnquMTkZbKG75U7EDKgQ8TxiGTU8zCbn4YfhP79uOq5G/S90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+s+NPh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+s+NPh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D40C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784416113;
	bh=pAzcKO6eTZxcqQ27IfeZ8nfrK+na1OWEduP/qiaTots=;
	h=To:Subject:From:Date:From;
	b=s+s+NPh/XmV0Ph+iISmgoQoPQXP7q2ukahJO1ZxUj6nwumD7cSAmN++ZeiaNGlXLp
	 4lMeA0YADfS7kw6zdnGgNnerriJxKd/tVohLUJeLLQIw55+O4cBrOwbjmKqDVvJ5//
	 BdApbZY7kqom/ywvtDmHApeqIvyIERp1rO2QIFnSj2O/PW2nfnKtFsm8nHukJc1vcE
	 NNcoQk+AHTBDXoshQIAOl6MQLfcHzBmNPd0BhLQAW1zzXCTOXLoGc6MsKEsckTdnfM
	 sfMIf2DxTh4hXCjjmczFuUGtZjqT1+WX/rrl7NqsOYwiDPVy1ubeRnp95v3/jHYg8c
	 Nt8QMyX6PL5yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8F0C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441611368.26124.13680190120316964222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e62fcebf68f9eaaa1e2a65b6e590f5f0047ea1dde8cf1f4cf9fd7f1136f9cf
Date: Sat, 18 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784416113
