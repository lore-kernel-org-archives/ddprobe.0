Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC2A23AB8A
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761040794; cv=none; b=kcxB8YVI/2XNzo/BkqGc2z66xqdxBqNm8x9Zu1KkqULmxWv2Uj4S8egxPOqhQYj1TA4ilMk7okHk7ZPq7noOqPQXodP9NpQkMf0QSa9e2uJd2Mhrp6OYc1qsIYUmjUonoaywHAT1ETJRlqmB0WGbMggZv8XNz5uf1M3bKK+pLpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761040794; c=relaxed/simple;
	bh=cfN9iNdgDgEiKC/pgtKgCbzsnqPtD4+ZyHzk3/jX8XE=;
	h=To:Subject:From:Message-Id:Date; b=ge7EVXV8keofTwkMusjQRbic/pF3zpyuVDbnVoOV9iR2JkYupcmRbuXt20uh6tjfGqJ5AlBBu5AE10tSpVEAPJY32Qj7d7qygXKv/v4dx/MfTX9OFlij7e0BezRBkS1TUb5jOeEGRUdOft1JYlEGHHYIJOCYh9q7ApPVxRpYlyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+3W2svx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+3W2svx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4CAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761040793;
	bh=cfN9iNdgDgEiKC/pgtKgCbzsnqPtD4+ZyHzk3/jX8XE=;
	h=To:Subject:From:Date:From;
	b=F+3W2svx0x8w/dKpRU7UFTx7JYTGBo704U6dquvWqjRc5r/8yPL0+JDJXacR6URqD
	 FqyE+7FgkVAlSyH/xEYehRtB+hA2TYCGSRiM1/hOm2ZUQCC5j8DEBf8pibTA3iLntg
	 eLGrwzRZqbY4adUsuu1hvJDznH6Quds+p2W48pYK9abXc3OEK1iVmJEvb3Lw1izAT9
	 7tnGwAgmydQFLCLiInQ+KiYVHPMj6+YCvTwhIhZOLmVFGse70qJ9KBzRP1veb0OC1P
	 DbpcBd0MrpqabTzQihliyfp40PLRyNaN1VKHkRLnBp6zs3BpfflSSat4+3T/VkVbjU
	 qgB4IezMCskjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75DCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104079357.18198.5017965937499699805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948c9e69b5f6b08d72878e0f2c99dace5c87258a488282f0067321d9881ef6f5
Date: Tue, 21 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761040793
