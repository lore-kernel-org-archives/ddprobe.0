Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262DE2628D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782577114; cv=none; b=cHyZyTKuGwajvj9bTO/dzYoFH3CivPKXDVTgeUJQGnDu/MmurQoo+eehdAsKSoljfMJElie8zeYrXM+NBv7GRUhYv1ffF6qWe2SmZklkmBZSJFPUrK8W+SSv/daIc0yHoUPplQL/lk9qUwv9y98EIt7ypMpfmDFXhfS+pKPeRqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782577114; c=relaxed/simple;
	bh=nSLGZGXQzMV6uFdvNSpNm1OOhQkLsLgKHfBASDh3Dgg=;
	h=To:Subject:From:Message-Id:Date; b=fKf8Ou5ra6i+GqbvNH9BNjRCXXDTIbWrW90niYpamftBGfsENxPFUPVd/g+eqAnMbQBi4E3QiSBZ+vrycWdf3sZTeCcIk3escPINqr8fzW/eRRZZqa8qzQZXFIq6D7dNVmoj0E3XJcSTN4xbNIRFidNNOh3fbVT2+7nZTLWF6lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiEMnPq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiEMnPq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8978C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782577113;
	bh=nSLGZGXQzMV6uFdvNSpNm1OOhQkLsLgKHfBASDh3Dgg=;
	h=To:Subject:From:Date:From;
	b=XiEMnPq1bZgzYCsmaUdwQWK2dyk1C0SDW9V+rxkHijgq+kOvGXEqhS7qvd//VHWYO
	 Zyz+brD6U3xZ9aL787XWJFp2S9a0QTbtLfGK8bN0H9KrfSkh/IRcA0GwzCLW/hv6pN
	 C+5LtL95Hn1yx0bySnc8AYwksv8HHRq50quTF4razRN2iDZ8KJcvOKC1EPh2WHhvPh
	 bQRpgGJM6584Ujw87+CnkpqN8kYHI/pOGgSf3+Q8FlGIn10qvleyWU6zzgSuvrqJAU
	 J3fmSIqv5cKlvCXJrfSz/ozF+2TlLlz+9BTZJH0EdGLOQCH+Af3x+x3fv/prhuBV8s
	 io1uHC8xJJ6qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D8C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257711368.2731.4837451883143645643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced4c74712d6e4d50d6760fc6b354d83fe906a325071dbd9dcccd56de2174c2d
Date: Sat, 27 Jun 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782577113
