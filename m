Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410A43A3E7A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787075434; cv=none; b=cVLwaFrJ9Ds+klVLUJaYsbHkTSAKlVb4XVN52S8GKDn9dV7MPmEQ0HV9W5TjTgvpRQUisX3RPje16Fo5O3cz2KOFJB33uItw6NbMvEAakHMud1vhbP3SNRrqRDVORQCbjviXZ1QqyAcz63yLW91rdAlTK3tPh0fXRwi6huuSY7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787075434; c=relaxed/simple;
	bh=uHo28+OtKNrUOGHmYLxDuU+wp6I54ZPshbEfUH3Z3Oo=;
	h=To:Subject:From:Message-Id:Date; b=Kkf3Kn7wgsbz1TwmicVHricrtgrsBj4Cn/nHUAiJcb7bGQzg+NJtBnwa//U1dfub1fSD392fTmc4L5UgitOyRSUYRKjuC5k8fDKE9Cw/q1pzK6RzHZajWFG1R18S0nl9ClJB9KeOhaA7zCEbqwUS0qdiH3+nBpWY51rwy7hGTvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNIUjrBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNIUjrBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15B8C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787075433;
	bh=uHo28+OtKNrUOGHmYLxDuU+wp6I54ZPshbEfUH3Z3Oo=;
	h=To:Subject:From:Date:From;
	b=SNIUjrBeYrHSuL2LYAtgDseNPhJNWIcAIEUsJ4KKQdIeMhUFn19mqr2mA2ZnC0LIo
	 c1eDnegjL+YneF9D8dEbYHNj2gyFzG3uxPor5ajucrRhJ4p/yZavaOEigMZnUqobDc
	 +IU6I/7cxXs052NKUkOAnPHa8qeYf5JhnpntBz7kPVKE3wmOeheJmm04k5kKwwoN7d
	 MN//CY8zVKZ4eU4LYPcb3TAYDoq9dp3Jce5WdB/Au4dYVTtm8Bm5rhQ1nci1DqR9mR
	 5PwyWH67yAnX4aBh819OnY8iBaW9aASQiEz3nsE9kFG480RK9ZCeNOivrP0wVi33VX
	 gC4c4wBKRLerg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC72AC5DF82
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707543369.9778.5955350501778513695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960405247b08ab84ac96aad12eb108085ada92e6956e659f721dd10908682f54
Date: Tue, 18 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787075433
