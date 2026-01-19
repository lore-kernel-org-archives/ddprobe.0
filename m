Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2EA2745E
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793634; cv=none; b=mym5jE09hSWHRROs4FTz1nynKgdtff1aFXfqvtIEwRUQKK1HXo17G40Gn7xxlLzvZ9PQmIW2jQPmTB7GqmsJpBOZeKyM4EO5APus3fMM6ysUyRBe3vkzgQGF08o0/myoShO121J2P3FusiQn5M1efVlTEZCLmnDK9YjyoCyPLgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793634; c=relaxed/simple;
	bh=2GRVe2uNuABF2W/5WBHBDg4McrHjnlkmpz9+qsP+Z48=;
	h=To:Subject:From:Message-Id:Date; b=ZPZOcRE7XFpLuTlfLHb36huFc6UbMdVlQRFT+Gt4ujH/YrNn8Al10SFTghGwgve/XMRZvLMzjpWcO65PMYuZQJILYoKDtSOybGIjCsEUeBmMQ3sblAKq8VKPWmaLzaLoA2Q97Cns9GiNlrM6IhYpuhx+BCpOQiy9pujGDAqM1No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1TUnFCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1TUnFCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506EC19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768793633;
	bh=2GRVe2uNuABF2W/5WBHBDg4McrHjnlkmpz9+qsP+Z48=;
	h=To:Subject:From:Date:From;
	b=F1TUnFCFLoF9oPjmGhO6+hjUtGoiG8w7+Cg/s3dhpdf8b+5MeH623cIi66UPMSrFk
	 rbGuxqm4+2EC6hZ7CTKwH6nooTaxGy9zgo9i1XupJAu7J1nzi5S5NWJTYhZKo4dwtD
	 QZJbXj0tU3amS9WecfyoZ8oi0nFIA4z6dIx7fro+ntZVijanWY6FSpzOb9FDMe+5RT
	 xHmoOCQnOd3qjGOliAFwKAEefvtCXXEsLQLS0xl+8WxgI9qtm7tWIef49GkAwz8l/S
	 j9DnFyjCuzAmjRqkx9Cjs/6fs/9RA4E6GZxkmnYcUv6bmBh088p+Zml2CtlaHNuXdN
	 I/NhOICIXdPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9305AD4A5EB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879363358.497.16385803470125084845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98172f0ad02baabd77255b1ac2b7256b9801b4b92047044114f82a91e270bda0
Date: Mon, 19 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768793633
