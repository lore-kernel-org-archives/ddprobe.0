Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF4528507D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750244394; cv=none; b=hOCNTkNv76jZWlXbFHW42pK074g0rXyMIGnMMOzX52UK2L58lBYTgq3KppKY3qXQXoqqUlpvmiumL8Oz4PdKZnbGOIVPG6cHZujI9XQzUuX5rL75NpItjtKM3ahYkbJqk2oLPeKNaTVe3Jlk/MY/H1qXMNl2QmETZOvR5XRq9oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750244394; c=relaxed/simple;
	bh=pGtRTgjMWvvpNjbmc+xB2J+Iwp8qIBkTn1aqUcpmFOU=;
	h=To:Subject:From:Message-Id:Date; b=LjCOXmT9+cRPEMPSucNUsT/6IjUWucVA5t5Yf7m2cI71jkcGPJY9fR8EI2yyn+P3ZfOr0v0stoOav3sAZ1dWcfQBcDm1MisG2U92l1Q4ch8qXjkykpt5LWULSYU7SR0dsVCxQOwcTzUp0tEbi8YwYFbJGxFAxt6fhdgtvr8D8rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyP+GBFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyP+GBFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5622C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750244393;
	bh=pGtRTgjMWvvpNjbmc+xB2J+Iwp8qIBkTn1aqUcpmFOU=;
	h=To:Subject:From:Date:From;
	b=KyP+GBFcbitvacuXEb+nxol0tZkcC9Ku45qEMecfBkSwd8czAjaGYVCQ9cqR7TLKO
	 jkmheEzAjL0QweRZBs5e6RIeZOEnDJtfIOQxttnGcyHLpUgWljRrYOrcSZriLTr40n
	 Gf6fF6othdKW3h0OwIIbU7a+Iwnn9s7gJcZrR0r4COFb2MmhrQDNU34jS8S1WL2GBW
	 eXg4vl+39Y5gH0o/ZkjO+cBw8Q2kGn5SkayD0wlYCMB549eX/bBPR9cO3XJtqHMUNV
	 HGnm4GlU2FSBMaLD9M2C+SGDMTPOXP+Sx5nHDEOelVLqkgFoZyD97JxeYU5M+3Yc9a
	 5c1o/nzNQXP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DADC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024439358.4612.4650255232371947575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bae7f1338d84cb8c6896787ab846d057f65eeb2a62e15aaf768324efa3e412
Date: Wed, 18 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750244393
