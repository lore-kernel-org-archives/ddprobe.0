Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418CF139CFF
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725225354; cv=none; b=KWqpzUKPMDii4nc/iJGTXWyXgYuZ/1oS8/bY+bn5t57yc+8Dd27iZqkF0KCz92lo22UMWA6DMKOgMun1TOshkcUbzb7AaSajLMEsOmo7221Gmc7hnHA4SHG9QE9cqPv728p68uWDlxdi58sTywQ1MeLt+EMQbmAz7BiZzFM+O9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725225354; c=relaxed/simple;
	bh=B+FvaYQtp0RMmHshrnXEXOSvHa51HyMc2xuz3sXjkMg=;
	h=To:Subject:From:Message-Id:Date; b=R+XmjA3nC3rP+/y4hQ/b3COKc08yrTe2AUos6F/zRm9DPMjPdvpEWC+KYwq02aQheaaRrXAMQNQoVoSI2Ap8ZKcWJjHlUc0Kqhn85TcFg4zJYm46pJetRwPv0LDCZ4mCrFVeAxTgpE71WuLwW/auJYPL9I1n3JQ5DJDLLpjnTAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN+hXVly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN+hXVly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBE9C4CEC4
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725225353;
	bh=B+FvaYQtp0RMmHshrnXEXOSvHa51HyMc2xuz3sXjkMg=;
	h=To:Subject:From:Date:From;
	b=nN+hXVlymWdAXCnKocy3KmwdG2v2lOe/7ioJ1XpMYisYL2plkVTDpLbSHIaSD7OCP
	 uO/o4c8ap5YyjfHRiJu86N3C9cjqEmGPxVXut1hYIYTDjbbaS1IAb9l1CHp7pjTNnx
	 PRq88pnfKVtlSiaS1bIS3Cu2Zl13W/8lbrhxgCRE1kck9hUcm7roaWCVPSEWDNjRRs
	 dbzTnqLrP2zUOciLCBnzPOhvtpZoL4JRNTYBrfHxlL0uS3fHWAOCuGfMMf22M0SJZj
	 A3YySDB68wFxVruFgFkaJcAzz0j6/RhPLdoUKZTAk6jxGhEZpPMvKHPV7VBLznRt6m
	 Htq2sJio8FfJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FDCD3420
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172522535359.16533.3305436151639805886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efe2c1c6ee6b9bab773bb98ae0f9bcb8eda7190550c70a735b6c0b85752b18b
Date: Sun, 01 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725225353
