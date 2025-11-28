Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D7C263F5F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764330173; cv=none; b=qHVugpUUsueiqqhPU2nTi6J8rnD2buyTdYmaNepXxlCbxZLJC/3lsSyu6L407KwLgok4ItSut6KgPd8qrkq95wmjjYm2v5E51pbPKFv5i7jzOtiFAa9iYVpXqGwLn/5Nh246bRBzXyYgsxZ3rVVZRbLx86NXDOoxCtMQuLs4Jpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764330173; c=relaxed/simple;
	bh=VdR48Xnd7/ahCl425Cv38exgYyH7Zv+NLujKQUREN4Q=;
	h=To:Subject:From:Message-Id:Date; b=epVjsNvPCbqIYpwWcH3/wNRpGSg6I08ro7SFNtTIRnGf1UxmSu151tRHpRyxdpGmEeXgnmVwzbOxNHzPkmtXZF0tnSJ5dscnKQr/BnGjV/uPraNxVUIZLbioPLHp+nqn5N/N1Yu9U81VVMwQIQ5vgYLGxDjGrQdIk/WNceVIeZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbiYzvgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbiYzvgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B0AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764330173;
	bh=VdR48Xnd7/ahCl425Cv38exgYyH7Zv+NLujKQUREN4Q=;
	h=To:Subject:From:Date:From;
	b=DbiYzvgYgXZM07zJpzNwwA4QD6ibuDYzBpn5H9b4rhQNB9VqHn7ix42yZb1QkUpYq
	 Te6DIUbPSGntplHyzhvqDYyepn9tkhXqhD+XecfQstmVb+Y4iuqlaEVzcphEjbFSIE
	 BvCQgAPJ7HWhyh5rGLDXsadOnu3eL5iR3D1c5ycou/hUfn7CWsXU9w7ZLGjcV1JtrE
	 hOtjWTAGrLQQ5fHtbC6OxpQf2+1iiE9KDl/UOANFm2Tg7ZkVnAJ/v4Nf3dC+s587nK
	 6VbPc23iW5GnyPRGMZJvJndTfpFP5IAJUygyKdruy/50GSjU7aoe9ujBDnwkJgKT/y
	 HSZpu+nnwkeKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081DD116F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433017358.10196.15011003333316513882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2459e1cb4a2d3ce45526e00e1cd63981e5987cae10901fc6201dc7874837a4
Date: Fri, 28 Nov 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764330173
