Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4831C54652
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748577594; cv=none; b=EfhjqqY0Nq1vG1fuVPld2qFV0cOybxcdqzGewCCWyr94MUnXe2il9CL2/tK9NTyCWudjS/TYnLk4zh0OLuA3XPTaFF0NHPDhVsygBQDsmNlT2Qj73FR66m47Z/8+G2PXpim8PiWGPecbF6r9H+UuR3XI12nJt0cef9sMjrsfMzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748577594; c=relaxed/simple;
	bh=8vSBcQkD0DWSyQL/r4XU/KtcnEt39PDOeSRNvcakZFE=;
	h=To:Subject:From:Message-Id:Date; b=lM8BwBskemBD8DkzP+O6VQN/K33CzrYd0USiLmIe4VjSkH8c+ZobUhax0Ik8Sj8Dg4Nig8esPjIdIQvBXfQbNzLx1HDm18ESNbnxYlf/UFgBENV9tczo3ogiDii0QMbMGnT2kPR5PNsEIM4OTLFfFuF0Lb6Jju2W6923orcHYrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NR2h2Ez2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NR2h2Ez2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4616C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748577593;
	bh=8vSBcQkD0DWSyQL/r4XU/KtcnEt39PDOeSRNvcakZFE=;
	h=To:Subject:From:Date:From;
	b=NR2h2Ez2VPTxNYKpaSr1UQSrwNc1TUQJb+LybyTS3+6RDn0f6/30I+c86lKkdAgPe
	 Nt7le85F7zjhSfnGIrlLOBJ5wfqJ5aijFkweNVh0NJ0IvxcaMFdNA+Ij1ok0ZWsxO3
	 QPwm3Z9CJezr+tprPIjWoynvLtIIz6Sc547I0ZzP3Xt3aRYIQFaCxbVGcYmpVLGq84
	 CwFt0ZAdsVXwt3jsU9E3geP2MhkVN7avqTcJaIeia+4hau23SxP9WcvmXZ5sSDBjfP
	 G02o26+mjBLoszSPVZrO1A8rlPoy2W/pTIlV1ZEG/MZl46esBb6BfHJ3PoTi2ELmF0
	 D4QLja4zGsaYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E40C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857759358.9113.10371059325003500851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2600ed2ef1f9b4a1f5c9acd2202b435dfd8a0469bc7e6f7afc682346a5da78ed
Date: Fri, 30 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748577593
