Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24BD2749D9
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761199194; cv=none; b=VDT779qBrwO7lxERHpmSUuZRPcZpGoDfhBtsoUMPmxF21HugAQmRF5uy47GdEvacA7yMRl1E+nhOW2iYZA/JBjI7gF0ltv8hP2Uef3N1sSw+0G93mb82T0+x/ihll98DMo4EnNbAN5FPgWtuudYls2qRvfxnNjyzPz9wHa9GqLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761199194; c=relaxed/simple;
	bh=mAFEcc3Af9QdebFh929YRNyzytYm5E/D1x7o7qZ6NdY=;
	h=To:Subject:From:Message-Id:Date; b=YWLxM3qPOvg5JK1bfT7YrXIHDfhwriOa13P65oBDneCUOtt1IDAhi9i0Bxk/6MisA4aWkn82ZnuyMWKC8nY9xOXuuFimQ0UGVo90nBtM1EN24qEQPn68oi6EC5cHShxZmcbcQlxnRNME5XScb9XflFvzk1IUBRJGDCWGUWSye8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKU1DOAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKU1DOAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC71DC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761199193;
	bh=mAFEcc3Af9QdebFh929YRNyzytYm5E/D1x7o7qZ6NdY=;
	h=To:Subject:From:Date:From;
	b=EKU1DOAmIJulWTHpgDA+VzzuWbCCECf+xQJQGYAPjAAoILoTpmK2ffZErEGiDISUk
	 T141uWEKAiwXJK4QVRF4GiqjiSRX8cOTmwpAEt2/CPgyQWlhm87q+P4IwpZ8N5CLHI
	 75VSh33Ve0jTUpRAT1bW1KNI5IW16Oe8kXI3Nf1Bh13L+tnHd+eelsaV4Y7LGv7xWY
	 aQKtuGmpEMWsibHPfDmtW0F1FAbTefkECj0LhO4PjOoETWII74laRj1npDMvfBnALR
	 qV07FEl7KjSD3azlWvo3VjNG3CMZoUmu+lfUvBjHT5N5JNMLYsxOBXs+pEJAGI7OZI
	 EyY/sXtsmtkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C66CCF9E0
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119919364.9765.12340274375810680889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66acc78bd2ddea90bc8959fd559d7e296c608e74ad4e5da8f6e2ec5efe03141b
Date: Thu, 23 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761199193
