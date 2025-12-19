Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCAB2D061D
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766139834; cv=none; b=RxSxBFOUTkeYpyFP6bBPozCwjZbgwvCUS6B0hxnyEF455E/BnYGmvti81ewujj3ASsxezEZXpfAmqnorob4FOqBbH0gWw/5UkX5LrEUFAXs2YSnj5TCqANAPb2gXr2WHS0BgbqRIhQQewf0uti0SGErXOsOMRCh8mZCe8YLhXJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766139834; c=relaxed/simple;
	bh=13XQCfPozY0MAEIgAX46unK7G/cmGULhs8aX48O12M0=;
	h=To:Subject:From:Message-Id:Date; b=giikVQuwr2l79sf1nDnLCZDRPhMPMhfQO8vD739Fw0yrcialSKuSLVxMt11ClzW3H+2EaEwgOYoQ0u36sj6P+Wtcp6dJ9yM3Fc/8Uj0x1b52L69iaOZKRt0cB3zgh8pMQeTEVspbHqvN5pFv8vb7ZjUgvCXCd12Wy1caCSyA/N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/XXMcZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/XXMcZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766139833;
	bh=13XQCfPozY0MAEIgAX46unK7G/cmGULhs8aX48O12M0=;
	h=To:Subject:From:Date:From;
	b=N/XXMcZXbafBcFC8ndGC5jdwEIhxrLblkTlpI3xNcbalzZjIJmXG8wx4uMgEFacMb
	 QyQO/sNgOtTgSm5jkEg/su236yzUBE0TQqubTQ48roiCW34BYR3meXrD0ttE49fhx4
	 K3KB6m4oYfdWtepjTBPPPeT1pC6vv7oF72FesJB3phbW7u28tjyd/Bs+jQZLJbL7ik
	 1gz6SfqhgdWBeVYISMJ+kJYDf7kkTTaZWSTnNPUaUKqxzrbrmf9nKJBrs6xEEtcuAr
	 wvaqKX3/n/89CAjeN5w7D6BryPcRDLhCUqu2WN2nCL9QqjiKM7SMaMagwI9b4DXkLi
	 pkFoUASWV39cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FAD767C4
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613983358.27319.9666721932342271690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bf5cd3c6bbcc023b80534c35bf18c10728b72f3ae7872c2dc7c1760dcc7aba
Date: Fri, 19 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766139833
