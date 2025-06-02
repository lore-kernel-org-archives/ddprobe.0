Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF072A1CA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748860794; cv=none; b=RIA7vBQ4hF/5n0zQw0gLXk2huh7liVpKewFkx41v+sQLoLBc/WrQkHl0Y6+046GAZNNbD1OgVzaZeKj1Q+y7nzs7HztN/EaH+N1/by2c43Tlf5nDoD/LivoVCXaEsLmCbIShQ8FDC797Blftaoqlv4AJu1jSgBnV5nOu8puWGLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748860794; c=relaxed/simple;
	bh=jbILaz07RuQ+tmCRYPM3XA8P6CFiAx1CAIX1GYIRc6E=;
	h=To:Subject:From:Message-Id:Date; b=LC42/9KHk4EELePvV065OnWdfpVhIJJt1i3LMv2wyJai0j5Fl1RUlUUqaSgw15D02c5xs0YQDy6aetb88IzchrnQw7kaPrfzu/WidOSN//ejGwMikF1ZP3Zxn8gGmYeRH1UN3TqixHQ+t1B9ZO0Q7xWy9yeXprrOyewBscGw348=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBaCktVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBaCktVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1613C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748860793;
	bh=jbILaz07RuQ+tmCRYPM3XA8P6CFiAx1CAIX1GYIRc6E=;
	h=To:Subject:From:Date:From;
	b=aBaCktVKl6FTkf7/DnOtb71l3nOkCGR9cOdEs/VtcheBVZ36vnJYdkzMLSfNaHpJ3
	 FRF5M8IXuYO1C1k8d9F2OSAwEMdt2OQ92OC6ZW56UIuoFjjRsTkyRpDEfQ460W5OH4
	 zcsV0zx+Ijved/iPUjMsm9lQUfy/mxMnSYHGZLIspOI351Wq/kzaxOhQ5DjEg7bQjl
	 kiBzBu0rV2Fd4E1vM77G2e2PTMb2nLcEFHO7CBnSLhuWbqM+Z7tMy03KH/l3TSdG28
	 VKzoKWgJYheC2pS//2MRko8KDe+wRlB54TUXGd9nBEvE4X58M2pvua+3RiuGutHZwb
	 vcsHs2bqX9orA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA69C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886079357.3383.15607960401970086058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c19cfd31413b634c00240f3da48fcd3253617c2527226c10a81d75acf9de69
Date: Mon, 02 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748860793
