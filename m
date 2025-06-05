Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AA940855
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749115194; cv=none; b=nza3HyzzU5z7BcwQmYEzu5BWbEqI2kPZxe/piIozqlZf8LPgOtLBMdk3bKJ5NJHYFu2ujDC61NNXzqIRvpcbaJYef4fI5vWpMcON+xY2ZqQKPrLrgoSoFL3/hqys4QjxO1UpzgBFCkxuTaJsY8itREukWl5aR7izEPLwQEhulSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749115194; c=relaxed/simple;
	bh=Sau/LFz32fAlI+/rRRJAgBIz/g1w1vFumR/zJ2ZI30M=;
	h=To:Subject:From:Message-Id:Date; b=JOUiNJgGqS2ayCjwsqTn3Vwn3RmCWkq437E9AAnoFWT5cJSFb/aiGxK1ilAKatrDY2EGz3hc6d7ow437BUahiZTGQqubIdKCIKE3rb5bv7YsFx+MCySLtkFgGQqdobBsIddLmYxgZYtjTTpInWdEgxg9JZYh8Idv/Lf47WYw2VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4KJs9ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4KJs9ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D29C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749115193;
	bh=Sau/LFz32fAlI+/rRRJAgBIz/g1w1vFumR/zJ2ZI30M=;
	h=To:Subject:From:Date:From;
	b=X4KJs9exgxe9TGcBPOsUKPNt+Vcjtj3kYHClNkit8S+BffGF4Q/s74+ZytArfQ+/+
	 mdlqC3lFMyiUUvVnMcixQA6fN+U00jMmiaLYogoa9AW2+iBk7gASg19//T924L7QJ5
	 ulZUZdbuVUmxceDK135yoj5zndjx8XSDiPIkYGoKm0/BmViRuDle9iGKs3czsbZbAx
	 6Uee/ZElx1Wnn+95HqCrVEdVG1mYYpHsBXzET5gTEBZp53dEOq/4B98fg8ueiqQsqw
	 OdSb7G2YPyf7C4qkR4IFq6sDszDZI1F3EEQLd1B1rQy2/cuRsOmre60A8Y+YB3bZ5p
	 zSRWdRbzhP4mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93716C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911519359.5086.4732606915587641167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54741b6ad4415476b79dec7bac48f5179fe90255e6021402f2c18855c386bb3c
Date: Thu, 05 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749115193
