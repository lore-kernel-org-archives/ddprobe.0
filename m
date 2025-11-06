Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3349427FD4B
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762472394; cv=none; b=m8aMbnIQV6VJDF53d/TM4+wjZ2sP8m4CUe7I9yrOAT6dNIQ/N/7u8lN1BwCnyRqhw3Nppsnhj1QrhbOYsNVWWB45aiYTUpcXid6lxf1KifQCmvU9PxWTBCW8BEO0m0Fjk1CH7fFsuierC/JC0gQZLuP/ub3NU4QXJ63DEj7ij44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762472394; c=relaxed/simple;
	bh=eSteldDfj1F/wGC9S5/HuP2U1XSVQWNWVozHQjZqQpU=;
	h=To:Subject:From:Message-Id:Date; b=Ldsh4zeXd7QNuyFMRx1lsH72eZNxefrF6eJML94uybpvtQKkLEHOb/0UK7lVC8VfAIa+5OTjHAcHlNqqz7Uulk1M+e4qfxG7BykpIGFPXBgdpydARsthY9M4uz3+kC6G2Z4nyui71T6//e7wXuNs7BpRJws7EZodd2YKC9soQB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSh42Hqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSh42Hqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B8C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762472393;
	bh=eSteldDfj1F/wGC9S5/HuP2U1XSVQWNWVozHQjZqQpU=;
	h=To:Subject:From:Date:From;
	b=fSh42HqyNrZOL4MwbmaFYHYACPExVGEmWcmILVajb/1wgh4yCVu2ZaaJozvUQQ1H3
	 PVOgfmZ21MsWKj8wn8qv0vyLz8vClsSRZ+VecEMu7yfEHylu4uqaRxxGkq2svemknB
	 LsXtO/y47u6nDy77isxZCcWDapP18IqMYou2MtyWVIs5AipSQFPwyCKZhE1q+8xUn/
	 TqNwjZXfwF7z2vuB+5XpQJlY+wDVQVV0DC91WU6lbSPqJmUsyWTl++WSt/TbTucJNV
	 yT7ehij3NmvAdlhYa5rdB0kdGC57YYi+6gglCghpwgroX17fwZh9Mc00Zy3pzohriO
	 xSzXMV/v+FKPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97353CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247239358.16737.9659798413514787871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2767537e57230b0b7d96b3a9d193258a49b66a14d9452635c205c662d75548
Date: Thu, 06 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762472393
