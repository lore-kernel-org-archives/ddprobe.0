Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD9417BB31
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714487543; cv=none; b=FAoR+cXTZ93jiIwF6SXObZy4wlE7gnVdQoiQtArJPPCGr102mpp9TW1up4Lx/1TPC+ieFMVMwUtMGiMq+HdZgIBcBu/c9X/DwAc34idP7qOXhbFWWIq/xejqfDu2oSyFSyHnDFg7vsmY/O0S1hyOdzzL9oXfShNjP0ax2KZVizc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714487543; c=relaxed/simple;
	bh=jEsrDYmJ8FoCwIvkrBOcAWnhNFZQP/j9PH69H3+inWw=;
	h=To:Subject:From:Message-Id:Date; b=BvvCJgXmGwdQqmmaxuSITajz4sZrBhWr0oEtr7io8E4zbUU4Leqvunk7K+lOxCbEksX6wBHy9uNtT2Nt05po+echWYfxR2kNWSWRu1aeEIhWFf+VigTBElY99pUoY5BuRnXp+B1+2orPhbsJBuqRjr+mWoRg6DqJEqzhtkR/xPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkbthWBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkbthWBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE729C4DDE6
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714487542;
	bh=jEsrDYmJ8FoCwIvkrBOcAWnhNFZQP/j9PH69H3+inWw=;
	h=To:Subject:From:Date:From;
	b=tkbthWBuqEuBR7GM6hUxslogPw4Zjvgyn7owKhZacqU2ghjhKni5+Bdjjbu+xUiK2
	 H/4uJudr5YlGdI6fXKXdH6pEOwBKz9OMIdnrYnmXnpuFODr31FTJQEi//0YxI+0Tzt
	 XxzlKAFldD/1aZlkHvVdMa9LtIEe+zxMSJ154lXTgsPWjw0g9jDTb/MGbQN1jljrnq
	 TzIWlsHIDSEhR3D51SYSdAcfqX1SFXdA82haegrKvaI2HamYcH8WWgmK6Z/7nCHXT5
	 bm+QtaoM14WrvYzIrTrJQZ/LwojspazyE1ZpJoA57dmyZbSx+QOFwABlywYZWAMOx2
	 c0E5KSCBXMciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6ECC25B4F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448754276.15814.17445256643392504340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3edc3db0161465cce0b1454969b0120b761f3a44db07247dcc7a545a3295309
Date: Tue, 30 Apr 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714487542
