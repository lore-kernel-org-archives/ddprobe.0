Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6F035A397
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786296634; cv=none; b=X50o7g+d5F/pWxndkFbevRHaurnarYWAn8M0+nRqJNF0Is/3P7sHaCtfu2K0DG/nRzPaFYB56ii1YYgJjPakJguMBY4xcZYBKe7aKzgxD0fFQeG/ukpT1k7XGzk4LsEc/ddoVeoT2ZDX/K4rvsgzN42I3Eg1HXmV7TyQdhVoE6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786296634; c=relaxed/simple;
	bh=VrF2TccJd1FHrun01Lr3egQbQSCw/JgmPmiVsfOwW4M=;
	h=To:Subject:From:Message-Id:Date; b=K1+F+zYUmwtyLlpzwWSkbiKlOU9eq5eioXMPTDlSTzFgSn22Oni+ZF4vhxhYqBKvDNtm7AOVlInOwhbsp/EFAtTXyWPAWYMtC6m3EAYpcoGK2uUeiDyAr1UJivWczkVuPJNT7/MKZ6vl1BcW3/L1ziq18S+9NuMkR+08XJgzNmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJB0mg+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJB0mg+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B70C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786296633;
	bh=VrF2TccJd1FHrun01Lr3egQbQSCw/JgmPmiVsfOwW4M=;
	h=To:Subject:From:Date:From;
	b=XJB0mg+J1/TbGXAww/d8uSyEVZbPMLY0+uhVMiLMFyzmwbAfhNtyKQpdvdSjMfVUU
	 B+HIGHGY0smF/+gABkrxNMGVQkHy4ktZgVjzC4f9VqASli2YHXYUOY+03o6Q+609Ba
	 lfQpNUiSwKDPhhyW+LGAac5xnkdTwp8BTAnAKsMHTGzPwbHoh6qJyuc6pZtyQpGmEq
	 +2P0Bupo+i9mMCgWlr9ObUwVYjs8dzSu4Xi1cfHxXh+xCL8Zl7YitNUHld0kN+RL1I
	 aFYzwTigB5n4mDb2Ln6vPPfYFyXcmVumfT2vUJKp+6wNgLkJ4D9tp0LX3vWShe478v
	 qjg/nGTeUmjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF1C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629663369.14635.3594149680501758811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29074ae32b760e1e76c8400270f8e0fc4675d6a9fea0d6f0fa267d4aa4f6b53e
Date: Sun, 09 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786296633
