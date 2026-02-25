Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF36B3A63EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772027093; cv=none; b=GM6hcAHJi9fhOr3WSG50T9yVb4gcPvG5n1MPNlow0CDm9e91pA2U8UH64xwezWl6TXMfQ6UoeI3p7/UKG4XsTMCLIEQfJ0w7HLrfqTPk6ZHvHNK2cCSTqH8WzMK63XhQDfCpfZ8lOFfGdLgmtN2p6XKyJ2ViH/F0iVbNCc7h5Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772027093; c=relaxed/simple;
	bh=0cECf3WO3KnO+pWaAYYu2ChrZf9r/VWcdhFHtJM3VNo=;
	h=To:Subject:From:Message-Id:Date; b=ZhEqEsggeHXRW6x7u1RqucBL+nDBJvT8qWVM/gDMg82WWJ+BOJkzi/lo6ahDNySkB7zOl5uyiAKToGMCPCQUSLbXsnj58ozlnLF0cAeoCTNGXGbuIGKdxguKyN1YI32U72eJh5YU/mgZW0EsJU06I77wRR7ziLp84aADzsImpog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1COiJ4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1COiJ4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E369C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772027093;
	bh=0cECf3WO3KnO+pWaAYYu2ChrZf9r/VWcdhFHtJM3VNo=;
	h=To:Subject:From:Date:From;
	b=P1COiJ4+CarBHiyca5NXd0htoto5K/+39VGK6kTowNg5Iv1dzYGLNQdB60ZVqSkpp
	 EaX5sYirarlyaefBgZG1zGz6QAUZrpuaK8qzYeVcPxatUumZNY2AFrakTHwuapj1UT
	 PeYb5tUQEUU2bk4UgxtMO/5Plf9O5bOAd1jDZsyzWJGT10Wr84rgtF+4eXE7xbZ7rd
	 xeP5nJaTQejYE198bcUtoKJr2bkr/0L+ayW8ipgjy9xQtTqAYns1YwObcUV+WB5OEt
	 Q5xfBf1lE8fFBZa0BWNUX0NxEDM3KpxCZQha+R2Lg/6NVqCPSCWxURYHIBnuY1Cgxa
	 0IR7PGgiXR0IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B4FD375E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202709358.11050.14171981670557304525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0b5577a264ca0c82b89a1feabd48fefc14843f831bcaa32f4803789b73413e
Date: Wed, 25 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772027093
