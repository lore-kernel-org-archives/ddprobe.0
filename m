Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242031DED4C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767410034; cv=none; b=Zc72w4J9Ku+8O3S81sYYEgWxjPU7EEZI+2uWf2EuJ7zCgZRk8+PzL0Y7TKA7BxMUuCsfHAqz02B59sS/YerCgnjR2Z6giUzVIT71g7cAZY2wv6SSt/7/9ki1zMSqUFYaJj+Zyy9b2tlMPLv1eXkJDOdzkg6na6UgRxB6TBa39J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767410034; c=relaxed/simple;
	bh=DtE1rpz1c3CeZGitxCTO5L7F2IppiBBr8ND/BBap6d4=;
	h=To:Subject:From:Message-Id:Date; b=OAOkw0bFC8CHWVssuWl5lF7uFSbyVMIvtyH5Fa8Dfp7/wXh3MSEr3iW7y36jIu6H9vhVUcPWtdyp9IVOz+JKjERQ0DYwdFJV6Dkff3O78h1n3F+fMLbDvjS0qc4Qh40J0ftYECz1BozMp9ZJCXLdTWn9n9bTyQ/WW6+MhMC4D8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpBWYiO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpBWYiO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CE5C116D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767410033;
	bh=DtE1rpz1c3CeZGitxCTO5L7F2IppiBBr8ND/BBap6d4=;
	h=To:Subject:From:Date:From;
	b=gpBWYiO977Qijqd+3gpUnGu+jWSYoSW1pKKERKxVnBFGKB5bltC6WxlnJtH8qC9xc
	 URyGl8pbxFxDCtwL3LCbpgFZGHqCAMZg3ANX3ccszjQw9QC94bJnv/NYcv1OjluYO3
	 mfXWz+cOAiu+dsG5nOJCT7DSM8vkj8D47uBX0voweu/bLIYmDZSqL8URBu0ank62mb
	 Dzevg6oK6FpPp3tGrHXHuy6/7RtKYa1Xg7t0ZtAYieE3/I3EZ5EFtryaoEKUHmuG3p
	 wblEEBi2JiEEfcv4dkw2wPh0rv4cbNXfxW2y6WSzXn+WH59kA/FwZFBQ77FzInjRjT
	 ixHh3UbCcWO4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E7BFA3727
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741003357.1214.3123237165711731310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f72faf0e8cd7c32f732a3eed610cf9b88e4d174099517fbcfbb66edb96289f
Date: Sat, 03 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767410033
