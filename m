Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FA6170A1B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730063154; cv=none; b=SI6/mFsabTilh6icS2I8T4xh+6siSxmrKgiogBTjaEtlsF2jscMAA9MQxG+s373txrJ9svP3ld6kdMKBAFyeriyGm6VSPnRWt2o8hP0cCd8gTJ/LkMWZjp8YQC4+L820p3+Tcb8G4vIBrXZSxYPhoSaWanJtX6tQUGrE/NIckfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730063154; c=relaxed/simple;
	bh=ZZqK9DyXGQJci/oihgHHqSoKQ68Hx7ruc7sV7V3qBI4=;
	h=To:Subject:From:Message-Id:Date; b=ADWBR6/iMk1RBfgxV7OJPPwZ+dHg9nikuLdRwG+++4jv/KK2bAQo3qZBVOaI/t9t6N6sM2Xo9WE84lQOvQwOj/qL2dQ4XO121hFtJ0cG7KYWGsNf1mkuHYafoHzNb0c+l/AY9o1z8/eZ2ZPI15/NbrbVGT5HwlKhSg32uQTOUr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKlj0yrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKlj0yrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE88AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730063153;
	bh=ZZqK9DyXGQJci/oihgHHqSoKQ68Hx7ruc7sV7V3qBI4=;
	h=To:Subject:From:Date:From;
	b=eKlj0yrpM8vcyeRConRCfFFWYQcaolhVoqczVvB/9TDUuosAG3CCQJv06QrkIXsau
	 OZrY9OmEYMdmAunHQu8Qb12M46NNTnfJjCbTEGbAOKl61OnvCwh1uh7cHrPaU1QLdU
	 ySpu8xnAlUNOXiMSIBFIjeoGsDiUftvyFjfv6vLluD2GhxlQP9aSDY461Uj3lXfR+1
	 hmVHZWzQFrI8HZT7jFpQF8I2L0b9lYGXQWaHUwP8hg/U4PFX05vbdBu6D5EPfNAWDk
	 6F+6u1UtUHArMJas+lZej0X8zGmrEGWC6tzCThyKV4SsbQiP9mj9u+DkzbyICGgI7i
	 pZf2mmUea1rxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9837FD13585
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173006315361.3104.13576940695914753859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca945c8934ce9b75f1f222ff9c37e479e9b8ba8864671ab3c7b9a22412e4f7a
Date: Sun, 27 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730063153
