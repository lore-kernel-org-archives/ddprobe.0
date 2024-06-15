Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737AE1FAA
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718412503; cv=none; b=OvwXDdS9+laiBhR0UkImAyAq2e2OUQyUkAYEW6hDKthWQI7MPAuXQU3TzMhT7QeeRDAmNcP/Fp2crogHAQ9EhhXVxmcZnKgcIXQKWSJxNl2gpjGlPmyqQPgSJEOdW871mteeWLJ5EN5qf11vawa030viaXmlqqqw4kRHJKJp0ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718412503; c=relaxed/simple;
	bh=A+L1AmPLpIb+u315Yzba7DjS/27N6YoPBsbkkzzog+I=;
	h=To:Subject:From:Message-Id:Date; b=agq+FIh/dK8GrilLJba3HIVvMIda4J9qv56ziwKK8KO68ufom6c4U+LjPjhMnjojxkuiySTyVyg5KfqXIqh+Ftq6qSv6jIzd0ZZtrvzOf2656sCXd97JhZSOoylwCkEm8TgbFeeUr0B43qS2jCT9HQxr1EF/tv4DyuTXAQPuBng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKei2qfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKei2qfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D0DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718412502;
	bh=A+L1AmPLpIb+u315Yzba7DjS/27N6YoPBsbkkzzog+I=;
	h=To:Subject:From:Date:From;
	b=ZKei2qfRsYGe7bX6pX0OUJHlqtdX8z983ShuHAeyORNNf1EFxqNCZ+44D+9drJY3V
	 VF66tiuwkQviLiqsyREXd/dFh/9vs04HcBL1zhW90tCRj/cvfoZnabIG8DAq4BpvAu
	 BepbJmKDrst9hXAPbUhsFvwVmPvAQw6ppO3B2VfbqIBsnT7fJbZq0H8e1izjjqHcz3
	 O3Kz0Z5ag8n8QV7P21Q652lR/jkLo8/XXq6+Sd8IFwMC8DTMpDdqdf6Hs416pVZoE8
	 643uJo0n45XYt6LSRLXDYr/EyckL6VxflkxF1eM9u1uvq2OfAil40HKQU4w5j3JqWW
	 ID/krAo+xPqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC93C27C7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841250277.11832.15189722444230268094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3743603020797ed11813553753461a94e3c531d263eea6b9833fb2c73083d47
Date: Sat, 15 Jun 2024 00:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718412502
