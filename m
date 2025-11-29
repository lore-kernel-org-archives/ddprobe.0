Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7DA18C33
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764456174; cv=none; b=jIh6rWTdnUjcRN1GgwxQJkIavWCnehF8gCLEyR4qhRNNnqrKil8aPQEkiDBmKVrcP8duPe4Imy74YrdxIdgFWgOrYYi7gM+SFKvp5gDEnhImba+aGLSmTAQEph+32loQM90P3fKtMwDvyBVcFcPN1QozAtWDd3P2HUyW4K3BpYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764456174; c=relaxed/simple;
	bh=XnhfnUhm+RFDrgb9PpwOyvYsUV/QSkFcdpSai6WZkVk=;
	h=To:Subject:From:Message-Id:Date; b=irxoxDpIetqs1f9lFIRrhvqpWquuGURAJ8KXHWPXAYZGfC4DLynbehuW7K2yfmGQripOrRfwY+KPocbNT0fnA40CoUZaeXP17hBk5dmDpkYxufxN7lTT2jT9L+6kmlCQReMnhH1i9vZA/Mny3lXmJZ+wHF1u8vXU35xUb7395aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi22iuaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi22iuaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACDFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764456173;
	bh=XnhfnUhm+RFDrgb9PpwOyvYsUV/QSkFcdpSai6WZkVk=;
	h=To:Subject:From:Date:From;
	b=Xi22iuaCdHih2kRyJdm4KMZwC9P7FjS4hlP9Rwg+uQecTPdJualnThAfyBEwGFyj4
	 wlKcmNGT+5t2PmHNRCt6AMPW4/A7pUMdOvpw5jb/tsKqa2d2TMze/nKUm/6+Sv/0ZE
	 pDYHYtsaT++BYAu8MhOcZPfl/sbW5T43b3QpT3XmMKqgbh4L3hdnTPr5SMLW2+1cn3
	 cML+VyrpOmuulD0Uszb6zyVCbR7EGib+83UGPM7PjG6N2Psf2KEt0L3ElkAOT3RzqC
	 ygKdaNcmKAwnrmTQ0yW9nkP0AWGtSmTxtgdok+Pzhxu3ZeKL8FuUFR+6KRYpepUbvK
	 WJdKj3Ot/lFWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94728CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445617358.26948.327711382807381113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec19ed4aa3e898e6a3bbe8e49ad13b916d01806419eb75bd54b46cf5f4933e2a
Date: Sat, 29 Nov 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764456173
