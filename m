Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083DF2F3C34
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766413434; cv=none; b=eMxUABmlvi1tPjFCHkr1PNPK62roLsPIQw3RAuIktlmSwhO6pJO/j74ABuiqXiDErcvgE/EAI0UwluJP7IwNdul79hGVaq+B9626k0POY/JldLv2C9RAmpU8jlsI6F3qGTde1w2r91K8FFd8Y+Z4dTDx4BJ/fuTBD61/KtseFes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766413434; c=relaxed/simple;
	bh=RcI/Qgqr5GwkaKVIxWzs1UeoZubwFn1bXi57LEe0chU=;
	h=To:Subject:From:Message-Id:Date; b=KkbklET6gl01blrOY5awtac/x+363LNVXS7B9Kia8OMYaozEqNc3j5aeQ4DsVQDqNFTOtCD0D/XwIdAkllYWMjQC2emUOSJ9vEkXjUnvxaVpn69/E4UDPmfjRKioBfLspF1/y2QHsHbsKUX4Y9e6LtB1n/kXNDbwDvSAYuPWTBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMLZqNb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMLZqNb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6ECC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766413433;
	bh=RcI/Qgqr5GwkaKVIxWzs1UeoZubwFn1bXi57LEe0chU=;
	h=To:Subject:From:Date:From;
	b=SMLZqNb8KX18uETdJemylmVg2y13mZEDZW6ZMnIg13KHVMyC76k3HpY0n+4spoHXt
	 18gVx1FpUtqYt94z3W67wVlWVG4VlrTphIhooGVGFvYEp7XvYpNYHXoIWtc6TsfjyK
	 jrrPWcGqBztTNInYgE6AyoX+wwprpjLJAmqK1aHx/lQBiJGSTLi7tVXitVSzgjJ9/e
	 ku9TwllI71uhuMxhRUoXQsoV8uki3tMJinRDqHQc1pHyV1FRKl205SCR6OEM/QC5MQ
	 IbRq/HuMO9C4Il164Lt6KlpSuZN4jov8UABhRN+aiuvip8U5dg94nVZD77YonFthcN
	 Ze3Yjcd/EHj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1DE674B2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641343357.10172.1217554181338262212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becbba3d9a74412190c96058b356d7bb310c5579c2ee86ba6bd83e265bbff011
Date: Mon, 22 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766413433
