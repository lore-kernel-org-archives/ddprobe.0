Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5C11F153C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747349394; cv=none; b=fZ42tgy6trXQgVztzk5E9SwzgdTIlqN54y/Y5PVzaDLV6DXqwBJrsgYVHCwSTBpybzf9ZJ4Zyx84WDKvekt39YdsYYS0+IAPN6fuhOjctblSw38v0ppYaJPULL6eeBnZOCKadmlHIAwLhqUAXMD8TVvVnOmUCpYbH5I5weNAG0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747349394; c=relaxed/simple;
	bh=Zr528V3K1f74crvb9TTmzpfeD8naoOmGjBFjvS0gw88=;
	h=To:Subject:From:Message-Id:Date; b=CH3N5/Su/foUMQuovRWZJ5m62L5sko3BMHGYA7JkHwXDR27LLnneOtZkl4K8ueia1csH+jo/gc/IcucRQcc8iCoWoWYC4yZ3z9O3qtAlTrE+eB1hNY1V2CtQoNlSOlwUXTXNWYzjc6axgmrO76qHxxsshv7LtY7uT1eURmKJsEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fETG5ngA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fETG5ngA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747349393;
	bh=Zr528V3K1f74crvb9TTmzpfeD8naoOmGjBFjvS0gw88=;
	h=To:Subject:From:Date:From;
	b=fETG5ngAN0v09tqqwc92kTuGZ0k0adLboWQz3t56a1yEHKisEc6FUnG6XKnspc35m
	 a8Ls9GF/dsIDemH6BgVesDy/eISn9HqIE2/71y9h6+DE4p7K5h50+hldQpROc9u0VF
	 wwT6ZZwOAQJ+a1XH58qlvxBsX/QPvyC7LItwBALU6FmFGA8kgoBULFnejZpQF6IoSt
	 kY/VFxaYMLMloE7e/1TTmRWwx1ggR7U666fs25HBfotBIi5TkYsPhqxRD8gSIYqLyE
	 I0J+A2JXYp75QC6Fmemn6+OQ+YCIzK9TF5pNGt5dUZNHW/Pozz3e4BaXa/y3u/IA7i
	 0XL6E2Xq8GsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95860C3ABDD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734939357.10647.15403798752693330531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bba4f3e14c5a0a2e35818d78860cac3a8598ad3e06be373575973dfab921c7
Date: Thu, 15 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747349393
