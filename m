Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BDAEEBB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752785994; cv=none; b=SLNDeIQzRkHkSw6wwHAOfWjoj67UFEkTFq48t39uDei2vbCq1vEl11/jcE8gVgRJIJXe/NxiS3QAjfjEeaAo3PLI0sdkyq5aCV0inpvMHYxR5/T/7Ye31koFlHYiz1MtH4IaZuyFH5F8Et1Ki6s/UwnjER6eJTSo0Wt3l/e+Wpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752785994; c=relaxed/simple;
	bh=Ogcm2Ebotod/7+/uLdz1GeeuLlG1cftcLlwHgfxEaic=;
	h=To:Subject:From:Message-Id:Date; b=cpXsbgHfpG9p0xPNWPPUv1ij1vTOaNR/3HMBaQyR78l3faf4kPmJyfZ7ENKPriU8rGdUYPFDFypQGWFsUBhTpvm9d7g6kzdxIstRGeFdXVRgdCqVuBOsKe6sCldYp3/IOA0BaLqVICCpebL5XxA7yiqDwMBsS3+0ap2+IjdDXoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usUIhjod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usUIhjod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2947C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752785993;
	bh=Ogcm2Ebotod/7+/uLdz1GeeuLlG1cftcLlwHgfxEaic=;
	h=To:Subject:From:Date:From;
	b=usUIhjodflocQFgYwysl3JMkXD3isxWkH8KC0ytY4m57VOZetgPceOg6wfDqMB0Ny
	 jkEZkF3kEK3ewKn0ELKwAdjujBuK+LamAwSdjNxW8KDzfji5+mbKjfuP/u5/1SiYSq
	 WjLhwwya/21Kt5Ronf/aTE4/duGyoQGQe1dLQP7XWjQzQyawoQY8c0Qn7Rda8EvSrF
	 dr2MPJdP46sK2DljrJgGZrRQXNQNt6szsL0k9wkKqWRFiqnPvyQRiwaUKUjZNgjWz8
	 zrcjuZPc04P1s/v3hALXUrP8CR+ZlgVurhPLZTbsqgD0Fw/FnTEUX891Fr5Teuv2/L
	 /WqTdUPFUZi7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5E1C83F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278599363.25811.17250320580581536778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3d2c5c71ba3f2258412dfbdab9d524410554a13fabddc445e6db4fd27adfa8
Date: Thu, 17 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752785993
