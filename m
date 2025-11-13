Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266CD35CBDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763066394; cv=none; b=NaEzpbHDU0vP6LVuoChlvgnoLUGCN1F7rB5bVTiw7OAvfFGqg/9ZsgeYPIa6YmkQRla8IHYyBBlgxE02Nofpxjosut89EO9n5272KpFa01mEya1Xmpny6/KnPgMk/hAO/Vai1crQGoiuKb86soLd/TIoLMxaJEeyU9vNtTtFC58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763066394; c=relaxed/simple;
	bh=3BndjyiqJB69wMl0//CBkgEul8fmvUWcbzx1tnSTpf8=;
	h=To:Subject:From:Message-Id:Date; b=izhGW5y78IuPpz4n1sDNKxCplZL1tV5UYa7ctjwjGd5qyfN6WeJXQpXrHIDXRtzNP0BIJzamaIe9A0R/MeBNAUxyapyK0cD+7SE77lOMfOrBWUJkILyauK7NNsKIEapIRi1F2o8c8ul0SIqMnS+HYUCt/tebZMktYenFGG/Jyzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tukQ4M1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tukQ4M1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B094AC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763066393;
	bh=3BndjyiqJB69wMl0//CBkgEul8fmvUWcbzx1tnSTpf8=;
	h=To:Subject:From:Date:From;
	b=tukQ4M1Dmls6lTmHxAK3It4T5WprwqrRKxMJEW0Zxq597Uei7VL9BGBiWXJQljy10
	 GdXziX75qzxN+fsqhrq2WWt/uV3unFN6N806M2J5dBjunfs3588VehORlvMvAYCtPM
	 insd5M9W3Vyor8ik0iGqMiw1Ny8PxerZSXkXPtqLWS8yZy5j0G5WZMsa0Z+g5ztgLN
	 LIuZf+S0vtDUVMLMMoGsEsfLFdcE+xxgCCVY8ou6qzLVA6EGfprXTWu1e546EO2N67
	 Lj4xkQgMt66ErW3WQQMv1LIxUH+nqs2xDrqQ1qdOqkhWl4nBAIqkmAELpz9lDKtrU+
	 fxKYJY3TLaGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029ECD98DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306639358.5630.10032572191924269974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9c859c6327b8f2e03154954cfd3b7a98ecaf0c57f270b0d859bdd1c6232fd9
Date: Thu, 13 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763066393
