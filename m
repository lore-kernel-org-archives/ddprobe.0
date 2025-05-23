Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F033D76
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747982994; cv=none; b=NrI8ok8omK3DYfXrkG1E5ud34r/J1bgk6WMJpbMw9haNHdXJXDsLWy5pwL0/OVAe39EaJCHHgn67FdXLsfPv1U3xK/NLYOry0uU3eSW+0+DOYDP56dS09UKsUjNURCDD3ka3tAdEunzpRHuIvrFkA8YKHd1+8Qx/Yl2tjfE/IBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747982994; c=relaxed/simple;
	bh=6r5LR75AiVmoUfCglv3SxusCeH/VcW573ZeObSSXntQ=;
	h=To:Subject:From:Message-Id:Date; b=fWTHmgTVzdpVcGWOmn6nbEoITk6xeHJJQCROR4Qa1mIJZqth4EyP484cz01Fe8NKt/uXTymvTfLnosvbZTKzcv8/Rp1k+5vHwi/BIjCefFUgJUZX++wVtRucBdQioFWswpxH4T4+87O7/GGSuLnI73YeVnYkXpHVsmShPAYcus8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXoXWUIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXoXWUIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3145C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747982993;
	bh=6r5LR75AiVmoUfCglv3SxusCeH/VcW573ZeObSSXntQ=;
	h=To:Subject:From:Date:From;
	b=mXoXWUIG/f1O6eBEQ+gnP+cFB8Q/e7GTtABdrq4Jmlua/4vd5pJ3zWdOwCUc+WBYw
	 1rkgyQGe0z8vaD2hiyQBbaIba/6BNEOq6dsEEC4tSIhdqs0CplSLFX1K8NLrnTg4NS
	 P7LTHTp4yeLyEi0zdyCgV9msI0wTrdYrW223TPA/z6Q5+Ul75DNPllKFtuOljZHQB/
	 TumpyjD9LkZ9HxmPGfIgI3b/Fphlg16Nm7kLfKgwB5Vz+lJiut+0dU8M/OgWIuNO7F
	 9Jx2P8YL+D5AFC6XkjI2CWvEjsIGUXE1CB9DR2xigc+Dpvb82AKoo9E4Pd4kHY2gT9
	 k2Fg/KfuEcizw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18FC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798299357.10445.2873016195580109984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678263b1759178bbf8532566cba3f7c8138895929616a0322f4af78c9994bf28
Date: Fri, 23 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747982993
