Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5238318D62A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790539834; cv=none; b=uCuVW4DTneirWm0DTu2IwqsjkSNCNhDk0qgrUk7CUD5iy54IM2Qcjc8LZNJHbpliG1rhpFhHkGK4I42f6HrLaDMmcfZ7PfjOqGUIU1r7e18RdSVMacDCl29GuaMRnAirPt4gocRn6CeE+MIFwBUf3DDU8hsbVtmy3qQKuFlNp+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790539834; c=relaxed/simple;
	bh=AgKMTqVwrubfYQWSZeK/j/NP5ZaAZOKE2nPlWPz3hEE=;
	h=To:Subject:From:Message-Id:Date; b=ILcaWVuqaFFj8fmPKn/kbPxD18Mw4kDbhjQcoguoZn/yp4hDzwof/64851nrrnovTPwmL+j5lhGPYp+R16ozwd64K2IiZo1UZF2rA8thx1p5PFhf0W3wgtiJEtePhFmGOg/wHylbjBYBkwgDJs7EiKR6giXdRrqEkxiiS4BZS6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd3E3H//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pd3E3H//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFE5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790539833;
	bh=AgKMTqVwrubfYQWSZeK/j/NP5ZaAZOKE2nPlWPz3hEE=;
	h=To:Subject:From:Date:From;
	b=Pd3E3H//MjvRyvTv0fNotbl2oy7X0EjsXV/1olrgHNoJq7b1hGD0qkB1mp7iUaaFC
	 f6n9W4MN1N2OZK2cgzATQs+bCTVlnAEaVQKIdxUEaIYu2p7p9z6VYU8KpOIbFAOzwt
	 0jz1PJ2f/ahan0uEv6FYiLt6mscNBlOk44VLEsIIqMtfc2GxeAWhVyb6EfzVeQc8G4
	 L4/9tVpWgQpIbCTLutueWZLyEcUTs9SF+AeE075Tr0fSE65B/lNrjEmGlZf3mrFlOL
	 /FBVnNZi/Ujc+mCEtugTht1I3kwqyFM871NNA1mY/hC+Y8pMsrfqaAqQrXrtRKonw1
	 YWRnsC4CeZzfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47CC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053983368.17195.8375815025011698179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540f024d89a032334e08fb424a22a6f85a40f24e6bdd46635022547c20cda257
Date: Sun, 27 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790539833
