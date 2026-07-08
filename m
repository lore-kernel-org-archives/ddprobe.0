Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A403137923
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783500514; cv=none; b=DYv6egUVTOMKRmFxpC33MKfX5jb9TLHiZvtziOj/DnQ4Ggki4Pm+c6SE+FINiSV4V0hDoHyaVATeyvEHcw4yX0mzTaFQyp2f3odV6A7aSTWKSh0g3sphO0cYGN7XKniQuZauSosN+UREGyxsdn9wPPFpXCBq4EWAo2r6O5TenKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783500514; c=relaxed/simple;
	bh=2H2fUjBXyi3lXZX422MpF8Us/NwxxUuqAWd2UeqjTaM=;
	h=To:Subject:From:Message-Id:Date; b=hhM+A9BmuO0x/Uot4JFoQO8gZnF2HXTMJdnLtkX5K5yavAAyuthyfyd5OOIbjEVbf1oIK+zWyBDfxqWF03t+vXMTPDggkEq7PvWaoBqUsxWmq75jzgCDgP8fl3cXTmpGD5qZOmwTtG++SKnUypb2rx1KbJLrp+WCcLrrSOqDZm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esqEm230; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esqEm230"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C992CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783500513;
	bh=2H2fUjBXyi3lXZX422MpF8Us/NwxxUuqAWd2UeqjTaM=;
	h=To:Subject:From:Date:From;
	b=esqEm230MY2LOyxWQS4Ft/lVvJuD+KpeQGqWa/DgMYKw+8c7/iz6aXP7/IuXVpbbC
	 hHvG66hotA0coZX0Hi9vVfkLgc5OKJlQn9OVdryRge/P3Plrr31veWlAVOq2ijNpqz
	 npYg5hZAJ8/o9DTiEJCpKdQZTDEaRCbjNc7sI6DMcox90+GuqLuyDUy8laJp4OUBTO
	 rd3LooebE57p0hhQMLWkCRW3JAwhTxIPoinY81UJNIVQ5dWv2e4hHtqIdxMrXu3luc
	 LBE3IyfpT68aB0AqINQvz8nDMT5k/pEu1UdMiHasoDQBqvYkBQ9o+Bh8pfyuaMAzb8
	 VpufuOnl2z/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A03C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350051368.13905.6903311836467666260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4b00b9342074c6ec48e477d4c51fbb9d5f9e25607a9b0a8b13b91ac39823f8
Date: Wed, 08 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783500513
