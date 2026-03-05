Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1203242D62
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772673894; cv=none; b=gqrpxEFQFcFjGh5uDzdGOUlxctWYTlnIN0GgEa3P4Vi68nyEJiNTjMFjQljc3yaTzl4Tdiignxxuh464HodFC6cXtFnhTIqgrNIrz6lj2V8u80irKPVmrFwTIHGOqKkH9lIq39q0oQYrqUtZBC7Y55cw0tKOPJpohJ56CutCTeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772673894; c=relaxed/simple;
	bh=3moEAJu7oH7GfSzNFjrXmn7mfRDkBqoUru/5PkMcOy4=;
	h=To:Subject:From:Message-Id:Date; b=SXJ69FplN6GbKOdo/pLHBWV660038IqNejRHCEOfPpp5JRRya+m95sR6DtIeM4sPPjcvtScfmHFltIJUX8OMp9JJsGh/IFDkELBjAdIhvMyKuTfFaqWNISg+j+yNXrifOlLyKR8BZsx0H81kUpgUjnX1VqzW/qI66NuFCUur9pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJ7MtQ7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJ7MtQ7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99EB4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772673893;
	bh=3moEAJu7oH7GfSzNFjrXmn7mfRDkBqoUru/5PkMcOy4=;
	h=To:Subject:From:Date:From;
	b=CJ7MtQ7dHQcPiCOXib5ma+NIS/uxIQ1kgps8+Ncj/fCWPFoNP8TFYdSf0zUMyuRIw
	 lS6fnjgNUy5f4dDMveDgP504psd7EJBdfc6SM82oJzoLT+N67+hZG2ZpNJZAyoMbaB
	 or+pvZREMpRhxsQiwgM2ZsyiVFT+ewnER4myeN5OsQlDI47kNdGAlNLA4y+HfD+Hst
	 RSqvnC+3xgfbFNQ1agEO7BrOsmB6y9qdmwHRwvUO/CuMJ5CtlDWypUcBcETziZ8Rqm
	 0M8fxh9xGyUQMrd1Ajaa0nM1DWoeS6X7cW8x5+xMcztm4Y7RFOH/8k7X5AWjlmQIPt
	 JOfVxqF08ajhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8ADEFCE56
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267389357.6634.13238968786828505062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc961ba176511c1512468246a350aad4353836bc5b6787f5c04ec390475597f8
Date: Thu, 05 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772673893
