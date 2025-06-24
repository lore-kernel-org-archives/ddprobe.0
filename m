Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE16A72617
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750733993; cv=none; b=mso43cdDWdWuo6TowtXGh63gxulnRstt0SAE5cs/flmpRqoaUPyBKP5sfCgFUr47HZjcj1bB+prB8DN/E5+mbvEVwuKGpIJ64RrnPi6vyl0q1njNMCbRGibVF8+HUl5Mr0wEFia20B4M+bNvY6vKckfcjI6dAWRjjzPUhWmnc7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750733993; c=relaxed/simple;
	bh=i2zKql7fFXAKAxdFEWUkxLksIvebjMT8XmEX4jx8mOw=;
	h=To:Subject:From:Message-Id:Date; b=oatbatng5lHVJxWxpgZN45p77+kgAo/S8DLwfBZi/p9RKNhMEbTcEXOPiduJj1In/y9pJX78wfx+EpCXGP/MROQJSCTZAv9m6yEKDbCNVJbioxcgFYGBSF7o/bp1HQm+Lj78WNAD83tf844/E3O2TtSE8PMh/RMq0mpoALxrZBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyMXly75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyMXly75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330BC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750733993;
	bh=i2zKql7fFXAKAxdFEWUkxLksIvebjMT8XmEX4jx8mOw=;
	h=To:Subject:From:Date:From;
	b=YyMXly75lggs1IfrYpngvkA1uy3SL1wCjbAVLW+3Q7YwG5ZeIUYn8I12+IZYEKIYY
	 aVxcrTr9Y4r1bZYqOGgHgUxRDpj2Lhqvmii0+vAyiw6Xuq/tOJZt7zaFD/7qlGRfeb
	 OQoEZOgY6puepMheJTx1rhmTM6k9I7otjvcz/A+saWQwfyspEJ1NrJ3Ze3bmyNSmIX
	 o3xanmskpkO4udWsQz024wLEfYaSlwVFXE2ktOU54vHPzHcjL7YrZ+OekFFwNTf2IU
	 QpyTTlorHj2GjZaumGhOr8Qc3f4C2axxbyuwgag6MjXhXdwnUrgwvQuv4lWmhq76rd
	 zMORVN60cfEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91657C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073399357.14299.6915257754930635247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8747ca25b2ecbf8fdf33c5fc83f35ee7721c0deb150a1baa0c5a2d99903699e
Date: Tue, 24 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750733993
