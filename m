Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E10D3B9DA9
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787209834; cv=none; b=BXXrkp9MWcBRqPYiWynp1z71NUT1Fdfji4uQCizLCcNwGu/PCejRDy9FV+MML3bb9rR5C/+HkQIFpI52PVf57g7JjnlAXcDpf+ppGRKIalhk5S/46K2cOq3l5GF/K8d//1LE/c7yRhQTn6t/4XEAAxxKGL8GKGo2exouZd36Yrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787209834; c=relaxed/simple;
	bh=cIVdS/ecvFugtzaaqmUt+WQJ1lHi8t3TuNFbcgz5PtE=;
	h=To:Subject:From:Message-Id:Date; b=aDanxDFEf3V3xsVuGZdXYoxrGr842LtYzVn3tEt/ey4fFMCpV4sPyenxqFeC9bCCi0fF/o1tbphCLJlewWor0I4WrAArntgNNKUq/ixJUorE5DLaFflOk40B6CrSaDk7QLKOk+6mkqsQYg9sAzAzGCXkkvfsXVhrPfFZr55Fwo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmapYGUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmapYGUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1609C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787209833;
	bh=cIVdS/ecvFugtzaaqmUt+WQJ1lHi8t3TuNFbcgz5PtE=;
	h=To:Subject:From:Date:From;
	b=OmapYGUs3M1il22MW1s50h1ds7DqkrEb84xutE0/Ps3KtuEECK099iOUHGzZ/6I14
	 S9jnTqtCguFLnNi8NC321RkkIf8lnmeDiu7kGB0LQVm55GSH/IjEAIaj7FkPTyxK8q
	 1rDXRNYd+LP+QJoIdm7rL2dhw2aWlzNOiaX1HnNFA4QrlYsHnxZsPRn0BK3UgwNkCq
	 7JAx5d6rIvzoY/X34wYysOgD302IPQlsyXxu9FHPw6NMDntuEpK+WLkD/nSRjI3pvP
	 0B8QxvqHItIX9gngeCjB9hMA5iEQB+ZXKEJcPAiAFUtiSUQ3sapX8RxkZ583edBsxQ
	 dxmynqDMnlmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C93C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720983374.7036.17889823555683974527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa24866dfee8ac2fb941b64c9afa1bd44fe8c7c702942f90660870cf35bc6ca9
Date: Thu, 20 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787209833
