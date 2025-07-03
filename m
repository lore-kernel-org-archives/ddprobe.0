Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF981E5B70
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751509796; cv=none; b=cwBzoHWJW2fTeLz1+OGU6U84g3G2AN1oWb3VS7B1Y2T4Ks3b2TkdYrhT361N9ePsfmPIcCIkaBx0TSXXUu7GylD2ggcu0eDCARBuiIWsnhRfbw2kGkOw2DSpltHVansCn5VxjXbN0iy8X9lwWvXvuAdtGOzAYjHq4X6849avkcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751509796; c=relaxed/simple;
	bh=M9/ZQLyjGD6+IWuGW2/5WFyAE/JN+4HG7stYrogoJrA=;
	h=To:Subject:From:Message-Id:Date; b=JDXEqltwOrLGKcqB7NwGsp5B1ZgosAyBeHTNhPRk+kPgmjwFbvpRQfQwQtVtXaLi1n/WoAARKqqqPHe6jQ1ji1/DjEfN9K000U+teKQLDhGs102V7fSFDp/1yzDRvNSKlsMixZaq2VgVUYXrZdbB1CS73KzukB+k1jmkjgh0i2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCtPhmnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCtPhmnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751509793;
	bh=M9/ZQLyjGD6+IWuGW2/5WFyAE/JN+4HG7stYrogoJrA=;
	h=To:Subject:From:Date:From;
	b=DCtPhmnRHjor6ORXeUctAHkt6eqfYR9AxOcUW2rjLjYzJ7j/qDu81Fuq6gz3py+Je
	 Rzx47jlhgx30gm3pekFmpv0U46QyNOBwhvbr7L4mwn2oC7O/P4jhOIvVtd+aOQE6y5
	 D8w8aHAje4iAQD1tzwpiqggtw3X+0y+ZqA6c3goJDU0ybTOlI2vIqvNtkdMBcZhHXE
	 HUDTyqGqx3gTgjvwD/5SLcVn4/LYpAClqEzuJ8X8qplw31AaAXwrIcSSE+150HF4eZ
	 uAhvfdAMxeNdTlLd0zTRfPIFvbPzARWFBhhMDdKStY9N6D5Y86LI1B8UOfXo0XKsY7
	 D3XGc75/CQueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED64C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150979357.21360.3309472316245820395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d766f04677286d0ce789716342c73f047d44f554b8ec6c54867963091bc705f
Date: Thu, 03 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751509793
