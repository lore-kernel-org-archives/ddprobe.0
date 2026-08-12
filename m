Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5750F30FF30
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786517434; cv=none; b=uhdh/vV0b4w6BcyuVJ3t41FPkIc1tToT3lQhkoIBPeT8/8+c3o3M7vBcyxmzKk0De0Iw9XtkZgwzLU4HbISw+ijmsfIaKNriiKEMacWjbjHZz+z3EpkADtdIFz4ZYjqRPxX0SaOdzHv2iKuJSXZn3skOCb4fkh58MC+JY+6N/ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786517434; c=relaxed/simple;
	bh=OayH0+e5yoAUDM3tcWITODAlKzxqJKawF3YOcGBU2JU=;
	h=To:Subject:From:Message-Id:Date; b=q0s/GPPUqk/fPfBgGquf4XvG6nEEava0tVwxJrPPrdLkU4SznSByeWqbDYEM+LPbnMNX4w9ZsnT96jR8jKdd0rj0YCGJxPfODRms4R9TyKk2alxZlLJeF50+VNeTROfrTUrcGbFhesNY1vRr5h/G4sLRZgwng61JHJBrpX7Qtbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDHvamNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDHvamNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BF9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786517433;
	bh=OayH0+e5yoAUDM3tcWITODAlKzxqJKawF3YOcGBU2JU=;
	h=To:Subject:From:Date:From;
	b=LDHvamNgmZ5/yxyvT7Zif+C7dDO7K4SEIJaS4a3oC9OMLFH/XxwtSeyEGFKYwDjgW
	 csXzQg2Zi1gqRYmWTVxj3TVI4GTnAfDoN88XAs78r867zJUzTP9DR5nStL1y7Cip15
	 jjef8TMm3HwUL1Mm/sdNG1HVT4CjORlRHtq62dlWSKQR84iG4gtW0JDvWC1/eRoNzr
	 0ptGqUhSeUFCi5gugC1QIpKs3qLexknYYoermyZnMFCFtYz4dslsIZUQBbo4Rq7RTE
	 /S7N3xZ1GGRwMdGrRcNm8l9AJql23e9OCLzzVeHR0iPiOHkMYjznUR2fM0Ywl0l4AC
	 ujsnS/EmlGTcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3AC5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651743368.13798.13804604818089391057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28a707e7b17408a3b1d6626213aa22718dee05200648c9ecf65fef19c42b05b
Date: Wed, 12 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786517433
