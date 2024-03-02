Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E0F79FE
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709358497; cv=none; b=NuelpXNTDsaAavvbrbQytJz59fBBaaVMcOCXlQw2pKIWTlRqkFnLm1fExeusqPZgBx1PTnuXM8ydU4uStvazLlQycqI+CYZkubbl8sW3m4JAQR+vGNglDbMCkh0vEM3pEK5ZaTtkfRwNCzsZylhA024g9PFkIzFsVGYN49Cttfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709358497; c=relaxed/simple;
	bh=UPiE4CPBaq1UnGR1CtY+qiKYyU/Ela0CwMfAB9xxaJU=;
	h=To:Subject:From:Message-Id:Date; b=ZDzFwKCz3zAqIM+VSq7JQ7QEAteFBmAdbpyDQq4JxqoPGs3PSXBgrwumHW9uxqgDPukDVDnXl8/T5R6VM87ZPJYRp2VU7mE4JdgEkXPVjr257DBhA/+jEW9TqCp66Ax4+Zfz1exIkWaBHv0/RuUbUz4SjkcSk6Nx7JYD0O0pFHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNyJ58sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNyJ58sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805F1C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709358496;
	bh=UPiE4CPBaq1UnGR1CtY+qiKYyU/Ela0CwMfAB9xxaJU=;
	h=To:Subject:From:Date:From;
	b=KNyJ58saXphTAVDUy66EWq10oz1RNm/6DEeUgLUhiEysf2Z6byHYWPHbsNl25y9GB
	 yh59rw9E3PaSmHHdLYbiWvm4S1k9nW0zC7QR0fasJZBWa/H6YNEYqMcsskZrJkQNIJ
	 nkPhFg7J5j0PmC4LOXacl2GMSZOmjCImCrPfmTcVSMmBpvb6RAEsgAT30TH5JN9IXR
	 0Zkot0WW24Jqe2nc0fjBw4puvg4hariAKRRHUKaQ67h8CLPs7rfqdKOm8dPpdYg7BM
	 qf1wDH6DCbTRSVYBdcIJYOCH4v7og/RcHF/fq59HN7SUNkk1p0OY3ZQuxCK//c6eZb
	 42x0RhRsaaMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D4EC54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170935849638.20721.6865465276740468889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39edea51e6d61165120d320df3c74c31ad82a75f133ba6b31935eb39874428b
Date: Sat, 02 Mar 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709358496
