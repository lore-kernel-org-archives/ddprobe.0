Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FA6610B
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712957363; cv=none; b=N4iu9D/WtB9tYJuKAt8PUXNZLnyuvdZMDc81UeQrPvLwo12KXYk+DuIzmTQODP8daR/nelQvHvwE+I7fRrf2uf8sZbMhEt9DLy8mPAe2Ld5MHTO4uHfenNlk2si4nnAHFyGaXMfomGGdc4t4vcMJVqWCSit9F90ct2OPt6RYHbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712957363; c=relaxed/simple;
	bh=yDuT5R9oOYrsuGjp2WHa4G4rm2WpjTg6DtKrNLMbuGs=;
	h=To:Subject:From:Message-Id:Date; b=p6c3aq0gJJIGivUHQpgLJwusFePwPcVmf1Gkd3CEzxE8m25RUJWthxXDlfT0ebDn2Ete5DpAKE9+e3x4ZFo6+m6glBnAMXtgWY6oF0S6hUza/GG7Mm8IGN8LVQCQL4nphufHIAtJMpzDrgpSqYqVJtMofdRUgXEVQqwU4CeaaH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGP4Sdlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGP4Sdlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6974C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712957362;
	bh=yDuT5R9oOYrsuGjp2WHa4G4rm2WpjTg6DtKrNLMbuGs=;
	h=To:Subject:From:Date:From;
	b=qGP4Sdlgpuwoi7D7Moyki4p+JbezO+x1HTQvxQTSyb9UmLq3csdTDiHNj0VGAE8XX
	 LyBeopye8mYv/tLpp7XH7BRDKvh7P/Zaj5792OnJHvOqt8a/C22DshdoQK7Fqby1iB
	 S8cQSlCXu2oFavne/dRnJAx48CPdlDfoHFL44l4OekiaXCZbkj9uozHcBMV6QHBpOK
	 jSWNvx3Kp3eBKtsRKg9Mtd8LWnRajvxXutIlE03xPESrMGuDz40/TVrhA/GUibeVtL
	 CUqTzdd5Qn/XyEyQD4rF1eufVXfFCRll3vusQ0WpkQD7yDfq/Zhz49XyMqPvzFsU9I
	 DwDXjGO0Fa53g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E32C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295736279.22796.13625074147274322810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71904f1f44b68f5382167852e49454e715ef6a05c0b05212648ad3bb0eda680f
Date: Fri, 12 Apr 2024 21:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712957362
