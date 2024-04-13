Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5227156B64
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713048563; cv=none; b=MsK79lrnVxFCW+zsimjYt0Da97cHaEfr2oJQuVoM0W4F0tDtcjjbfDmjRpPPI/1Qbhjhun7AUoPJPiB7JZFbMmerWLIn+1qys3a3/4qbHCwPSB12uIJ4HiCwLHGjbNOc4mWObzPnXcPC5Z9o22sja2MOzoU66tm4TTFJyfhkdTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713048563; c=relaxed/simple;
	bh=9rtrFy516Tnv4Vo7YgXwX+IieXUCIJ+Jo+UbaVplipQ=;
	h=To:Subject:From:Message-Id:Date; b=T96j/efb9O5a6OrCKS+qehtgz/vlUjwkr2mUmB3C63MypLJSuBM9VD1zG91NGWL9JPAVqCO0vsrAsYK9JdcBoC+Uc+VN7sCvB3HPop6gTgYsB8MNAxN5ML59OXLtmdb63oSEUEnp9SfgmQpRO2tSVhcUzOE5sRmPN02Kn2QJSAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOEyajgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOEyajgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C91C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713048562;
	bh=9rtrFy516Tnv4Vo7YgXwX+IieXUCIJ+Jo+UbaVplipQ=;
	h=To:Subject:From:Date:From;
	b=kOEyajgq/J1H/qZynFsdEwA3ofsBH+6BD0wdxj+G4EGjDQfoQST/uW2JCQqgBiwKM
	 ZPTfq3SpoA/ejNDYR1l5UniQdQH+tS0JZkEHYFskz/v9svReYNCuzy7GxyYAEfnEQV
	 qc/nrS/LPwwU/GsaP8lN00g5udPtGStaUy9BSzXukOMHHKPdfNDO+a4nJZ78oe7KiS
	 92DeykS0X+nxfaiMIqINL07aF90fFx4TcZJTMvubkgplKR7QIqajZYoR/6JAxR0Hnj
	 LrFkGJkiSQNc2PHmDe4FW3WQn72HSUQaBycdwPWmLWsxBK16vsPXYLe3gfKpiWQASF
	 GzTfYdWN4oM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4396C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304856277.17333.8779810182710005402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b2b5dffc5623a6dfb492db44f41f770b6fde7d689e19ca3caea0dd62a1f7ab
Date: Sat, 13 Apr 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713048562
