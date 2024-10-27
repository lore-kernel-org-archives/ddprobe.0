Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12201AD51
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730022954; cv=none; b=q/9aoruXXWQ8muXTqm4h0/J6Pef/I1oEcdOC/vPzr+FQBcU/7zaat8J2ndhoSZJAU7O1EIgGby2FAD1WhXCzhk+BCcm6fcZtYunOMgveyiyUHXsNZ/YYT/z3JpAYupBJizVCBEY+6xwjKaGQraY5a0thR+sjDk4qRH4Awa9kVNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730022954; c=relaxed/simple;
	bh=Vec1Ofr5V5VOMKX5Yi9kBNeWfA45W9a2le588q90sMk=;
	h=To:Subject:From:Message-Id:Date; b=qvHUDvVfjwUDbqEUwyIGG4+GLLanIGAxKn9v8SsYhTHSu3Zf56GTGyxBNAK/M41YaAxcHALxWb2HocV1R4SZvaarr9atPBKXKwXiS+S+bWvyYnIHWPV9J8Y1VffA74TLyATdpO+5gmiNsLrtoUfSxoJJXPe9ymBrirlwh6WZ87Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPy6bPKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPy6bPKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71A7C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730022953;
	bh=Vec1Ofr5V5VOMKX5Yi9kBNeWfA45W9a2le588q90sMk=;
	h=To:Subject:From:Date:From;
	b=TPy6bPKtso3ow2M9PaGcvOfxANMfZXgqFR5dApJRV4wpmo2Dx2MbXwLduFn/ShLFe
	 nijgypzyurQ8bU+OZeyRsg2gtOccemD8O6Du3XPv5/FlUbb1iGL6GDik3Gc/0GpS64
	 Bn52+HOEjxMGq8IygUIP9le3hPkUblX74zLduxH13LIkxX8x0m3WDFHDC9pAG4WX+j
	 FRliuOzYoBqgOXue0qq0FKoLkBu7N88CN5olGNoosyx6aGrM1CtikChPklgQYknNfz
	 E7ng75VzyHLiigiobL1OiC9DAW+UoIqF6/xuu7uCMv8F6hbFGyx0DwpuApRhd9jDD3
	 jyEWGtpAiOWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94604D10C16
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002295358.13900.12399245276946480572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6e855aae34c6b79422703ebe51e8a78f19ed29494700b4eaccf53161d2921f
Date: Sun, 27 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730022953
