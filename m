Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A07220685
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742467195; cv=none; b=LXX2GFhGkHTEvEqm/5hhkh+5CwmuKTbeP8f3a0eYbIP0QpknWIJlmMTPPeQigKyDEtZMFxcgqPq2PaQFdUWscSYgNoy5y42YLTWFwtQh1OJipiRX2lLxybaTDLKZjoFXPi/dEMspOQo3+vzCO7Zq2aQi5lHo7nV9sNUj9OOlzQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742467195; c=relaxed/simple;
	bh=B2dMk4g3wEM3FTOxfd9na8GpFwpTSP6XWWdIvZxbugg=;
	h=To:Subject:From:Message-Id:Date; b=hphRa/zJxPEhMREGqXx3osnYT+ae+YJmBWbVF9A7Kf2s8xKIw8u21SjytbYe5pmHuFRkLBsV0jDUNdV5vR0TqISP2JPH4HSF4bmDwB81lyRPXj6CeZnXfTV8HjYFFWKjaZnjnC/3FXQwC6fHI1Kv4KNGkJWE9F4vbtLvxCzwyvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW/6UUN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW/6UUN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED78C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742467193;
	bh=B2dMk4g3wEM3FTOxfd9na8GpFwpTSP6XWWdIvZxbugg=;
	h=To:Subject:From:Date:From;
	b=OW/6UUN0DNePvefiDkaPN1P3a3B6ikKMdyISdDaltCoXaAyNYQ1NvlrYfjZ+WC5la
	 cEywq7+VEpJeiIYUGxwTlkfign4sazzoZIL/xsz8Jd6d66vZLahapE4z+8px3ASmXB
	 9O6fDcQOrKg1WQQWJEAWBPINUktp0hYIXmb2QYhFNqQJTiu2rnNhfcsW7DmW33OuGM
	 Yp6NbkiJuOThXSOgm/dBXESEo6DPC8okXjjQAQQVLbor/jSAGyJIPiujG2T/W5mKMA
	 G9ieXS8f79Mm8fPj24e1eFVsJ9X9Xuolb08q7gcsLRRsHNKgxxR9NlFGWif5Orrqsm
	 RnHDrclFWCb1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A287FC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246719364.1112.6065737534554600459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ea917eb33901dd3091ac0d7a1ee71a236fd231b02507f2ffd9d49071095e5a
Date: Thu, 20 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742467193
