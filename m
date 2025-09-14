Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3589638DD3
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757860194; cv=none; b=snNdwqwusr8bkLdryY2c2LNWj5Ka9HjPEx5dhiDpcMVIphpIPnlXYSX+0Ks8377daNy+Ggw66bj1TASdmy0U7Eet3ps3wa9/3riFel4OKFrzkhszXA+AEU/5jO9DlYNUxbo1LHtn5QdAgxR80lNgkxoxJJaIhVU+Hlcm6CAoj50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757860194; c=relaxed/simple;
	bh=82J/wqXcSn7+F+XHsSpIQ/nKxo/5Bv2q+GGiDceMNhs=;
	h=To:Subject:From:Message-Id:Date; b=bUu71JGiufseFrcKMihbIvQ9q1YikBmtw9XMuMZF53Hlc1XwzkKdOAT0VK1S/xhTkEheEni/9D7wrQg5ibBJQqZw5Ei2T0VdA8bUSO6us2DhdtimAI95LQRPNRU+4Y9YoM3oSgv08rO4foRTvcRtaPN5UEtBgYXUQPOo9QtiFXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmSdhDba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmSdhDba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B66C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757860193;
	bh=82J/wqXcSn7+F+XHsSpIQ/nKxo/5Bv2q+GGiDceMNhs=;
	h=To:Subject:From:Date:From;
	b=UmSdhDba83Wp29rZCZPndMOug0sLgc+1w7QyNkkZA7KGbp77+FDOWPeVh2N3ajOnL
	 xMV33cEoTcGYakTLLmrvF3Mpgr1lgJuAmU0CFNzNMc7tWPUc6uGiqQk0KAswkI2R2X
	 XS9yYlbsI+bo9K5w4QWJ4vKTo26uzJwwdNez30ek0+rZSfmGnJMTL85aW38Y3pDMHt
	 Hrc5EDascOGCzdhkx4JIWhHmRPpamhkk6M9Dil3g3x8YqxTYHcgEOG9wCyM9Lct1Wp
	 HGFAhSbQ+kuTCd9q4hQwIWkeprlnUCStPpwSNwjj1vO/PkTwp1WrCq8pj7gpvw0AH/
	 l/k0RWOGUnPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D12CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786019357.3609.9705668355584128612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfc08dea6d363c95ec7450dcb8396475c24ffc98de8be30622a6b7b2e7e90f2
Date: Sun, 14 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757860193
