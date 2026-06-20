Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4869A27874F
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781975194; cv=none; b=cy7GuvSBa5DoSI4fItsD42Md3XKr1Z3ducTlnBZ+EtHTcfgkSxW3D4jowFALOtnT/BW9v4jMnLQj+5Dw/YTdAcbvPZVqpKa1I7gvm3gWi3xp53PXcU3S8BvzW/TFxrTGBO7r9rE3R/ipI335AmAuavN+m6vrYYaoD/XLReZ+G04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781975194; c=relaxed/simple;
	bh=sbGGJkQpuLten9ls/hNcID7hErzjgsXLJ39l9BdMx3w=;
	h=To:Subject:From:Message-Id:Date; b=amUvUnDlC9bj2BDkngcH7L3QJKYXDKqksGmLkSg4Em9pfXgcnVitAYd2980y0mx/zgiwpE1MH4fUoSsVzE2i0TnCb/mU2CyDbwaTO+aE2Nh07SRNsb6RhE2qYPaFSD3f/bRD5V2eN/2zNIPl+nEfLGq6Sfh8QFNwUbsxPvSCxpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mppqv+h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mppqv+h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD706C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781975193;
	bh=sbGGJkQpuLten9ls/hNcID7hErzjgsXLJ39l9BdMx3w=;
	h=To:Subject:From:Date:From;
	b=Mppqv+h/7JOnoB5KFtZqsd+7sh9ui9qtGVZj8n4Abr3lOh1kO1zCVWFSO8wVnVP8O
	 fEVK6XMTxmr6l6lzItuzX1xKg29X3LC82JIdPKv1Nf0l98/OBcV/91dRD3FiTYimKz
	 aP+Ve6EXEY2qVfMtAaNhD/2dDxiW1Utu1ZwRCSM7h7CXcFKrmaxqygd1UQ/hVay/rQ
	 ZAHclAkibEa6uCm/beWDiRbWAKbYHxc98mzKIOOfJlYud36SlsgBZfSkegcZSx7df6
	 Uquu2xWFcdj4rJO+8hJCT1Uh3I0qQxBiL6Uk2VtuFmJpJgaQX7FcJ+gDaf9jq5+UKi
	 KVgjaxl5tFu/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12ADCD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197519369.19783.14518433053061693444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e735881c13dac2b113d0613f99a7f8233e3881189b2bc03712fd1d768af556ff
Date: Sat, 20 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781975193
