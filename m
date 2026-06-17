Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4088738E12D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781735194; cv=none; b=fHFlcsqjLW9O6c9BFryQ0cceSTsm/dSweL7WC60szPT8N+h6h0puRznjCFwzSikdmhbWzhIiZj4Rcubv0qip7Zd8hJtXy5j383qEWgZAgejZEcEOy3I5j67x3BdCVZdV99dQMdZm3+AmjbRav7pwcwUj8NKXA3KDZGpua48HPPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781735194; c=relaxed/simple;
	bh=ySE4/q/lYg+cfCfNIsvkUeOOwtpxK419b+JSuSXlvf0=;
	h=To:Subject:From:Message-Id:Date; b=QReHmhVJeAIOracioYy4pNveu5DpoEg0i6cVBI+/IHnhlFtfyMGC4YpnnpaJU6MH2JmD0Bcq1aOrT5EaQs0o/giVt6AtUMM3y/Hmwq7Ye0dQdOuB0RQ0KUd8aoWU8ziin3elmLV6Zn63NnmoZ8eCmXxXNpkS+MOiEGn6uCvdRqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlhehfVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlhehfVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF97CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781735193;
	bh=ySE4/q/lYg+cfCfNIsvkUeOOwtpxK419b+JSuSXlvf0=;
	h=To:Subject:From:Date:From;
	b=PlhehfVj1Xnc5U6YDbX+iuOR4ZVRMRcOVWUreH1hEzOe5I2CQLsPQ0QyWBXE7oSrB
	 277OKilE5TMDSh2WaYhogfljScD23AGOU9myGzN5p4u2izCviGpcrhwUOJLf9nTFe4
	 38Ou5MkauCZj4sHvwahhHW+N12YMmPMvE1GXgkQjghE3q29JWqBf4eFLNGn5DAIxB8
	 typmHAtxHpnhjCm9dZ+54EhFL3v83DY5e032gTAWqRwCa8cfcF0B6FdVAg4qkdWTIY
	 e/qBf3AjadfQ33C1TiQJAtuUFz+aLf22mzDXUq3Vgf1KaWb9UJqykbsJaIvm9Zfrp4
	 zSRmwB58oybog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCCCD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173519369.30360.14256923566352900349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fa6906c11f7c8d8cb09a18f245d3ed02487638010f375e7d8ab5c1b2687e26
Date: Wed, 17 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781735193
