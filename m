Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC6F140E34
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728935754; cv=none; b=mhuAEvo59u4h7mhlJYi29Oo2uptfrciz64Dt2pjY3NLQclPzMleYXHtCZ/+CvqcKfMhTdrZGD+f7ZksrVAYZ7Rj8XSl6tc75rC84SusU0CqWyISun51v1dGuEtcbK4L33Yg/jyCedRDMZAqQeNL3duKAueudqj3JvxQr5jxlM38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728935754; c=relaxed/simple;
	bh=3WeFIs46Yopm3FS+m6M672qG7HE+8oPed55+fh5vxGY=;
	h=To:Subject:From:Message-Id:Date; b=gulhxN03X+IHNcmiRBRdwNShYXhftS/8HqvDPNhS4McfsoqwD7Onlg5jane3aFm3S6WvKjGnZuN6qrsYF3kiy4vqnzxPO1LA61vXbGa1n0Nh8LK1R9W+BPjCdKt0wApASSR0vxkCfORA039T0OyfxX9mC5vZzziTkOWOMYiNoHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfjMl1sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfjMl1sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6C4C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728935753;
	bh=3WeFIs46Yopm3FS+m6M672qG7HE+8oPed55+fh5vxGY=;
	h=To:Subject:From:Date:From;
	b=kfjMl1sfmNrcNgx/3F3LM5O1wDfFIRCobWknxWWI7tWT4dZBFhofOaenmbiE38NSU
	 m/mZvn0DfYOl5fzvjfBO2uKEFW7MiaW19oMAmZrSIYB5YoEwt1hcgbyNU6NtVuRqHF
	 EvZcdNpJJdYDmaQUMzxl/vDOvMjMFXiaNtc6pPPZgWo0KXasriGeugoB5JTJw9USdH
	 On3N5tcd0Mw1ztXpw+whnVVEO+MGQ9XaA4h6w3ikL+37Xjbh85hmORWA81A++AG37h
	 VBdEEo3x553Qfd8HEsDs9iunv6jD2406prU7ulJ+D2SKIDN1GksuSh5AChEe/E6blI
	 bGMEW+VlIXKpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE6D1813E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893575360.30003.18279363526840602227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e5070c7fec86c853af6e06cb72333b114e3e8d9299c855cb823ea6c36d9f04
Date: Mon, 14 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728935753
