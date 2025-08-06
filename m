Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A4017A2F6
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754449195; cv=none; b=idR+mbK+v8oZq0g8R4xSKZdHNrKqc017CUbcmVk0VFYThHA4a1U4nx6UjNUiFKmeEjZNXwCl88NgIjyVdOccGkNozKLqB7AAGZ5WZYSAv/j6BDhB2wIGPPcLFa/SuOpQNNaS2Wp7F9wr5S0UcFTwoMgNYVcaelY0CNCEoQrWgxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754449195; c=relaxed/simple;
	bh=O3jkI3mEJ7acNsT9O1HIRh/87P/XaUOM8stqhFKZtCg=;
	h=To:Subject:From:Message-Id:Date; b=WfEU9W0Hb0n3sP8/Oqte9NMRDR0anAOQGnWULBZyG/opoV6TRrK0w6VFDI85YeEi7tiaeSSQ1lzewu4QSQNewm5hjDYvAs9QySYbWCus71dO57vskbrngxVPILMLIbVb9s0eMQH262L+6b0oqUbhceHUGEEDuS4yqCSfgQTtBSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2uL+Gx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2uL+Gx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A4C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754449193;
	bh=O3jkI3mEJ7acNsT9O1HIRh/87P/XaUOM8stqhFKZtCg=;
	h=To:Subject:From:Date:From;
	b=P2uL+Gx7cM+4bxKA6TEv/gj+G0f66LNSSyyFUfBTX4+NeOYj/VrbL4yP6HKygZ0Fy
	 ibY+L+Q2E+o9I5ZhScaGHCQIzKZjnBVUaQsmm+tQvixpHplOr8ZvsMfx6Pc8AxcAfi
	 lzwRsV3AXIwwKPNDd9BNx1K39VsulEforGhjMnqVGaeXtV1uDAUSzWeHkE68T1uUjC
	 APfDf+F5YyrpWxfr9tHsxvOXRGuMG80XP0QGpxoxhbHgY8MxMmHeQJj07sgXs4gopz
	 t3wW52i9D4Jmgy9iGrpESpoaiDRLpNfcwxxx1xed7/WtKWfOZLVSNz2AenHrS4bSgL
	 Wr06Dn8GqqBRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447AC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444919358.31551.5497325079947256181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4e805c87d00596e699a188ec3ecf824628839033c643179c5a3269205d8e93
Date: Wed, 06 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754449193
