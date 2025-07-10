Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBEC292B37
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752139794; cv=none; b=Enq7H0/J51HzDCCwm9wpkzBerDgCTG8jt5nbfbbxHuwd2Sa2fmkoN1jZONMl1Vzd5DGBj6ByLqoHhqgK4GqY3Am4jOJhvKDkqrbesmTm4vjoaywXYCRbCEeWcWKRMNp10q+Yi3xVKtrD/gwP7vsP+qhC62E4gklYLs7U4PQM+LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752139794; c=relaxed/simple;
	bh=qtIl8TIRZAZHwX+fX/OKjl+V9TPPTeR0GLAzshaZNKw=;
	h=To:Subject:From:Message-Id:Date; b=tmiiE87nap2lIPh31EysVZQdnfB+GF4CjO30PhgxUTP5FolMNuKbzm0YoyGnrW32SvUM82uNKCD/Wtt1YOKCk5BHpEYWng5AVKvXB5Y/w+vSo0Bafwus2MecZQPDBhT2p71PbibzNQih/c68vUzcROLRadKKpFsHaqkyopKEOik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riq/ddF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riq/ddF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E54C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752139793;
	bh=qtIl8TIRZAZHwX+fX/OKjl+V9TPPTeR0GLAzshaZNKw=;
	h=To:Subject:From:Date:From;
	b=riq/ddF4o74oxoo7gR+ktxWlvXv/AgoS8ZttPryLE1uPlbK4qMP3ZBsyx7F48fYvk
	 wgVxGlCxdK3c09IN/nFj/uLUT/aiSTCRrxNkYBx6hzOY/aGnPoKDCipUUofbcMRsAZ
	 oWkkGWsi4vtQSoL3WUQvfedjwNazfBgDkybKrtHm57QRBo+Exw+6znmIu0InP8XADO
	 1n4EDi6VMKWkrwXimdgEhA4gL3FXyZCgQnZxNVuW/stiayH32A933sCgYOQiuzqNIp
	 8Gnhk3CzcJ6sB01UsxHb+8XfknKlW+Y9YvKoJrFyFPLTA/bQu9eUzQ1gBI8cJ4FXor
	 PuoFO0riEM9yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F23C83F1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213979358.11019.15761318182437774816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef3f1f03855a5389966a57407bd1b86499385d83cd0ab0abe3e090ca5d6bdf7
Date: Thu, 10 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752139793
