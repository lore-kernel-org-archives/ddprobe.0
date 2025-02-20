Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299E3213E67
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740077935; cv=none; b=HkWiy95G/K83SzhkZ65g7FZTDXfDKYW5UwDBSmP/Q7p7hlJpdMQ2lN1IkXHGfYW+TtKmC5kqmVOIl7suwWxWsrG6xu4++n32ZQLtkpAv9d0FT6UHrdOSHMdKeGvfW7vV8tmRhvEbZSUjassFxoUImsm2fo8HHVRKFIwFd4Kw5JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740077935; c=relaxed/simple;
	bh=2Txer4RhplU1xVMkGBOgjmgzpiWiWaz13KRPkNnoFVQ=;
	h=To:Subject:From:Message-Id:Date; b=ux6GbwGTcNJydZ1R7+abBw+nJthHaHJCgjMn1X13A7CImD0biB7EOpgBbiodYgyqQLZGkRiytOXfgiP+8DXmo2TlH25F1g56NVBY2uHf0rRoca+8USLhDknJqY7xMLIAVZArMVRj/Lxnz/SZ6wEG6UafwXm75XTsHdChAptiwQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqdkuPDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqdkuPDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD9C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740077933;
	bh=2Txer4RhplU1xVMkGBOgjmgzpiWiWaz13KRPkNnoFVQ=;
	h=To:Subject:From:Date:From;
	b=GqdkuPDfPBXqLQzq9FQGpsAV5zjaeuD1GszDjWW3B8LzMvnBPFwSCnYy1jsnJudke
	 I1XXcjGLIrxMJLpcEmdbRZfSsncxSt7LIsrtvbCAGYsdB4Xk1NAOljsLu4e/kY1qvH
	 VHw/wXTKLdMluXu5pNQDBvN+C+k4vcPsy6CXENwblHEYaVeVwh+5LghYfuqDj1+pmP
	 wYHRa4Dxzs07ksp0C3mw4b+xl67MmQISvWkTzROR5a9wFcnhtJEbKpUinSFfFiXVPm
	 bAOK22SvrWstJk2OkovqmCa+3oYz4Tw77n2nqgOwPpt5+xcrk0c1aYVmBFMVFrxOCl
	 haYNO1asKRzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93553C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174007793359.9985.10431639849644117613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5273e62a9cf9873f1ec7f902d75a6cd76dffd2ed6960fc19ab233ba7118c2d71
Date: Thu, 20 Feb 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740077933
