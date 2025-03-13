Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40E51EEA28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741863534; cv=none; b=e5iqD2+xADBbc4na1m8rjIZo6oARSCwryPa1UFo6A1hPhfUn+mENEjhuG6jPN6ofeNAedN0/m4Up5li+XBBWKBin8mmBR4+gQ1sN+phBczFC1jy8kK5G5bQGcMKRDd0qyl1POgjwfTkWS7Sxe3yUgIzK8tEvwGaBFatTiKhSIFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741863534; c=relaxed/simple;
	bh=XS1ANiesO0jLkxKXXpTIViqw4dkyC9j+OTSZdx49Wys=;
	h=To:Subject:From:Message-Id:Date; b=Oyv7uMwtk6AoGX+w397DXvq+Bnrtj9X3zMpTy627TIWYzi0INnL2eL686DD7uQiTKkcQXzNDvJCOqzPZbi1YPJ59w5TZpShs/OWy2r63SDmnpGSfLD6f9mXleNQQLNfOtDydoOtcQaoQEhRiWoNbAKpxeqXLuHPvDL7wg6NP+LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWK1MZ9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWK1MZ9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8090C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741863533;
	bh=XS1ANiesO0jLkxKXXpTIViqw4dkyC9j+OTSZdx49Wys=;
	h=To:Subject:From:Date:From;
	b=bWK1MZ9ThFjIARbSEZl9m8vRVjbCrL5ojTTYkBrDOyP7ju++h7A9xqAFOf7Gs/ad2
	 luvdfxjDIveYGpONOInRPo2y9nUIhGXWfQ2JlTm+wx7aQHU5Tf8s+bm3+2h7tKuwGf
	 cw0ipHmHkeG9v8hVaOZp0u1D8x07+9ZAsUgJv8HwKRMYCskSqG6huvXvIRnOtDbTE2
	 RI7PmVQiLARM73P/pccGQ6pZ7XZEo9UlZSZB9CuUgI0p5o5S0DOSk545oLOHO8YDVz
	 qvayxu3Xq9sTQe89y0D41EFLwr/kK6mDnTlHi7hBN3ophCnq2q7BSzlSPdqPpy0ivr
	 vwsEJb+qkF99Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A274EC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186353365.11966.7208324337835296615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b151b7e90e8f13fe74cebacadf42216f282fbadadb8279d03ccac2ee73d0014
Date: Thu, 13 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741863533
