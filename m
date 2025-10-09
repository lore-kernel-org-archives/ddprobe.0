Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EB81917ED
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760050194; cv=none; b=APncyq7yITPkSNb/bJljmV1Ne3SFwQGMbd2UgHg8v+3muI7NhiiyxchShOo7iRCx52yWLAYPaGvtCI1c3+RJFZW9uIjvQz3KZxHHUaWlw+7nbuLtHOs9yr0Ru6VV2VvglugfScaye+aWyCdY5r0BuCnYDRI37LZ80c9WWWVuhp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760050194; c=relaxed/simple;
	bh=MEbsBsxMzwMP1DUo9HqjXADoE/zZKc++osEOaCLdniM=;
	h=To:Subject:From:Message-Id:Date; b=TIl0gyFTc5WvuQmhSxu56ZOFRO0oAfqJraAdx9WUsIAPRfDXx5zkEET5kc98hO5UZii2OU7tNos5eY9dz1R2uZWmrIiuUy700TZsVbetvz6UOxvTsuxnyLUj/RE1jT2JgvtPdoOoSrcT1lhDFAF16hnuEL1iTbmbynJIyCGlKM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QACmoKiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QACmoKiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E5C4CEFE
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760050193;
	bh=MEbsBsxMzwMP1DUo9HqjXADoE/zZKc++osEOaCLdniM=;
	h=To:Subject:From:Date:From;
	b=QACmoKiJM4dRIOFhzdmPtzPSFQbC9j5MEPnBVTv66lLZbijZOSD/2L/xxOrjYC2wA
	 jniN+xmmsnTALZjilufEF9S8O1ChKBHkMZ5WtF2sZD4EhlmZsssehWbnqD1SK9Ni4u
	 BllcdT0hVuEbLrDzH6dOPo56M0n+ARrlGaQ2MVWGCR2qUdkDw0fzUYI6XZu7jNkMTc
	 R+/Tr3hQj1DdlaZakX5Rn2TBMtloWBIECirpclzzvp6lb/+D7m8fsyO3vIeDvRJfH7
	 DYLF5f3cnkKOunoWPQRBDYhkmGBfxcx+gB71cAfyPsy16pKY38mabAcsYrxcK8cY4q
	 9XhwNaEqwOvdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92926CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005019358.24850.16108602223869275952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aecb3593d8fcc9f4f9610d60546dc7561d3138cbb062726e2357dbb9fc4d151
Date: Thu, 09 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760050193
