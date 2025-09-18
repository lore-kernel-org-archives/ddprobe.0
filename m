Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282B31CCEE0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758218994; cv=none; b=mVIFHK/hxyHNLGlUSGK+gc7PEt2SgOX68Vd1ZXtSuGf6UEBomhdgBSnLMtpEss5kvoLWSv3RWawjObWiiK6l/6eTb7s85r7ReHqhB/8ChyrKSzKUnIMpcRMfiYIU25KXdrLb6YN2ZnYO8ds+kyPNt9TcwnmSM2VW4jYGg3Q6Mwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758218994; c=relaxed/simple;
	bh=YIcStyeUecF0uCw0PFNjQJFiL4iSKc1ZB+riRR3LgY0=;
	h=To:Subject:From:Message-Id:Date; b=sxMPdeghbPYV7evoMn+bRBjvsKOpjhLI0ZbCEDRs9CJjGaCrVRuJyFpIE2LnmDdkn+JrpTLT+G6u1PtvnB7BH2ZSsYPUf1V8u0+mG2BWOm1jI7bUBmWZGmnZN+V65pw8SlnQqs8zMIPA365/fbAr6anHpTFTcGGuVgf3cV9SJR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK6q/F3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK6q/F3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9494C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758218993;
	bh=YIcStyeUecF0uCw0PFNjQJFiL4iSKc1ZB+riRR3LgY0=;
	h=To:Subject:From:Date:From;
	b=OK6q/F3yIYVkF9oazTGoelgAeBZJYSdWlo6r4KwCln2ow2pQ+4LwPYTyB2pMuC8rW
	 nQhdsB22G+lofY1UivJUToXcrLZ5Kq6IwHhPHfxSEppdGhFlsuc4nKpozRyb9FVWp7
	 6DNGfZwXdDxl1G3Wno460FPsZ7eLmVuofryVRA39I1P0GCLzUaRk6lVablQms61gIF
	 R0VeRleJBgZFiDE2hKaFn72H20p55Q8/vEWbH7AiYAJ4Q9kSDg6lc7ujUULu8KM28P
	 4KNXdrLk6j5QzIREj5ATQjGPSyQh/951wViG7tJlB1OwCgT+OK2RWmtf261N1uhFV5
	 DcawuhzAkttrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972DCCA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821899358.12607.7012087591905800361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9b92b75c8cd78625f6136da08eefc57c405b4995a5ca02cf5cceda546cd87e
Date: Thu, 18 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758218993
