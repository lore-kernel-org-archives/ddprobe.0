Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0991C3BEB
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780028554; cv=none; b=LELjKOXAut8ezz2tr/MTll/XfeM2PMCjKPIh8kMH0YZ161SRnvAe/8DWa5BTe51kjiFJUlMS+bmmsWw/6l8VKap11YKMM/whyg7mzy6XSyQrekPdVtEZKqmtjd+W1lOcUeFYCpZIXZM+GIP4eA6NpLEehOS1KT5PMStKwwxFuQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780028554; c=relaxed/simple;
	bh=nH15NeKmcjeZVdTVOolDOcs+45ZDCaP+NURJcb65uzU=;
	h=To:Subject:From:Message-Id:Date; b=WkRCmzyF/xF+6UUHAiXjltAy5UhXlCypqQVq89c8dKFGmBufjbImsPkHBpzOxAE7tFgJZ/nD6qQ9uypB4Fs5vWPi/SOM9w4/qWw7IneovPBXLRVZjzmNBB58Glik23s5UbgQ/TXfWtqyhXQUCKbr2mkfWsXgLg84SRBfI/WjVGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMrkRa8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMrkRa8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE12BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780028553;
	bh=nH15NeKmcjeZVdTVOolDOcs+45ZDCaP+NURJcb65uzU=;
	h=To:Subject:From:Date:From;
	b=GMrkRa8v8ypg8iVjeHbXA454UFyjmXftGnU/qMcZixVSKO7WFQoXxs7hswyvzpo1A
	 jgxPNkYiNX8/UDr64b9xqUMrqrgE9ceB10AumZPRzIR2c2U5/+XqOCnS5SwOOk+MGf
	 zyOJhK7VIeQqsPq9ZcMpv3ZVb3n1q0OTMWawzL/oKkKl8j9xkMLBO9mbWa75DJJ9+r
	 sPT+rS/6Nfo6/fsTqAfRwzNASLfqym50kjX/7aAFmWESdW1gwzRdbiNouwHpyPfB5c
	 QdXktjYb3GbDxj8yW2p507j9U/dT403BAxiitDS7DZuFLWGrU58UefYYG2JwEFC7Rk
	 6oAc4AFjCeluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31B7CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002855372.12299.8715129851311035063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773c3544ccd8d378045f2d33fa0ea10f0fb406005aa39798608a74a7480e553c
Date: Fri, 29 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780028553
