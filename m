Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411DD136A
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747527594; cv=none; b=pMFZdw/MssA48a37ohcmLxmReLXFk/g/o6FVQlur+dV+JEjx6BaV3vP9eO1daTLUju3vneZ61Av1Ny0M9hSTZDy3jAzqLQDec3XpJmS+EpaLn/RnxbwuwF2g/yXFI2hegccvlaOYGvRkfBG8o8Z5l/Nz2tG/9SCTAe9vh6B/NH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747527594; c=relaxed/simple;
	bh=o6B3CI9LeW0zM6NTCPTiUat7AA6GQEcoXBojQmJMMmM=;
	h=To:Subject:From:Message-Id:Date; b=kQY82vncOpGc/VbojaASUJxtP3LVl/vv8Aph0Im5W82HtmLuPw0M/V900i8WTrqYDMfrznW2w5arILjFvMfy9F7Pdfkc4v4obaWisYWmFdF6ftaP0aSqMhnpoitmKfUq4Sw0AF26oCZDV0gftjpgKRtFG11cptRrhV8z3+JW1WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXhMjdi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXhMjdi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F79C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747527593;
	bh=o6B3CI9LeW0zM6NTCPTiUat7AA6GQEcoXBojQmJMMmM=;
	h=To:Subject:From:Date:From;
	b=cXhMjdi3B2M4MVo6u699TDQRcsxxET41zp4GO+f6+2/22oxFaWjZv6FpQJJB0yI0F
	 tL2GHjmhQgOBBFIwHlvmaMlQrKxFa3BE54ToX74k7CJRaKELuguS1Vu8H1IKPyK776
	 FkTchR37Qw0sJre8hlr2i/397KtsmkL4x9r9ml2zgc8SIaFVd3/HTgEfj13meVxeHH
	 iTlNVHXVsHHaFbdzE2PSGNoUkRhP6UQHe0beYNFuyarO9Ic/E1PuFsM+p52S3Edm/8
	 m5nfirZWuGzR9xJ7j314XoTh17TGMsBMoqg8khDfUn2ElVeEPIVVQeqmXLRxY+Gjku
	 jLsixTHooeKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911D1C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752759357.4188.6075194887031520039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b98aad75f0017b7a9390f6b4ece3c11478d1e7986668b71656f92ebd1e02df8
Date: Sun, 18 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747527593
