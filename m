Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577A035950
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785884434; cv=none; b=FwTMEGb+S7bAXp6OnCJ/FK3IdUXJbWHfKrt/cVDAHamVT1n31U+7EfShrncXEaW5d8NosMPNfTtxBPjQO7LqPznmAlUMS5gm9h5mV8IwCiJOtAgbizdRgX6gIUfdbrPgCUh6QB0UGfnp8sJQ15Fk6FMHQPdIjZdZB2x2Kf1F5Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785884434; c=relaxed/simple;
	bh=l5YOTymg18/ShdCKhLPWENHgFyoKf7v4P04+OK2V32o=;
	h=To:Subject:From:Message-Id:Date; b=pJy9Rzc8REUVffAD2K8tZ87uMZorWzNJdhyrMvjfip2YZrIWeBTNusCKLVdvzkKITbrlbpUZnRQIIJKqRDqLZ+9zLoQvmFApLk+A1SGWi0//pRLJDliCVvkctt7Qf0LjajMVFqd+7VgufnYY6h1phR0Oh29bflHrXsXJk6Ck1jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6ReIcsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6ReIcsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D04C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785884433;
	bh=l5YOTymg18/ShdCKhLPWENHgFyoKf7v4P04+OK2V32o=;
	h=To:Subject:From:Date:From;
	b=g6ReIcsMMiBe7j3O0s6lzdJHKgS7ggMRnGVKZJSv0M8nJB67kDcQgxZADLVlVxx4/
	 DSqzzQL8bVlc+nfMxSWH0x58KV8MKsAATvUB8M9wiksPSFjHVwKWmU9RG5fH94sQqw
	 NOP1aagCzhUkRhMpfMELwyroPaEPIhcC84v3XH0AZ23jKbcXeENHnvvFMyB2AWgFrq
	 kZtk1hQtDuF0IIo0bCJvpwWMZ5JeBG/sphYEB4NS+uZEtTsTiUBRlv9WST3OkSztkT
	 phoCbJX0tM1mHgqosHZWhJtiS8zHAscjy2JnOOGflKAU6gq6gPsmma20/S2Op3jFDo
	 AyaLuRtUcuCMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F9C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588443368.3492.8893399852323748664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3407782266b13c070c1792bd0ac35c3724b150c13bd4afc988f17fb330bbfcc3
Date: Tue, 04 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785884433
