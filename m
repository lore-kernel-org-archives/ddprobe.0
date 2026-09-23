Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD9A18D62A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790131835; cv=none; b=r0dLhtc156trmE2ZXIzrxQRS/FjYF3MofXloVijUZlLhfo550YBMqbOoE3Q1hiMmfwJjW1E/BODFr4Z24veFLth8fZUi63eWgPjYoIviImimEcbiMFDbhguUbR5wg6UULJpw5B8RjcJNRbQi36gRF1jd8vqS0ipDgFi6vqix39o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790131835; c=relaxed/simple;
	bh=AstLYP6QAQqNyZB11QVOZC9P9NTAJhHrdq3mGdIrG0E=;
	h=To:Subject:From:Message-Id:Date; b=AGUNKPLIyCq/P3o51FVzHyA2pbDvDLcGfdRp5k11sS4MDfsboXtNz6Q4Ya5bJTbC8+j3ohYqW0wheJFBkBAVVk+HCeiskpsLDCO8rF5j50Zu8LMHoaYWUGckwxNeW8yaJEigXxxHzpGSBdSaywiAggqvNKTamSXrznYaQFHIMI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ+7uWtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ+7uWtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DEEC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790131833;
	bh=AstLYP6QAQqNyZB11QVOZC9P9NTAJhHrdq3mGdIrG0E=;
	h=To:Subject:From:Date:From;
	b=TQ+7uWtDOomJjIClKT1uO4e5WYbWBGou+VTYZcnes7tia7CjV7WAtZqHVvCaHDkqs
	 9MHwRYwoFuSUZQfj4Bi7SeKoNydrZQ/fJb3gflkzO8vg0K0p/xbunbwuqXRFO/k52i
	 3YsKmKHrlLugx5iaO46YeDOaafa4ym88VEAtK9TIbhL7ZdHosnZH2hjLasQO5lPpTE
	 yq/TdQa84+Brt+3AoY94iBQFvHQe3MPRNby19sT+xN5DgcqGcSEIkQnwIzoabynfd2
	 47z2wILuqH8gJklV6wWgKdm0puIIE2yf5vSo7H2yEN+7lfXes/YKNmfnGdAjxUl7ZO
	 tlzznI9sYhfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9099C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013183374.8381.16955180184358898480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2f0cbf5eebdfadd11f3be4cb9191544218f1a196b0ffe5939cb82dd15670bf
Date: Wed, 23 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790131833
