Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089262D0C63
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779198634; cv=none; b=OXl/bk6AX6hMACbb7lQ6gVpJ+tx2ay9kE07K990VPRJAY1LlnTeib1Mal20migv7y5c8A39dw2F8WR8grZilYAReipP7rmGn77XN+EbBx6niUbTwn1cHzDoqiBkwHmhJCM+DQFrWn518P3hsxuJ6oYjnEdI0NpH7G4jnKj2pTp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779198634; c=relaxed/simple;
	bh=+kFgvLg+KNjc54JwQkJAgaVYHTkDWvrnge1+79x1kYY=;
	h=To:Subject:From:Message-Id:Date; b=fxB5p+UL5Prs/Dk5Mm5eMus1Cyj+s/xm9Mzd6CfdKc4rSVOzpK/LAONFynaAvA9tO+ML6sCvXApXUUAMF/+HhUOe9zhbaegJSkn4kFF8ys6Wj1oc84Cz1fOFtb++/aN8LBgTj1tF9+YxfCrrkbeiomERlVfkmhOioskjQTEPTR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUqDVLql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUqDVLql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE25C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779198633;
	bh=+kFgvLg+KNjc54JwQkJAgaVYHTkDWvrnge1+79x1kYY=;
	h=To:Subject:From:Date:From;
	b=TUqDVLqlkGAtvxZDTmtDSSbgTQJDk8lzCAMvALnTv06Q8LXvASlHzk85cJCBLtdBl
	 Ilx/Ya5tFBOuaCdD6yHNAe2ABcDFeIe66BpPy+NhfTJDg1bAlE3EQdBKSqhxYg6Ccj
	 6Y/7fAow5UTYTwMlfyy66cxPyt5564/RzOonXN/4Fm9gAgHA7++L2pqOOv/e5ch71L
	 +SyJSJ2TUccMmM2IEwdWpSrf7AZlFZOg8oZJ6mn5WFK1yIKy4X+llmYDrSGRwOaISv
	 EatLnWvmZbs7uRfgi4HkMLnBKv2j2MqSf7Hpv6AUfn412fA94lAJpnrQJK2BgSLno1
	 Spv7NBapWyykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE73CCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919863370.2003.6835706348200441081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10affb207d75af6db3aa55ad12e92136e09625207092dd305f8fdc5912ee68ba
Date: Tue, 19 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779198633
