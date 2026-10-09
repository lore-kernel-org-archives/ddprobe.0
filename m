Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4632A367B8A
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791577834; cv=none; b=Gz76/6I9eBl3N/u8J47rnGmPVUDegIiqHz/cq1YEaYS4qFOOaObx3SqDrhYppigryxgGf88aChv3930G36/clegc2u2gnvMQXsHpMWOP74iMC5Chr887umCdS106DIS3UmyLLx8L11GXQZXapm4iWMgZKmxxAAk/dmoU1+EWRZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791577834; c=relaxed/simple;
	bh=hMreldh3cVPLA/TspbBga3+GsvJ4GjpjBsS5PKI4zZc=;
	h=To:Subject:From:Message-Id:Date; b=Z7KW0cLUoRy0jx3epPbhA7Dz9Et2PItKdpy37HYQi0phUAKQzcJE+uyuyyNEWN0IbcQA8q6q3TSr6V4qMBWsF4eAGsnI1NTIr8vOibZ4Cruy4/xh44dB2FHnKqwDsQ8+BrFLLxi0lIfZIAD+XbDlpWQ7bLdB3bwH3+Ka5LAl+Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsnqUHud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsnqUHud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4857C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791577833;
	bh=hMreldh3cVPLA/TspbBga3+GsvJ4GjpjBsS5PKI4zZc=;
	h=To:Subject:From:Date:From;
	b=VsnqUHud3OVCrHG8582qGhiuPgk9YBnIEP2Ck+qYi4B19/bJaqIze5i/MEz8YgMMT
	 q+Ye2wtgAGFdNbW1pYtabz4o6o3bVSiivWeQo62VbR3Z4vaJOcSKkfe6Vb+hOqiVji
	 SHxzFBYR/plWnLTEHseqVbvMMKGzmCTwGJLojYF3SBcB4i3IJoWTzZYwOYcpH0FlBr
	 YobhFvBmwWX5JEPmufDljX9bi+SE7MerF7a4uy5eqLbBPCnW27OlCEjLSfAVuoLU5o
	 LTg72ITH1a9a4EGCJvwkwo3sIbKnKG9ehMJZoCluj3zloTq+aGedPCQ715o606SwBp
	 PbIvuNfiAhjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA2CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157783369.12665.3267887240559342606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7f29e55682b86a4b0e1f3012b64ea9da008eb7d4328de77722e9a1a4d6bba4
Date: Fri, 09 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791577833
