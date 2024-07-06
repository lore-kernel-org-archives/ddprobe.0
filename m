Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4C31367
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720298183; cv=none; b=VDJEf9BSOjRpDmAeB29cXV5XAGsLkkLZiVe5sbZRo60p+kvLxbVJSXy94shXKIULVVq7BdRCQJbezGL1PoWu6vPpzOE2KCo0sUVGGBhl6d/MU+YLKrwYaG8uQwKnK+CJtuQNp1zDZfeBPf8roYJe4qd6peafOQz8+hhDrVOcYT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720298183; c=relaxed/simple;
	bh=6J/z+PrWTUDuVPw5DSgwpXE+uVIt70dMNpZSsBlEbvo=;
	h=To:Subject:From:Message-Id:Date; b=f3RLtSExyHOXp2nalv/sdwcG7n1s2gE6xuaZK6kqTIuZivonrnTRfCE0YtHuu52HHjPuOn0E4zfWGjQntOzf0h3R5YjjbWLAZwv9y62GkKju3oyAHHlCBvMArnaEgf0sDUBu6fG1PvaB/7/tucEbAktcU34Ml9TmVDTtInDc2YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIJDU1WL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIJDU1WL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA043C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720298182;
	bh=6J/z+PrWTUDuVPw5DSgwpXE+uVIt70dMNpZSsBlEbvo=;
	h=To:Subject:From:Date:From;
	b=cIJDU1WL8YYTbEMxjcGx2HkugfnHs7ziH+spZ4hkD79Kib+GUa8paNZf4dnV/KHes
	 bduRa9suWckvgfy/MTSduUkYyY//ZH1gmBaFWhf8QkICb0/+7rCCHgeVFVo+RYBGHR
	 zNi8mtj+zolJsL5M1aGfkjv19Ox7HYxv8l2yCvHeDfBq2y6u4AMPjFKVuR4ahLlc9M
	 pQAD011ED9Aj8EKMvFCAOWff5hBGeOGqEaQYnT2sa1sGRnSensIOyEHcdu8mqI9QQ8
	 VymIvyTpxO3lV7u0B61pee8Rf7Ldg9sBa5WdaalNtIpavg29q6gGQfeFLl2MWmf0y0
	 jz7aDGAJAcX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31CBC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029818277.13178.4429451700449802100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22eab7794093f0253323d18d9c27cc99d89c26917c6383f823aeda1261a20ee9
Date: Sat, 06 Jul 2024 20:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720298182
