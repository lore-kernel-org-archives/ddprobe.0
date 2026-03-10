Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3832857EA
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773154493; cv=none; b=GsUjO58NCtI5HPQPfXY5i0K2bkC28aohWRK3utvuDhxhxcwBvfo5+gIEXjBnfGDrYCUG7Gl+HflenldNfxV3dmq4rCv6vIbzJNNczN343FfxDK+smva6TChPrpJab04ZYVepKvb9CyXODMPzImSPhPGTM1JT/JeXZ7R4j+9rbAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773154493; c=relaxed/simple;
	bh=3y6S2cw6eqlq67h4Nj6jFG6pTmfMbc13qrHH+bl0/go=;
	h=To:Subject:From:Message-Id:Date; b=n50t0HG64q4tlbJsaPse0StJqOQ0pWXqmCMSBEOHl+RtElxG/q+z/zCAs2DWnYWyVjXGRH0QfB2XOH+81BUIDwKfoYpgnTSUjepf/pybbFDsEEA3quOuhsQAmfy2UzTvQpQ0ePG15+82rlTA3nHMkCzJT/T45YcF8eZA/2uWcn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbnDlMdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbnDlMdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB02CC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773154493;
	bh=3y6S2cw6eqlq67h4Nj6jFG6pTmfMbc13qrHH+bl0/go=;
	h=To:Subject:From:Date:From;
	b=RbnDlMdAPCBeXMX3xCUKJBM89lgf79DQDwHBaOWabmlU0pJTJB74w4aiTHaJl673e
	 JKQWLt3Za57TIa+APw0BT98E/iDatG31nyuHJ/b8yQ2f7hYv4oPQgSd6eviB4OHIAx
	 fh0aiuSGTGBDCix8kriicvNgCNAEXZvLoF7E/JuSS2wPNF0VkG4vYG0a+Yl546zhQh
	 z1bK/c8GIsyXLlrpQ26mFd7Bgd3osc/KMo7aBqxoudApw9cFGtY6/cNPJZqXuNeajf
	 Jobi6mrd9WxzXWKUQoe9s0SWJxE7ciqzzlvEKZR5ssjNHwngOV3ds/8c5/+o6Z18Sc
	 qZ6yKHeFSO07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A30BEB105A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315449362.860.17376419931943857884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ede95455fd627cdff8eeb160b6ea794a0c50b5c917dc51f7a42a3d513ea39b8
Date: Tue, 10 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773154493
