Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4900A31E831
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785278434; cv=none; b=PrMH9Fi0KnVtFV78SHhlB5npPn+S3pTdYR+JsYA6hYsLaZEruzrxUv+MHmzbGLGfCaGmFBhZHxvaJYfBSwvDLUl/uQIGB4KoLwp19fgxGaAU7zPcHo9ino1yaJ/rKHHV7OSDemOqkA4PXZDowWkCdt94DXg5Toqc8PjLn5EXo/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785278434; c=relaxed/simple;
	bh=ofcgZoVxfMNTU72mEbJVGvT9q7Xs4dvCqTFOqvrauTE=;
	h=To:Subject:From:Message-Id:Date; b=DajVT1DFAD7mRlecTfUt37g/WYHpiW9jIr08iz6TRHipPWzdnv4dNtNQQfeBN3Vxyk2d+8Vh83tfzurXOuGPUOT2dtU4ji6YOAJylo/Qjwo4XujV/ktNamyg6kYBjff2EJ09wW7y4Ztd+enBJv1VWuwkSVpXuuce8rLejMuoom4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CU8zJSke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CU8zJSke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1BDC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785278433;
	bh=ofcgZoVxfMNTU72mEbJVGvT9q7Xs4dvCqTFOqvrauTE=;
	h=To:Subject:From:Date:From;
	b=CU8zJSkewPyNtvdh87sQe4XEJUXpubCI3KR9dN1Udyrf2evnskYwQs/ix+n7YadNU
	 l5Kxk/P755MXBkIrjxlw+z5QgQtjOZiJQux7cI0Er012UCOF9uac/c738bnxQsdX2U
	 3olWYP0i5Suf72nBzjWqINWzo8F3gocs3qyBePn+FLBkrEveAm1QzdHbpr/+I1UaS/
	 lXKg/3YNb9D1lwfaXalcxPPrpWVbJ6iiMfEJnA6le1Ow+4iYFD9zBgpeoEVf6f4Jck
	 sxyRGlGRcutUk0iAzBQ3kNJmvWHuy0VGcTfqGKF1kqh1BltUDm5hitiB6WPWWIvq8h
	 LVN/hwW0HicNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFAFC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527843369.27527.6307871450523254174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fe97cd07e635118f1d00068148e3628a6eba74f6f73fc676e1d071503d5966
Date: Tue, 28 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785278433
