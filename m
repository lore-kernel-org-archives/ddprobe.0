Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549721624C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740509934; cv=none; b=hHUax9iYrJ1EB2uzLaaao+3b4GpdxX1mudtiNsXS29fhE/1km0SZcXx4Ac+cITaGdef5fLhwWPoE5y3rHtyO2KumnJo2231FsLV0DdXgJtVnzmB7yMVyYi2lOhNeYlhe5IOjl0UWf0P16xjLO5OxUnyvcjM/J8rh/76KOdMDLbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740509934; c=relaxed/simple;
	bh=soistTiq8ZwlhTz/C1zoWMUAM/FgJOXRU1TZxEqKVW0=;
	h=To:Subject:From:Message-Id:Date; b=ZW+LdyMkCU65jjpl2+9NMO7XywZ0nf3IoJO8x0QFNJv/x+MELfbwvA7p2n80B0lsmcSGLXxUs+x1DXMg5nxJiaQ2JjPc4rdp6XZza/2GW1h2w7vBgr0WHXOeIjyWMOSJ7eBuSR9TFoLl32OyKLKLuouiFiKZ5obSqqbN7hWQGz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV1v7wYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV1v7wYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE086C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740509933;
	bh=soistTiq8ZwlhTz/C1zoWMUAM/FgJOXRU1TZxEqKVW0=;
	h=To:Subject:From:Date:From;
	b=oV1v7wYI1pbBBRnnystdpKsetlukAB1wK1wb4TaKlGD/wrqMJHwsqxVFrStJ7uN/x
	 G6mvK6FYzdVk6Bp93esKUXc1OsMxD/Fp91VZLGk2OhoZSSFqx+Y+NSqy03E+Ni2FCN
	 a9Z7uDdg4Tt30GsigR7qNgd1OfjOlhAURymaLFyICquhPqVFoTfXo4k+7wAj34zdMj
	 SMggBfmICG3f7yhLa8CjXSQ3hDShbHvCeE3epKMp6kQbmCDD8Lt3HX6Fd9vyRNTgQe
	 Xdf/14YTpnfbKQrnEz5PmOI6RMB+mpuViaqWQXqnV6b3oywS34NXaghUvkwIsi7Cm2
	 GVrfW7mCQbAHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422EC021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174050993359.628.3578425376867075108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cce63841b6a41891998b81d937c47cb2176717e9861fbd124d60d9ab7c34c1
Date: Tue, 25 Feb 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740509933
