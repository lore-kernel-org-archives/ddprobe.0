Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0DD483BF9
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791298235; cv=none; b=BZbSpQ1gcZ2xOGBqehWXcWgRQ8U4h41vMnIGdnvv4BG4eyJVZZqVMgwcm/voEtOB2qu4XkwSxJNGnrSqtCmvGFJsMNUHdJHZz9gjanRv3M5bBDnL6csOFgLZ/FFXoJllVfic2sGMNymwiGj8sIc1eHSZhmeHOfF1+4GoEa+nmWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791298235; c=relaxed/simple;
	bh=IHGo4rgpzJV02XHTEomQNHPnNlCld1sHItnylpDzBUk=;
	h=To:Subject:From:Message-Id:Date; b=IElxlXuBJoKUuQFb92fw756yVGLCwF+svI08V1ZWPxozxLNT8NOwrGBqiC00NSP53it8EPzvZWY6E9ra4sBOHl7a39sMjIACiBxcjF52oz/AUEDtG8PxkeHeNt9bNLtZGkB/PZ0ZgO2KXFJ3m0ULZZq0JApnP3W8yLmcmgG+zD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2BNn5DV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2BNn5DV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCDEC4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791298233;
	bh=IHGo4rgpzJV02XHTEomQNHPnNlCld1sHItnylpDzBUk=;
	h=To:Subject:From:Date:From;
	b=c2BNn5DVQAK3RxkyXSbldTdIOFX8KsUSJR4Sff4Kk4L6gexUQaC4rjv4PDTjWcTyb
	 1DFsdSVxlVq8zYjru/5ln+bHvKVfjY92kSI8T4WDg9+dzHoaZVcCOWUnqirOFFrFSN
	 KDfY9hIBPedO5VvAzJ1PdhH7c/gLapOb6h2/fI5VdvNSryGC8IdY+XiZX/pWNtdjuq
	 YhwAwpaJOkS4lX0huBklaF66LsE+45DHTB07weJOI+NWyHZQ9W7pHbAKREVmVKs63B
	 mH3AC2cXLllEf1CBsPmOiCcdDql/yQIdFtnIvzfN+1LIx9OTinzMAlpMC9dNYknjhQ
	 WcuS3ZNFewpOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26C3CA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129823370.30917.15973488032721793413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58de688ea27a9f8d14cb81a10c891226186c8c27e6a3dac5e24b42d25530a912
Date: Tue, 06 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791298233
