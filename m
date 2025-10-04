Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3744C17D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759594794; cv=none; b=Nf5Y8N+Yan/vv2knfw8sxnTjWvD3C1HJGhXErwNa7GjRUM0LeBbc8R5C0i2dge/fZBwXOx1170owBcAG06p1oKNUMLKR3YcWT+fLU8nHSRfKUH65WrYeflM8bdNNq6NpTcu30cZySlrFVVyELood7Sotfq6Y50Aue8yB7wv5pTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759594794; c=relaxed/simple;
	bh=lC8XIpQVB7cUzS8/9KHH+CDeP9+kpb40HF7nG6hVUUY=;
	h=To:Subject:From:Message-Id:Date; b=HxIYX0RuD9RLRpEVi4pQhCJj6+WQriw0UxazpM+9CcrDcIF4ee673exzfxXvxIcsc2+BhNOyXvQMbx6KzTeG+SGzuwwzOnfmvVry0HRjaBrBWKuvGI9bnEnUv7yNGJCSCiAKxvmBo+ZB9FuwAOCDBuyRNMFbH3wErX7467SAf5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGeuIpgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGeuIpgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759594793;
	bh=lC8XIpQVB7cUzS8/9KHH+CDeP9+kpb40HF7nG6hVUUY=;
	h=To:Subject:From:Date:From;
	b=dGeuIpgyr8FRC2HSL1v8w6l+Tp4kLQrwXrElGWsUAT4fhEYjtemfF3HQccvX1Tmzm
	 dBaAEhWyMb6PkquOCTvmlYkESeW1WxKupfgEyzu8xSCmEj36vd1/Vc92CIxJQRB7j1
	 9EY6mA7j+AX35ByyhoMnw5CKd3vG8ACdbW+gGYRF1xoBtjuyMfGB+z7NjSryUpuIGk
	 dwYgkLkIxl1S0Xfc3IlSsQBIofmOlaVGhhwfaJXRot94mfnG9uTXCXn2XrE+xfkexj
	 vjSx5dw5juiM4tnVIv+ThGxh8IJz41SNkaxcBsBxviaGKCFMRGC9R2FU5A+VxeZQFW
	 pF9JGMHzGee8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96039CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959479357.20398.3907501939027108635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1040704903da9ccfbe87bf57f3b294f5a84db5f84aebc6078a15f79cb84e125
Date: Sat, 04 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759594793
