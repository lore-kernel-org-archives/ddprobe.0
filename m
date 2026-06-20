Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE0640D57A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781940994; cv=none; b=mu7sY9AYvJs4a6Qf+4WuKLeozypRFJRloGdSThCf7nVKLHSLEKSl+U/EaVN2Kw+lqNCceW64PQdsXcS8oNxAr2NCC67CcF4BWfg+Jz5/jL9I6TPpRhV+7oiwf0kgQdFDBkdQOdLftNL6hO8J1CwXiSAlVTmD/YX6ygba8exQKtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781940994; c=relaxed/simple;
	bh=GGcagSnYBybccRo9nBXLaWGqzz1PddSCMSGZvvAzDwY=;
	h=To:Subject:From:Message-Id:Date; b=j5V4TW2VyOlNvH+4j16u1eP1jyJwcPwZT18YtHLrmEOe+dg9YA0CY6JRfPVAEjMldtlQMago9Vcicjy3pdAykX2OFhcTcuK6lyWe7GvAwx+dvcO9kotAueyF67yIp5QbsDRlDXbMr6sB12z0D75LNTXqfRk8Ra0ZdLDqlpBoEr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ8aWzWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ8aWzWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07C7EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781940994;
	bh=GGcagSnYBybccRo9nBXLaWGqzz1PddSCMSGZvvAzDwY=;
	h=To:Subject:From:Date:From;
	b=PZ8aWzWpNMuTEsVvysvqm6CS2AVMTZoPK+sQS7l8wPbdloHpzsrFVaL+OgtX6vaOs
	 H+29dpmpI3DGMA3MuYmOswccdFFDDFcVij24bcmB3iCZ9OXDrljwZjMC1ueq80qQoz
	 xJsw/2FU9R3bhiT23XtPCKPEcDT2C4tCuETIeApEqJx7htRFsr2fx4aEVEh4NkIm5X
	 VNAPqJJL2xgnSJw3cdIJUoGC1LMJ+Cn5lSW22lmt11NKjAXmW6020/FNFsx9Ae6F5d
	 iA/QMIGrqjx+vVd1lnc4zYxsNaVbubkxSZ/bvxN14klX7N/za7WvB8QIm+FPFxxhrM
	 32FbJZhTBbDPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C426DCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194099374.10739.825633516045933164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68711cf0c45a56c3a5e1e0e2b8d3ef98f4df0375c00bc08423cc3dc8eb5a7ae1
Date: Sat, 20 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781940993
