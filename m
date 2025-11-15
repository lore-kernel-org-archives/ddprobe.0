Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32001DF49
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763182794; cv=none; b=WiChRMZflh0jgrf52UB+cIWCuaAraa/31sWTangmNXH7wv6RrHuJNThbsntQtWLK+VOS+RwbDFI2AU69L6KfGjdySBuBjNoE95NCE70YaXZ47lzbBHKEH89IgJJV2Jn0OoaPhfwUIo0LF951Fh3Zwq9V46cV5hojtvbdzYO4yzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763182794; c=relaxed/simple;
	bh=o1/W8a+GC561rWVctQhlnCxCmuYLo2biCpprS25Uj6Y=;
	h=To:Subject:From:Message-Id:Date; b=bnICAZSIVdRw+/GMSj+NBu+2eQUeKoYzDO7/r6RnBf80e9Y8zEJW2ffcLa7W45JkTuRdneWbf9MJv8Vu7dTfZrJK1yHNz1rwyYu12VrPmCWg4NS5xfX++GPB9U+X6ANGu27tmIC8C4ndiosOVuoCwp1tITHVHG6Su18ac5UMyQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LICA4xXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LICA4xXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DEC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763182793;
	bh=o1/W8a+GC561rWVctQhlnCxCmuYLo2biCpprS25Uj6Y=;
	h=To:Subject:From:Date:From;
	b=LICA4xXl5qVhtOjyEXLntwRbaSMe2nL+jaOcmLCjEF2sCyzyeaQgvNBDFWd2+WW4w
	 tKjyyigxFNMmZIt3QlxO1pEIQqAkMxUihO3w9U0gmuHw4TQ4QEjPcs9Iabc/gQ02pd
	 wYR5bpOkNZLrSDBL1vuM+cn9NffNR4hUCfn1GOHbynYrtfWlYa1bW5wQrNbwPooc5N
	 2exADPc0OAjWqOKg3N0hjtfJMHXth/p+ja6ooVugaGOjdW97WOw1xvHYh0TPU9ZyIm
	 cjTCAfUGlrvuhhMX96iS8CPXFdnZvORjcMCL4luwD4SHSuu8s9OwZ4M0Cqayzk6rF1
	 bZXjMZzmXU+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E30CD4F48
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318279357.16558.4883424185528508021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c6af365613e567c8c1600425b617f3188a2c4db79b99f1ce4b4b38a8e6fce4
Date: Sat, 15 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763182793
