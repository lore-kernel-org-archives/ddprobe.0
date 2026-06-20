Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239FB394E8A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781969194; cv=none; b=O9cWZbjODtZ2ah3W8OZgeS3puFook4tIXruq1EzmBEL/Q1snBvVrqImV1UAns2LF1ierm8f7WbeUw+1bT3QI7a5MEm3/MLZi0DuJYhoEQVdPfJtsrqCpGFO+AFPnutu79v9fMP1UXtmdzQLT1MIrRXq6OGdQwebqyVNUeF5pGfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781969194; c=relaxed/simple;
	bh=zQhPCMozyFXlX/ngFNxgIw6f6lD/ZsXTanbmH+PUDv0=;
	h=To:Subject:From:Message-Id:Date; b=ak28x1UPiEvo7qajTczDjxjyFBNfn+ECUfWHt2XyiUnOaMfz7JHVyuRENNZI+ESiePwuirBgtnFi5qK4ByHCeLntq+4xmG7oWCSToCSkgbbWpvdYzFprOl2hqDTQ6KOomfx46bsjLTlHZFnbYjfhQWFfp0oAA6hwPMUrCYA1T08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeRFUjph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeRFUjph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781969193;
	bh=zQhPCMozyFXlX/ngFNxgIw6f6lD/ZsXTanbmH+PUDv0=;
	h=To:Subject:From:Date:From;
	b=YeRFUjphO7VRpSW//lw2E31CtxCcEtDqNQU4hTD4xDtxeA4TGQYEHIDql+wa7GMJ0
	 hH9otJOxruX3IIH59lGCe+dAZmKappppRQVQ/OH+AE8HQvu7ndlqLYBm4eY1lCSIJP
	 uuVGjgxigSTTAj8Mal/pC96sDFwZOctUuo4RrVCWYZEmJltYymu1yoknMEUcKUr+L6
	 VyePVMU7votWIHMJd3skBr9SOakqRwLilwGmGuOivUsfLspQ0d2sypTWaKrsiYsjD/
	 gwPq0OUUd2Dmw5bUZWEPrQN7H+4SO2hZdgrloQL+ek1C437vK7nOrGPQrWbbJERe3v
	 sYovdas3POQrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C76CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196919372.16387.16676345698145869900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a91d872265c8c30f3b422db8446703134a2f29213736dee51fb0760966279e3
Date: Sat, 20 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781969193
