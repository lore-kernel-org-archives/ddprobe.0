Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA4D43177
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724729754; cv=none; b=ZMtpES6nj2OMMjavlTJrGqGB48CPLRHbRlj+iy+NEVMZmU8gFHPmyWCd3t5HY2VOgfX93cmXjioCvUJuY+xThB8+TVTndUCnlZIKc/qPHLBzEdIiK6AIQgY7MeQJfvxJpnpGuDt7T5kQ1wHz0sOOkUdBBM4GUKhxdTGoVSgZa/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724729754; c=relaxed/simple;
	bh=J7ONwpP/Zh6s4YHBPs+4n3qAzFdpERbjKRSMTfTQA3w=;
	h=To:Subject:From:Message-Id:Date; b=Rg9CVnC0r3/LkiyLIFJXQgPsM4iszuuPVdiVA8nzjeqrWW8nPCrLnMogFy7BrgFc/EbSVzIUCeM9kIfmWlm/g7nsGpUSDburMH7/1TLrUm59/uyNt4azvIyQTRRPcnNZgydDI3p3vx8voDE4sa5LhpEDSd166uh0k3jbQgUR6z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyoRftcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyoRftcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2D0C4DDE6
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724729753;
	bh=J7ONwpP/Zh6s4YHBPs+4n3qAzFdpERbjKRSMTfTQA3w=;
	h=To:Subject:From:Date:From;
	b=LyoRftcYm24MLoykdsaT5ey0jy5bCg8+GS4R1U6oxQRUNTD/D8EF7p/23zYB+nFlq
	 wjuZgctMBmRsnyHIuWgDcEsm99tG6mIQuN0ZbYpazl6Llb1tr1c/g6w8kWQwozyE7j
	 5WxHir+VJ2iglgbISDVeOUieumR3P8rNNgyvW6UX5jFvgIbCL8YxXB347K/d4IU9Oy
	 63HfIk9h/xp5MOZBDPehFh3FrVX7vHCTWYusyDGJ0KIbNq/Oacgdj4D2lQMxZK6RNY
	 +qMENTBYJkXv08qSFIeSCv5U1dEl30z0SJPY6VFzhPb7Q0mVVfX1goQnvvosyHX7yK
	 x5Nm7tvzq3RUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA6C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472975360.12482.9600869462455297877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49709c5ad7f09f58bed90102c341c2d0dd0103ddf474f071a77c723c2a307b07
Date: Tue, 27 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724729753
