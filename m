Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E66019ABD4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746265794; cv=none; b=OUnScWhpB1f7KW9Ka5wyFPzDPDNTTn+z0vqUmUA9A/SKEzl5ugWsXH+B6njYSYyp36UjSge9Gue0HU09O3EF7iYfm6jyWwes1TiNFygkBvjQXacfO8WAjo8/Emw2UsN7Mi8ZkA5Bm6o9ILMnmRwMRo9DuYGyOchU2awfaRl6ky0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746265794; c=relaxed/simple;
	bh=q1hbJmQ/kqwxCDiUmlZHsSg6asPNpegUgfL1NCRKzdI=;
	h=To:Subject:From:Message-Id:Date; b=czsVcijYPC082pWlj6RhafxJeGfcCc9/4WOEm5pA7EbAqYgIu+npRmg33EFvMwASESOFOGyuvhkJ7/ijksnASsQ5ytKgdRbyCFwAUZB+0QH3F6uH3uUEndHkGj/hHOVDKiYbaIKMfOGd2WnStPNnXe0OK9v7Kzy14NH+DydIwpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRx/zTzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRx/zTzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50EEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746265793;
	bh=q1hbJmQ/kqwxCDiUmlZHsSg6asPNpegUgfL1NCRKzdI=;
	h=To:Subject:From:Date:From;
	b=QRx/zTzCXh+LpOD9D/cSgO4nRBNv+qb/0luysqQCCp33zhOksbKqFRs6wsl2fxZzq
	 2RTOPFFW2xVQ/G2dh334Rj5C/SFnZO7W4WpnRC+j24kNj0H7dAUg35rzMFqoPU7Y5+
	 g4bfKpp3n+VM7L99iFjxYDWeCySbp6/PRLuwAT+1Hju9TMt2orvwmX7igLXEat9twK
	 35K0fk2yAJGz7AMNmGY+3TyxWNoTV0++c4031LWH20OyjDpGT1E4107jjvEITXLgaK
	 QLenDIY5anxUrigGn0wRBtzjm6eKGcy+OVXCP2mYAA5SQicpe9UgBsk41I5R4AzXK2
	 DyeGtuirpl5LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C06C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626579357.9898.218703130308221096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b5126f1f7560231be1ba7962869e3b9e9c56acf5fc17e063493081d71fe900
Date: Sat, 03 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746265793
