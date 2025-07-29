Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D919EEBD
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753774794; cv=none; b=PRBUkYRElFVjMei89ZZVgmoJYxNMTw6h2lFzCUkknK3+AY8LHXdQ9d3z5ioNVR/FLajWByD1DieOoCw+RzL/MtlRKX98J80twvDVEopp4aOwaDeoeEDe+xqDtzLQCBR/EbAYwCLvOlq+o3MtrXWo3hwGAeyEjwOMlAThju5TXwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753774794; c=relaxed/simple;
	bh=/wYaM0L42vIol6wu/Kk4hAta3U/EoEeXgbOib1Ccrjo=;
	h=To:Subject:From:Message-Id:Date; b=lmMMTPek2SApsTO9fEbWy3c9LFL8wblfnPeCidWd39P/DE/afLCzEm8FEJf4chJTDSB+rfwQWDE2s7jads/jgRtiuWpFUOc4rJK+VaCgZskmAju6mHq/aFDOaIQb8BdLSlAV8jw6LmMnELTSXUDXnYQx44vzpYN/4GbfVnMfaWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jM5pHigB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jM5pHigB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C2C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753774793;
	bh=/wYaM0L42vIol6wu/Kk4hAta3U/EoEeXgbOib1Ccrjo=;
	h=To:Subject:From:Date:From;
	b=jM5pHigBk6dsLO2yGvwCsZm1OzLee1DMuX6maZDY6+DuLpkDe6JmPVpj06935kGL5
	 /g7cCG+9RPaWuZ2xb91qxev0kjC2ZasET2Lj0B+Xp8uspKd1XlBuAo1PlZMVBrw/ql
	 0MlROEpI1GUow8T/MglQAfwW73nbfArTt+RUq1xs3FV4f7kDqjncnJHhGAhOS6G7Fx
	 K819YWzLnpJAcY9uKjc3nq21ZdcAOyOaqMiSdeWT6vxVYsXktpVemdZ9MJ+Y0xXqMm
	 udmPReHsZWJ6bBRrvQNDwoGC53l4E+QMZRmlnqyVOfQP6MWxrtr2WAbznk929ljABz
	 dlXkNuQp4rZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB6C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377479361.17440.18125861573022716202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77272782928136d7eb2455eba98bcf243cf4f709ed2e5ddb8b592068cdd68a4a
Date: Tue, 29 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753774793
