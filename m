Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7872222AC
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766832834; cv=none; b=oF0aj0KbzG51szXHhlok4dHHLBGRqojhe71/L1uu/fSbwWmFkH2BdTbYflgjUW24pPsYHMyv0DrvDpNz8204WRdTcLJ6Rb85/+Qqa7ESQcQoKtNcXH1vzne1pFbAvEdYD5EIZb7vX+/WUlKtU1mqA8iaILrKdBZyg2dsBRjxpec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766832834; c=relaxed/simple;
	bh=PT8/3XHuStiX3Hw+udz5nJwpFhE7w/EreEdcoR2+ngI=;
	h=To:Subject:From:Message-Id:Date; b=NOnz68ERkeGYdCipOHeOpm8o9dC+HQFvlCQIyz2Q48/Cy8wHT4r/YnZYj96F/gwQQ8gxE5jASRcOPIjZLDFkiPAEgYXVsZ+JsNe41cTEy6TCQfM2wrUJUv+LiOABQuvmWls6hL2X7wqAbfMk7enxn2adSLS+teWYH+v7cAI5jgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7TFUNhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7TFUNhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F26C116D0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766832833;
	bh=PT8/3XHuStiX3Hw+udz5nJwpFhE7w/EreEdcoR2+ngI=;
	h=To:Subject:From:Date:From;
	b=R7TFUNhj26+duaKJ6GmFn9GasC0EaI8+Ime7TrSu9rgNbSkqkOSlB8RU+jZu///3x
	 3VZ8M/FyMrSSnywKeyjjChbg4BpCI0/AT25HX3t5Y+KcWLdKjNFJhEfLsZuaRATDAy
	 COljR0F99nlQY5s75fSuwobN7LfaJt0NVX1WmfjnXyLP+rCNzo8CP2RUZbjt7mI46m
	 4wC5HOpjffGY2KZBvYitRZBTVcXIymivok25gUzRMGbsLmDb6vdxiZ9DRQ234U0hgG
	 tIaSKEKI8VW0kvG5b4iUx1NE6mevjgJfs/iQuZUn/1KuXFiU4Uk/bNtQX2JcOpCtvz
	 OSMHLSbfX629Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FD3E8FDD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683283358.12140.380975293201119496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf425aeb139673dcb5883ba0e9341d7fdbeed1beeee7c9f25f85799909ddfb4
Date: Sat, 27 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766832833
