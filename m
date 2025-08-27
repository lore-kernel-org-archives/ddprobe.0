Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF6F223301
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756288795; cv=none; b=OL2mnx9IozW3jEnyjI/i7H6qeTryHv108vnhu0GwWIJTcAkQy+2mbu+saOkSdAkEtHgRwC3hjeyNJ0QeKSoUBWXniYE1HC4llky+lmHwBSPpjH8sALUFfhvXd0IosnRFt6j620k1pwzuQMTigRA8X5kOsGSowHeeYZFln/kZtLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756288795; c=relaxed/simple;
	bh=j43fcBk1GSt7i+5+DzH9Rv2j5/Pspaa7ZtNzyqD+32A=;
	h=To:Subject:From:Message-Id:Date; b=WLaOt3F4Y8niqOXpk2pM6S9DGqEK4LVOLz81131RFqomtLY5MoiUdEagkaCPURIEnCmVYTYYHGzHNt91jKi+DDga3rRf4kEbK9mq6/f0nKAbxXppZC1qBeeKVetOV+A3r0+xX1uDrUmbJeRXiUdMR02VSjf0QQ/bXegpBYbDZ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBM8Bcfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBM8Bcfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F235C113D0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756288793;
	bh=j43fcBk1GSt7i+5+DzH9Rv2j5/Pspaa7ZtNzyqD+32A=;
	h=To:Subject:From:Date:From;
	b=sBM8Bcfp/Y78NSKWudRtWMbQYQj2fAxuGBm+JV3+eheyirI+AIrSbFOFqa6QWlxpV
	 e6/XuwT5II3jcwPTAw4KiChCbQ+zwUWz9c6u9Uu2jKavTU5OcrbMw8xJxWKl2axGnV
	 0RWfhL7D2uOf0TIM+est17p3/+tBpoNiClX1Ke1gUMGlcfFBCa8YieSWXDuNim7AIr
	 932VVrO4PtU8LvjRBp69DyH6lF2jisv/Lv65y/XFoKPlLyQrnR3TXgjLJTQ3ksLU79
	 uQnzwW9jW+5V204x8E4l1NiCfWVcYu1w6A1v2LieUHflByw2mTLUbFyrBta32zD201
	 72ey/jhyYt5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF43CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628879357.13374.16625780111613004132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af625754b23392c7652407688d8cc1389f361c4730c2aa13be046057d3e2cdf7
Date: Wed, 27 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756288793
