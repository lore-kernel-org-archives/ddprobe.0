Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5194110A1E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727960754; cv=none; b=GQj1i1oDEGQKeuNwBvmNKdXF1C4CcqNr+rSfS+SoEogAmWprmn86tE82/zMQb7T8li9weuLti0OQw+GJ0LBBslL8cAO7S7AuRA6RJQ00g284ziK32Oarl2S/CY/yxDM/WON9FNd0GlmpokVTVUAn4QtOs/B2D4BXhCUF8qbQU7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727960754; c=relaxed/simple;
	bh=+m5Bb3FaPQg/10g+PZ9EPDPPJImNlVpgCFAu9wY47LE=;
	h=To:Subject:From:Message-Id:Date; b=bttAM7vu+3x+UfieuKAQ9dnPITLP7VtzzMNMLqB4dsqtW8UCbaLXVUsjBAdGtLJ8Rba9yw/YQ9CJBcT/EUx5Xtq+1IK1W1Nf+I5EARVrdFXfxOA1Gu2tjXYXMrLM1in90dKisffpUu6qqFVycc2Vomcsz/b/07GoIN0+UhhLPSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyBgdpxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyBgdpxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9219C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727960753;
	bh=+m5Bb3FaPQg/10g+PZ9EPDPPJImNlVpgCFAu9wY47LE=;
	h=To:Subject:From:Date:From;
	b=PyBgdpxSX57QZ/71x+vdG6HcPoTpUhPOzjqEF0tITkkzkwvW9mj/WbB372KEPSIqP
	 /JqvsTkEw26KGeRHFL0H/6hr0Uys1SoXfZySAmlvdTzLpfDYQpaUkeFKmzrE4euLzJ
	 MPqggUI5qSU1o3ckKc8WI/CLVWuERHWf0Xkpc3GetSvZIWMwrkPhJnW6NIuXWCDjOU
	 WkRzF9PbtGuoRzEQynwrJN/NolpSSmRljgQnaZrS2oj87J1Uf2tTr9gbrPqq+B1iOd
	 lQUs9D7iaToU7pCIbeiFNdld/ZMls8aGavEXDlw6nWiPpAeHa3aePNW7rp1Rvk5ihN
	 nB4BjGfoMw49w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05DECF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796075362.548.17409010563291565551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9065dfcc7f790d898043757ea15dcb43665773af98d69bc886a657d8cd845a17
Date: Thu, 03 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727960753
