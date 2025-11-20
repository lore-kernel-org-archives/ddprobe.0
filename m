Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DE436E54B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763658713; cv=none; b=MRQaWQdahlJQxbXUqN9niHydy1WY/IaTgZkxWR43Ut6Tt55OA/AAnLqY0gYlWCSdnK0Bj5QforhP0ADLTdAlaaOUv/nfiYIPdoDd7eciEOMZNPpZgNnpkrwsafDrWRQoxK1o1zb5nxmwiLZDRY1ERY5ZYc8yIRnziGwxOGXWwRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763658713; c=relaxed/simple;
	bh=Mbgy6sg1ZVYPeDCXz1j/SvI/cA5ngUHTqiUpTYu+Gd0=;
	h=To:Subject:From:Message-Id:Date; b=QDErVfy1NExp276tdYh+5LYdx8vkjosaC/ehbfU53cJ3BXRUfaGh4RcD8GsGDRc/7WrBuRazZL6EYByKJJIuv058l8IZm8a3UjdC1tErK0XwoickPg4N20A0IRk16oQ92ajSZ21LJMjgYZTBxM9qCpmMXtnPsehN8RqR6GLcTqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLvrzQzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLvrzQzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6480C116D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658713;
	bh=Mbgy6sg1ZVYPeDCXz1j/SvI/cA5ngUHTqiUpTYu+Gd0=;
	h=To:Subject:From:Date:From;
	b=iLvrzQzmmqA0fyyMdKSDk30dejKZIV3hthfx/U0psTEUmM4EnQPRXmaW9mWPZAcqT
	 YrqVjH7V9RB9U/mUbRazgVf4mwC8iDEMsXldkzsxctl2Voiyybp2vrPpEu/nYp4YfD
	 wEbsvtf7nwDgmXfD3PfiXKsotV1+tafjy8WxIWuVK+SYVQMS14xhg/3TxifPYSRT81
	 jRDIyuUL/+w/aywljJ6vqVGbGkPkyQq22xPYvzptXOyZgQipQZigrz7dXkCtQKDdHm
	 HB8H+cCZA7cExiieyynbPElVjtza4FCCnVhamJnG8TPF1jP0Ows5tWvF1Ijk1iGNku
	 uuJyqi/HfgHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A1CF9C73
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365871360.5271.7513283879727189767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baeb094992b66c5dd342c3a6c032fbdd3b8ca8649ef2703e943572e0f1bc4a0b
Date: Thu, 20 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763658713
